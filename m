Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FE7380FEB
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785865834; cv=none; b=B1RitnYRaVz3vBxmm4ivaRFIe4l0yf8Hp45fQ7fMnU1u8qNeAZXu0KExEYSrG73yvMAH0sXpAfrKNOJz6g1WT40nUhHdZnv0FJPNtXxwEAciIXTcq3sq9OIuCqbcdGFasYyZmbuC9Om2zJqfoc22MUxEPdc9Wd62/tw4uAtpS9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785865834; c=relaxed/simple;
	bh=qXYI5mSGhBc+76Z266buqaoaYsLX8J17HfMFmOYE148=;
	h=To:Subject:From:Message-Id:Date; b=l/iczH+V8SsPLRKlNOP+zaFwKkRUA7DJKZhOU83cm1hCoJIW2lkde7lH9lEnL7EFShXuomQ9OzTIXPvc1X4Unz9HmfTzQ3v28C8/xnkNh+2XXyX59aB3ZR8mwnqK5bnug/zavMi+Jd1PrtxL+ODu9B6SFTmoFo7abu45tt7qek8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlR1U6I8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlR1U6I8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE314C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785865833;
	bh=qXYI5mSGhBc+76Z266buqaoaYsLX8J17HfMFmOYE148=;
	h=To:Subject:From:Date:From;
	b=PlR1U6I8h76K4qbMgWCvVG45lJ1vLJpcsQguyzuoL4BNJ8xKUYAPXqqs/8GyjFBQ8
	 kyHDNZCim9D8iHfQ4UsKXrIxTynorsKAS5ROUPRUGRd5xBsbe1LYg+bt1kUHHveZYz
	 XTKdvMibT0nfj/FFXRwkVXeE4aNbpn177fQfQYQ+2ir4BZPqz/6CO9lfwvDo21a1/l
	 0J7qVIi1w8x6O6gPVvt9ofXqhkAa3MyP+JMFmn7RHeOKetamZs25w+6jS4rGkYV1xK
	 tDfiRBBmhvgbnSp5GbbcPxabi2BUf3ZRXvlaBGADW04qJBxyTmGAif2Lb8fq4i1Zh6
	 /gYHfrQWmVD2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2B2C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586583369.16313.17671408953778131949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83edde549bfd1ab468900cf020d5f5ea64f1c3fdf3993afc979576849194ad1b
Date: Tue, 04 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785865833
