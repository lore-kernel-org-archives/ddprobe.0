Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB22798E8
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758023394; cv=none; b=oOm+QSviZd+tx96yOKZKWG32tBUDCiMFY/vizaGAJCE3DGPkGW8mPsyMv1oWuSqwNpqGKdp9vUfM8JBWmksfClUocNnzaYU81Bp3mxfmxtRzPG42p57WTh+b6SJLsPMjDT22xODWhEtVloSXgMx9tIJRBuNBjV+xTKxvyePnyzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758023394; c=relaxed/simple;
	bh=YnRwdBvtWuHTNsEZzJCW5H2CYUtYztLz01013sdIF0g=;
	h=To:Subject:From:Message-Id:Date; b=hZwQZRu6UNszgSFQ7TXNKMgATNnFnO09gISNuGsZGBECQPRZq3+xchdmPUfr3Oc4UnpFstFjlK3h2+RqVTpbJRh8f+6lGMdah9+fYlNtf1kUB/Y3Y5NceMrPHeIOFrn2EyFDgzI1l/G3vezftkiTW8gYVg85mVCOpj55XypPa30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrH5FM2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrH5FM2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD82C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758023393;
	bh=YnRwdBvtWuHTNsEZzJCW5H2CYUtYztLz01013sdIF0g=;
	h=To:Subject:From:Date:From;
	b=mrH5FM2F1NPqMrGA9DFkhX/gJYJAWSglXGNfrRhpa2UBAZbfrjTtRF1hgHxn2U5Mh
	 oAgdDURyr+blMHhoUV5n6teD1A5ak0yILFht6lqG3C5k0Wim7r2RuuzaAoMNPFWO2F
	 2ygLKDdiCuC3FJQ0eRal+NaVTQJMnoE7fsP8cXobm9S6I+hXejy7HcaYJqjfR0rrxc
	 Yr6HaQWwiajYB7hXP46RljMrZbkTD2UYlPqNzmV1Sg7iQWhG7KUN8MiExD9XbOvCTI
	 3bWD36opH8Bim2x+b5aPUBzKLoUcL9FUOCSjqve6/lpqQUxm/NNPu624VCWrtDRt2h
	 uwjtIgUQmIT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E761CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802339357.13155.8862441139707571832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59eb8281982aae7ef338a241f1571565ad7afa6f1aac00a3067c77a45ff98e22
Date: Tue, 16 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758023393
