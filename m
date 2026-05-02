Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DBC175A66
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777757254; cv=none; b=rM1Cw+XFz4VoSp39QDRtxHLADoylhcj3TP1XVL4YsaEsXUQ6/xOGij5UUooMXE2Rvwz028BAn76gCCvJBE8E/TM3MmkS/ZmmR2p/DISwNTgAo1RdGwjshdFhV14yK9hkrAcxfzhHXbgB/WbErcdNwgGd/JBxg0RIUBsQlmhea9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777757254; c=relaxed/simple;
	bh=po7eNjYCdpVz7qEA/HhruRkdnOabH/Xm0+xxDXV91Cw=;
	h=To:Subject:From:Message-Id:Date; b=hsPrehYKr4jrBeiPV/2wtuN7OJnv9Lnw28JZ6meQPnGCDS6l8G+2mXDX3jQcwid9yIxpRXswmoqUNf53geex+oXSm81kMfXNwUk7/Jw/syyN1XZvym6gNH/qr5l65H6+vus8XKsbOXDQxwZ8wRO8oWLJXjwnr82BtE1dKFTq++E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pthSSKWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pthSSKWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD6EC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777757253;
	bh=po7eNjYCdpVz7qEA/HhruRkdnOabH/Xm0+xxDXV91Cw=;
	h=To:Subject:From:Date:From;
	b=pthSSKWY4otZp+0wgeTJX/3nfJS4XkZH5p2BEWub1FZT8m5EZpErSORySUnZZ2Vpn
	 UluFER9zaNjR67xD+fZPEcE1fn+F7q0ELcia/GpXGyn7CMfLwvJMxwbhWt98FMjltm
	 jyRynOfEFU7a2n5LtagW62/HnoGjFpcYIHfqkOPLCPAPoA3HrtoKyl+dSapgHrc3jR
	 XGFyvce46W1pD5sTFkl77M9Z+v5Mvx0d3BgDE8z+d4d2YIOO2SKdgoiOysrE1bKf8Y
	 nHwCjHvCDVZumyWxtWKxxhfM/2mSoyzWCTB+pZLshrBEqnHLlLZ6JwvjaOgPX03O6H
	 WUfHoVVE78unQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B59CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775725368.3457.14677188916629924314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c27537b54b2b5bf3f00759cb2bf63980c6abc522fe4f2f429eee28ad51329c6
Date: Sat, 02 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777757253
