Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4811B1F4C99
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760129394; cv=none; b=egH7u1BJFvRkJBagBMoGVyR8hnb1YZcnrY+hFiGBsckP3GXsI9MuLnWU6lXCijxOvyLSDQF8bYOCstTkYIHwov9z8Bte3887dCV41gsLvO8KNNZ+gCru3MAeM0trSIy3VTZm6sYU3sjk8PTRecHWtTcE6M8INwxWskCXUsVcw8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760129394; c=relaxed/simple;
	bh=3xtyeqOdKmnh6qBVrhCmIF24ll7Vr2T2HjxNVbYzzEQ=;
	h=To:Subject:From:Message-Id:Date; b=iPtM+2Ra+I8l6wdvhGaD1YE3JQYdNG/v6V5BVIAcvAxqocW4wez9eF/TVoYkXcm8QuvsvZbidJJaxdx7OOTLI6EmTbj+MolLYn/llnAdRus9BcS5u7G8uDrZRBsh3Oh4/MiXFoZwk7UxHzxYrPdvk4KaUjNsEW14UMSvQ9N8tVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nep9mUY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nep9mUY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54BFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760129393;
	bh=3xtyeqOdKmnh6qBVrhCmIF24ll7Vr2T2HjxNVbYzzEQ=;
	h=To:Subject:From:Date:From;
	b=Nep9mUY5i4s7RUyFltgx12qz+SsgcFyXsBvQ3t6b4pMcHsrVORaZhktP0ye2rHepq
	 Lhv3+bt1SnleLdsYX8IZesqoxPdfl5Xbm6Attan/MvWq/DHV1fPliXtDctR36/5R6/
	 Ey+Etupa1wyxgvcig5U67PheCi5zbff55ghKB/J7OePKJde+DVP8MFKbYtzfXQnEsR
	 LBplN5Cym7AuaDhEmhlceh1qB8Nz66mW1ToHNd/cU5JRKb/kVo23Ypacb+wY5lvqx2
	 CpXJz1H6/eZelI5Zuy1aavfHKI0+3y0xc7olMviErUBpuBDM1bxJPAVwxpr/95f+4s
	 lcMq9T5mAgtbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96495CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012939358.28547.4553971318769518975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5300c535afa25ac7edc3033b91892ba2793f976dc0fe40d46dd5df5009b140ab
Date: Fri, 10 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760129393
