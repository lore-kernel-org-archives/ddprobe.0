Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7752236F3
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761084594; cv=none; b=UWkRgAGkG2yuT7RNzuAodlIRlVNv63WwDYksfZHeoAeDuYyD6Bro3NNk2m4wa1l/2NlHrcUCuHHAXJnmPDAgZwCrAbBSpC3KQc0VlwVReBPiISR6Os3NiiiR+OGKr49Z4tfCvWUzq9pLTIhnSsPp+6lAEgyiv4HO2vnRtoMNazI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761084594; c=relaxed/simple;
	bh=lnjH4uhBDvvFS1UgN2Momts28u9TuTShT8nrpZkx/+g=;
	h=To:Subject:From:Message-Id:Date; b=CMapIkiley5AneQQHHjMTM53mtut6j8RdJYkcFvFQq1p3vvjuRPX77lTy0wC2anIclv0ElnCWtl0VekAOKW+9qNMp7UV235LyotS3FsBbZ+DjEUqQjo6FVfOKSvU3ZMaR1s9+N5g+a9UyykOMhGMMwlfUIA5fCCYe5q+dmCi9+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcsCxgeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcsCxgeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761084593;
	bh=lnjH4uhBDvvFS1UgN2Momts28u9TuTShT8nrpZkx/+g=;
	h=To:Subject:From:Date:From;
	b=NcsCxgeTKmYopycK9WFzuy98dH5MF9BMYj6VA4Eo5CPrF+98aq4l9CJkL8qHRK3x5
	 luHbwZeJNFYAj18ZfUfJ3EcnMmhbBiReVO3ONpKpUiDv0JEzox+oUr7BOAWOvvaoFJ
	 0c1BcRKkhlhHR987ulxwDD4d3lK9sR1Yh8yEzRMUxY5QqU2+J7qXCMw0Wyrk7rUpt2
	 SJAyalRInbR4dVD8NPnPWoSzEq8haqR68rTgTTN1QYtUNEwRfjSJwicuOMqQDAWAAd
	 RHj5PslzrsyecbLxvSkvnVh2VyA55H/QqdZfsL5dHV9o9LXJNfJafrvhWTuovyRhBR
	 kanvZO9MSIa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92168CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108459359.25892.2691154661417290625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ef696066c76019a7c22fbdb51f5b0342444526d238c5ad3d5983857d6ae41d
Date: Tue, 21 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761084593
