Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6402931DD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784329114; cv=none; b=qFOfjp5LinE/fpcIz8MOSbPqBxq1OjMZaCRJw6J2x7fa89is6OSOLVbUDEx9h+OcGxp8lcbOvlHHaDZmj0bW3lw/jVuzYgjzvaajJ1sGQ2XOz9683UcuDWhmseIcxv5Gk4SSMh+QamJBLUh5OVnMeW+o9qJUZs12L7gqC4IgS3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784329114; c=relaxed/simple;
	bh=HFxSvvNbUD6GkV3jFdsn/1X77OihctLum+9jAtD6s7U=;
	h=To:Subject:From:Message-Id:Date; b=UzofpSgCGpUM0Ps2HIu6HRH5SG5w6iUXPHzrnnnQLgo88aCeuNI8GX0HdgmA6R0qkHqrLEGirGAJXHDyrqQVsm2VGWy/vI9n+Vyxd3kExJOWKwOp6wKzZD2yz6HS0nCvUw2rdjW6JU5eP8OXmDeg5DzlUIapKoidLGiiP/F/mEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhaIpFfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhaIpFfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF32CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784329113;
	bh=HFxSvvNbUD6GkV3jFdsn/1X77OihctLum+9jAtD6s7U=;
	h=To:Subject:From:Date:From;
	b=JhaIpFfYWtjQMA4n9ATWWbhKgoDCkHiyjuF+oSI/f76gd0VWTkp2XDBvCgruwBqF1
	 IUn3JNIJZ5s5IKkrLY4GjxCbOZAEr+InF1m/FFWeXrpe/RDwyVhQFrosFTAV30sNno
	 VhFUXTl/GKP446u9v4Tk2uU1wZTF/ZOBg7yCvOIyfuXtv0yofiNgux7eXguuzhCk7I
	 ehlJYxLmh2seOeCUrlEAcxf2+sDebQLfhGlsikM0F2RBQ8mXJkMDgK4cZCbemGbOIr
	 E5UYkVqEt9jGpH0xRheO7riH0OrqxCmoPHUF0r4ae1m0Lft7Eo04qV/x2esss2P27i
	 jLY01Zd00kTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB787C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432911369.15536.8835175202021033543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b1207e59f9e11c6ca9bc856cda8eabea4a623a17c2788f353cf6cb61c78f90
Date: Fri, 17 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784329113
