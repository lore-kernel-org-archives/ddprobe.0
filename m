Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5443BBA09
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784203714; cv=none; b=OaZ+kL11KwfzZnGliGEiSY39lNF95FXbwxkX3D5naUeltQyfTanHHjziah/Vda6ozwSIU75Rc/9h7lgKxTvCMSsHL6lu7cFwcs5TaJqFDfMJ3Gq60Yz+KflXwazIfkGQZAoqHgRAz4iddnXJVPQ1NPy6S2ThLFcwf35euxB/d2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784203714; c=relaxed/simple;
	bh=UCqzk5Unk7/Dwln0vgsqAcvAG8V0hdjsAVJdp+zBoaM=;
	h=To:Subject:From:Message-Id:Date; b=CyWSzgakdtpjsv/7+3gNo56IeY4rqwgtgw/EjO0mrWaj2D2bDyUD5TW/ca1aWM56SkIYKXDDZPMMjFmPM6uXty76FzW4tyT4L2vGNv6o9ddmHI/Pt0uQTXqsbeMs6cEAQmzKgdHpNXPsgQeNL9Cq312xH7if9HJnOSG2Loh90nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsrVE0lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsrVE0lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75E1C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784203713;
	bh=UCqzk5Unk7/Dwln0vgsqAcvAG8V0hdjsAVJdp+zBoaM=;
	h=To:Subject:From:Date:From;
	b=DsrVE0lgcU8fqQGUkipgpVSwpb6YTgURtCcjuRH4dhiJnLjtCM38gLVu0TpqTTJBf
	 G0P3ERUE9BDNJcoSvKuc158Vu35g6L2a/IqDBGGEKQfijV33obcS3S1RGPF6KCcDBr
	 QqMOGauVWhEE/TVe+L3PCG88tgDnS0kelJKJW25uM0wJozd32H5PxMBWOhfGDcTXp2
	 3KySl1EgVsj46RU6U8PAc+kRIsQgXdSd8sxV+iSAKOuYR333TMbriMp5kMu0gfPTRU
	 2yvCmn3AUqlECJX53H+DxTrOXmUVEP6MADEcXSBJN7mWObaQjxctG4xqp596cGsvLU
	 O75u7xC9+y02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5239C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420371373.4756.7156861268578745478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f56acce0047cce70b80b757150ec7b62c69edc026a4dd2033e532ec99b5eecc
Date: Thu, 16 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784203713
