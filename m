Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E9223DE9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783394314; cv=none; b=j2ec126ze092jkKmCD8fL+4YlCpJQR9obU0lVzTjZXcXmZgjkhhLtnWyVAq9PRGx+setykbDX3WKYBYF179+xgisFYP9pykczdhbSvW1V28KmgDj2toPiJjJLsyEQS+62Ak4UFtZWz+YyiozGjuW0g0lCmO9C3/wmyATFVTWE9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783394314; c=relaxed/simple;
	bh=3R7KrXEy7fx02ZlcphiwKm7umKRgVkbuuwmr+V6RA7M=;
	h=To:Subject:From:Message-Id:Date; b=QFMQi+X/ocKb/moGQksY+vYmJhjZhS2Ka4VMPBgrqrPX0LZLuQJKwai0SV9Eb/WN6EhVJ9tOvQG3HL6JObe3quNgib0bt3oj40bBwwoKD71sxosLig7ntpxSgYuh1Dj5x5/dxya73zBnEGp71NwMeRmC4tyHcg0ENkgJpR2BSOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH4o95T7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH4o95T7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D423CC2BCC6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783394313;
	bh=3R7KrXEy7fx02ZlcphiwKm7umKRgVkbuuwmr+V6RA7M=;
	h=To:Subject:From:Date:From;
	b=tH4o95T7kI3q8FZWvZKNWbH6DQ+134jUhtLa5/RyI0dKXTWkcro8D2dMl/LtKBhGC
	 bs1wXFYZ6FaoVM5PGE+qhVsXOVpOXjZFJUSuRvY/ScNmMW0AyqmRBsq9M6ne+6uzih
	 37Q1DXpZISB9sT//NwrPhZHaa2O/iFTNSCmdNFo/rfhEhxzIVSq7wzHseY2cRHn6Pm
	 al21CUOQl0oP0r63lFloK3JIXIaSgNSu2sxfMv+IRcCVYoaj630EiS+KTqCGepz1DA
	 UIokNq7+67FJA7eGAe+3egwLNz0RrmdQHelFeZ1rr/LNmR+sbCTvPJcgGbPG3sdyZ1
	 USWerMvH/9lUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3943C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339431368.9123.4338510474521141523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72e2351dc67d496e5600ceed2c74de1151056f268f822d7fa41baecf51b5d58
Date: Tue, 07 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783394313
