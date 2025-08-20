Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60442E2DED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755686394; cv=none; b=JhxPR5KpzZFaATD/sDjM6sTe1jl1p8hq8uV4reEhywOyrK8gHlulcAo+Znrx2uljt+pQs7Lm5hrk6ceYJplOq1Z2/Z81K1Sl7RQ0O77yiB1rtlJryk9A/ucL+jqAToqZ6SWSXF4xM5oPEVvSSo4alxdemoXOpLrIsGCihXn8sBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755686394; c=relaxed/simple;
	bh=w/2ZTdfCT5HS70IARQcbxr2Z2APzaJ6KP5B18ODWS8Y=;
	h=To:Subject:From:Message-Id:Date; b=SnHtBMgIyesyYefdeLE8RI2a2mCay0KDXoCs1uzn6TqINskToniDXRg8wXEdUOXgRhMoLFMwKeBQUcCYAw0dmWNdz2SIkxPtxdkq7bQ9vme+wlU4LmvXo90eX46/t8rHfaQtjZjtTfZz4Rf6h0uXGBwhJmknSdInMq+wuOFs+3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qg5p+szM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qg5p+szM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0195C116B1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755686393;
	bh=w/2ZTdfCT5HS70IARQcbxr2Z2APzaJ6KP5B18ODWS8Y=;
	h=To:Subject:From:Date:From;
	b=Qg5p+szMt2us/KagKugfySCJMUHfULu4N6sDcoo9iXKHvIDDXlb6xM2eqB8G4RRff
	 N1iGqaHBev4899eQX9JuyrI0ZFEdQSROafK/yCYg+1IMUd3iFcnsH4NEDDctCIqXzb
	 aLrk/NCIdkdDrpx8Y8F757PrFt9tW4cxgNI8sDjFXDBciT0y0AiG6wTF5n+NSexJpn
	 p4d5EbIM9Xfyh5dTbXXAnXi7dHPOUYr5PVo1U//ZKSwrwCDy1DaNvGkLzIFZO4Mvx/
	 vBva/McSZ+oRbQ1RUr15CFxrTU5ljsdaLhup+DU5BK1H2C+5/y10/dbrHABz1c0ttT
	 xTpgeWf5IIGng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F798CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568639357.11921.16319166678444860447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4755601ad8057ed9fbc27ad172b2a7d8797c00c2f4395b12e35d01780434ab6f
Date: Wed, 20 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755686393
