Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1470E1A2C04
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778825434; cv=none; b=Z15xpvTuUVTyGj8AAugM6Yl5zVR6nz5uiB2ym+viGsamJoD3Z63acWE5wSzTaNMaaqhpGmNMvzovfKc2dL+4lA5orhmSDODI/8A/4kgxD7ZWlc3alMuZpyt4c+qiqcWId3LZm9Y54Q9e9kf5+dAGA4HOgReX5S3fhErvVTvaFo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778825434; c=relaxed/simple;
	bh=Anl5sR3W9/JFV8dn6DSNE3IEW1QN3goLqmm0HTSfVkc=;
	h=To:Subject:From:Message-Id:Date; b=COCZzT1mtCBfMNXOur4YehPZgqL1x6pas2HCfhQBh0a0P+iTiRDb6Si9AT9xoob3Pxqzca8hv7elacd+yHDyOVD5UfyyyBXe1Ih4brCEPPh2Tm8l3wqik9fPYikzvOCRGa1V93kS8J+xm+x5ZUEGrn7kXQp29lDrkVvw03OKkas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbACTlbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbACTlbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF27C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778825433;
	bh=Anl5sR3W9/JFV8dn6DSNE3IEW1QN3goLqmm0HTSfVkc=;
	h=To:Subject:From:Date:From;
	b=UbACTlbQoWkt0diDqpUAr2A8s4te3ShuKKYBLhVpeCgJB6Dphv/CxGANz5j6tZUg1
	 YUwsA3d4d/9x1cP5+nebL6sm6ugW7ea+gKZK9qthQMhRvUvJsPrDEWiS3ORJ/F+tEE
	 k0p8qovmPlI00rmYCZSqeaMug3/yB2VAJQqrp1eGA4DDjF51REZTAEZpXdZ7GjiaXy
	 1abV7CPWTMKiWs+tjwygUWzN2eCQBj/jhlVumoP2opAYlHGy0pz1OOlPKW/dswxAuD
	 A/QWTwQGs7ZwQs1TnC6SU+wiB9lJIYsJCZElIFA12b8zTqkr54yVOzDtUQkaigi/x5
	 sSP8p7wpZhlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F24CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882543369.11749.17431081212833818151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb436d9037044daf50668888020e8c08c335c8c40f17bcab647032a1f60a916
Date: Fri, 15 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778825433
