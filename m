Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8F39FCE
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753064994; cv=none; b=LkQfVPLajSeUR6Ia8d/ifj+VcBKu9P8AfIFQ9VqdbPzMF15oD1DaSGfiNWXrY5K/i03Hbrbw9u94GQ23LEMQ+wpJTieDetbHCqdrrNkQE/t3hW3R8xuAOW8WLBHxejjlhNH1R1JZEeqsMkeAo2UuHy4ECsKLQPWFApSaSz5qA7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753064994; c=relaxed/simple;
	bh=u3ItVWIpx5A5/I4wLVSewa2Um6Onk+9isjEfgvoBVAs=;
	h=To:Subject:From:Message-Id:Date; b=me0HxMzKwHEJvrph2gQQH4LmJjZ4FvysfwubkiWdy6t18Q0+L4QRJPjWLQpAZSNhafAXG+JMB9r4yu5Zh1x9Hy7l3FMlNs0tTGNzPhm8+8KaEFSO+CI4cc/fW+m/E0gIFLswYXFbqhXKzzfV+6cslzYUlMNzqqbKrjLUCzyoVAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyfGre5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyfGre5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FEEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064993;
	bh=u3ItVWIpx5A5/I4wLVSewa2Um6Onk+9isjEfgvoBVAs=;
	h=To:Subject:From:Date:From;
	b=GyfGre5Dt55NCtpGUMePPuIpFjt2TTWRa15UJoYimqt4DQ7UFIPOnDxcT/r7HlIBc
	 TX2GwSBGLIpWVdsfGD7Jy15nPP5TrwVnQT8huK1/wV5v2vSjg2i2TxH03PEBLb1L1g
	 dFPFJFbmBgxBCkFVuwoQ1f6y0tj8zoIxvgy2ptL8MuoxMFxrjzCA0wWkySor1L2axH
	 wRbF5RUrc5cwBNED+lQ6dr659+0V2zIOBRahz1X1O3HJGcohm7vyKQAyKBamPa1ch0
	 epbj7GMEktwsvcg5uLLYKREVZs9kZeDRKk9ULRAotz5JeW6qwpIeEit9MuxemYOgwC
	 mNLyb69qu9wQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306499358.17274.12548611130241477277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c214dcd3527be27196490bde0ef57c54532715e511467f0efadf92b61aed9e4c
Date: Mon, 21 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753064993
