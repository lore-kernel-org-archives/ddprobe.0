Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384C43EDE78
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780992874; cv=none; b=FgWhXmaexT56AwMrrXQ6OqfSNKQ1HQrlEhtM2coiw/kQYts86vVP2Ly5vEhwW7RVPaxL29J2Ojqgs5q2RTuwyaeJCr/Yz0iVi4gwNZe5sMOOekSUH8CwJ5U/6B1oeIZ+zwtBVC/3wlisHC7Jf4v9yGD1ffbrCkQD6n1ivHSuu+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780992874; c=relaxed/simple;
	bh=1eNXU8J+MMrtB5pC/WB8Bb+KvOySrwepK7MmDW5ahXo=;
	h=To:Subject:From:Message-Id:Date; b=A4w7TIm+1ZMa+Gf0k6d5Qg6rxQytdKMUtYw48S9M3FbMN1RT6NDhkRb3Vj0VyNZ82IqTdAlVZ3/UaIQpE53rfmUUxi27v8yKdlhmAujJLqR9oe/zWh4U+QhymGxvD6l+wCYRP4SKVZh3P/Vk64Wew7VodmDHkUSmv7wiDfnoNG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDEFMxzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDEFMxzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31C2C4AF11
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780992873;
	bh=1eNXU8J+MMrtB5pC/WB8Bb+KvOySrwepK7MmDW5ahXo=;
	h=To:Subject:From:Date:From;
	b=MDEFMxzZL+Y15doTVItDl168oDrnb5fggR2VT+UroL3zNlaE+9vgDKssx27T2TqYP
	 ldjBVxSCcg2q5a/sbHOwp6UUTzsasKYD21cL6ITQf+rZw+mp8VRsWDEefKTf9Rn76u
	 wHdoZRTJgFcKXRR0rxLqXwrX8sFGRZmJ3gk5f5LmBgZFD2Bv9bpU+BxSDP896SnKMP
	 4vfrIP6PcUW5NDY+fY3X8fgQnUuhw2SuzwRjdkm/CIMhh8h+xI8Vtq9yolQ59/PL2D
	 ap362xaZYIx1kFw5xlh2eQckk5rJGZ1LZ9PA+xLPZTd1b/MZE/gUp9erFgprtCmzgZ
	 vtat1OnSuGckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C1CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099287369.579.10327186227939396388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f120908bf3f89439fc7aa5aeec605a2b5fb7c581e3dfee746b3e49b20377187d
Date: Tue, 09 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780992873
