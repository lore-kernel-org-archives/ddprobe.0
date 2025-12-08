Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4770B1D9663
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765225374; cv=none; b=D5R4NzeGl9pBuTWWTZagPM5uioMCQ+yHIKV/6nizyp7vlxzFyBOXlRdvPO5CMP9pM9sqpU/5/bylDYzvcXCv0Hp5qa9ewB8UVtjQ4+ObpXw/BQHliFadUGX7ZdqAenyuUYMgb+80DHq4cSjcxaNG1m+JOD/xBRWrq0omx29vE/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765225374; c=relaxed/simple;
	bh=xABJxLCd9h2i6M/GeAnM7xOWtQqoQ0yzRaj9+sxji4E=;
	h=To:Subject:From:Message-Id:Date; b=myDhyd80udFPslAFDBLYaoxA52c3xiveBITXnAIj7nE59wMiaKc8oREpJ28+7ltpJ3p+maT7LzV9uSON9CMazhDdGpc8kKUGYY1NySdcnc/sB9jXlJtERnrTE8lJSNyy71r17+gjgy8PfX3+rVW0OqCh7fcFTvIlT7wSh8M3Nz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRBS/GGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRBS/GGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE039C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765225373;
	bh=xABJxLCd9h2i6M/GeAnM7xOWtQqoQ0yzRaj9+sxji4E=;
	h=To:Subject:From:Date:From;
	b=WRBS/GGJ/Uo1TjAV+PNND+PkUTChllSoLJq/PFNAQp6/GXIJbaLQ1fVEx4BhbhOET
	 IDajg+Gc4ZZJ2qW+hrPWwMdDWpbeQJdNVTB2Nv39zIJ7ouEUTpPPgYTmJcumM5c0jH
	 2+00H3OWBUa330GTpGvkiBTvFTQRCISOsJ/+wZaYSPOEs8O++kJyodYUicgUic1Ar9
	 2XmU3CQ9ORdcodiFSeL7J53TBy4blpDXPfM7A+0IeuKjZvo51BpBByLkx9bzJZYR9H
	 01J7+3Kv3s4nDovYC+HGcb4B4sPoRyYTv712rKFk7GtZzr3f0h2v3LVQp1BSJs2J1Y
	 Em3dsSFfr2dsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23B2D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522537362.16854.355743983013439767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373476a7bb96d8607acbd4639117ae3f006b5106b7698757c69e0b9412cfa38c
Date: Mon, 08 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765225373
