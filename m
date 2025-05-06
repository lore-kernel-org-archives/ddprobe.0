Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9DC27A45E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746532194; cv=none; b=N1H3e7ihKfAD8Qp76MmsuEzRLgnxtBNttVuJQF7N9lrW4yekor4zVITvsPew4agyjNvEC0MHmxO6/EW3Q2LGIR5Tr8PWDuAbxEH8QOESZ35zTsWAWeooEf32dbXT6E4rCruei0v7FpOHRBIZjmt+mS+RoahNiLOuhZChqb8rCRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746532194; c=relaxed/simple;
	bh=HbQ0D6kPS3jghbIF/gRRa4Nrcbl8yrAfT5UGpgPOUAE=;
	h=To:Subject:From:Message-Id:Date; b=ZsEyj5zR/yVc5z/Z7wbGUsGwNZDOMhxaJmmw41fsn19fdNkZqrwHCIupxVAVHIm/uxoZKEm1qmnGAuNuIeObPiYQdeMsPgWQihVrByh6iYODD2WftXDfIeYWmoTEmuarLtTSzyPyaF2UDFqRx7hYTEDq7QtejbD8Yudcm6WjQBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CusItuAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CusItuAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3222C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746532193;
	bh=HbQ0D6kPS3jghbIF/gRRa4Nrcbl8yrAfT5UGpgPOUAE=;
	h=To:Subject:From:Date:From;
	b=CusItuAjdBvSmicXmlvRxz0w8Pky+d7eJtWYQDqY03CQJW1Ul0DPhKXbJnZlDCpm1
	 rUSfApxpcalET9omUp+jer+/guBJoMk2NIRzvMWKCzxHx20Wdbfdf/hSAUAtSp4SR7
	 hBNfdX3YtLrgcJTHA83xBmsVDZzCIt+NjD/r0JlJtBas/Mr/IxJoZCNeU2Rd+UOHB9
	 Ps62llw4o3FDvliJodgAw07Yx1yVnwZxFNBI8RQ9YbshoyXh8mdzGzgiJ9cjcZ8Pmv
	 qkXDtzS/PXHgNW48cWf9kiXX+r7/tC8wZHlTL2DA4qaSpFZlfChcf8BpdszgWAvIEe
	 y3+J4VqZNfVRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50BC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653219357.21583.12423742307092933483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dfa2cd1b1db517ad57ad26154ef356fc25d9c403d0f97beb6e8f419a134426
Date: Tue, 06 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746532193
