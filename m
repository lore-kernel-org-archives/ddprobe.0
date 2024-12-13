Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F01DE3D5
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734091554; cv=none; b=HX3SRYnzR2FM/PQGrPn4Ask1aMRHV5Sd/tIVcGknnrlaDzyEUShr5wqifGL+o6iLRg1rKNWdwdMCmh7qo/fDIPacX9vcvC8piNQebI2BsUZgYvOuPDUfNFBsKMMNuOMhnoCqACnu+3ceNcRT39oAZGN6PRwGHRJk50MU760KVMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734091554; c=relaxed/simple;
	bh=qwox79N5pzZPQ48rvFeHnY+5vGIPpV+u/qZUzGLvoBA=;
	h=To:Subject:From:Message-Id:Date; b=i//OH6Ybwa2O3OPy5m58T7Jex8cSVSFsvWE+jT/TM9nqSpX8beozk4+C0Gr2j+3/dGGes/f7SM2XSKCvuzFy6umYsiSlJ9Chwqe4LxXJqH8T5vOJuel2MibIKGYHuOAWy18o9r/PIyYUo0Ns5Wymvc+b2kEk+3YljpTKMSdNmvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhCT8IJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhCT8IJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF6C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734091553;
	bh=qwox79N5pzZPQ48rvFeHnY+5vGIPpV+u/qZUzGLvoBA=;
	h=To:Subject:From:Date:From;
	b=EhCT8IJKthQTf5xNFqVEVznjBato6UK5OTwD3gR1pAQL+uTsOTghFNwI0sVt/a0XA
	 D49+yiazxfT0BqNqoBfWp5zEUkj6w3hg8bvt8uSkPhWxHYRvSfoNhHbvchCdaI0YA1
	 BC6PMLLND2Z64ccgPiS00fDMw+fhtyEDY3cWrzdP5K88cn1pgEhm9DURKCdm1USO/Y
	 8F0P2A4Df76AShrqlnAbUQZX8GRtallpM2vZobF9NPKr8YoPKerjkD5jqG35So+FYV
	 xI1wBibPMd1QbupzlsRS+jU1ykuwLD6HfsDq1Usset8a6N3YfWkJPu1EG2i70o2EE3
	 PB9kQj+epNqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB26E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409155362.15810.5736187119004664740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80826b3188daaf503bc701808c6fb55f52551662286fda67b3961f0a7157a63
Date: Fri, 13 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734091553
