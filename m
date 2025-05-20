Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4FE255250
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747715394; cv=none; b=lNnQ9rGpplecjZq3dcljQKZ+lDzEszPsyIHH1WeA5d/e6RxY3bDoaMQJTopXyjQ6Ve1+VCLqm5+tAtIwgrRfzSb30gFGYdOSKoGLM+qeAw6XbsYZlu9YcyESIOA6Bdy3TdzKddx3jQecOWgRBvA7/GKwKa7hllPKUJHEnLHqcoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747715394; c=relaxed/simple;
	bh=5wif8aBXroyRNHCaJnG7se6mAVM8rLwujrznKMmRpog=;
	h=To:Subject:From:Message-Id:Date; b=sGuI951549i6BaDg40EC6DnlO/MZTsKY2EnsTm0yhhN29sUV5D2WHi8AGqqLhYSXTdiOCr44hh071O2Kdtsl4hjUw/HhMbNbOqpuo1vfOt5CBKM0bHksPE7w/SuZaJ2IcSGsX02CemU9zOg9yuhj+Pk7bZ9wiZWFLjFZODxjXYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzkG8oa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzkG8oa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A1C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747715393;
	bh=5wif8aBXroyRNHCaJnG7se6mAVM8rLwujrznKMmRpog=;
	h=To:Subject:From:Date:From;
	b=CzkG8oa4D+j2F1x8hJYG+1X/G8jxh3VBWLbin7gUxDxBxlWsxjlgTSm+T4EBrioYZ
	 JYcTUk/CSjXrPcTOkDZsVgbCMSFhAc7flm9tCZxFErXnE5PQtdZ7mc7jeD6ib326c/
	 82WfW774Yq2g5OsjbVWXilBlvHlRnEUajEfE7TdfF7mhWc0JXHZQEMX8zccbTTQhvh
	 EWL1cotDViLBgVHnwEjlMoBAOfiZQkNIxEozvw0FTOOKnDSy/9ZdlsH1MQNSDMJ9bG
	 PwnEInhjgJFC9YMtpP1QPM9kHfWtFWdYd2Kduo2cJV/9lsKtS2x4BD3Jie04uBl89P
	 Z3voOYz8Y3WDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231FC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771539358.5560.5239424867887909036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb7cebfc765770a4b9edd87226e401e25a0b1a09067258cb61588b7a663a81b
Date: Tue, 20 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747715393
