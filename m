Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497BA19D8A8
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741356534; cv=none; b=hi9moLeGCj7YpMfOopSR5N8BNRGspdjVkS8y8uyU3aVM9IZIrpKia+mVSZtLyCacaXAiK2ZefXKn4WW5y3q05yoAQ1By/sfNc4gjSs5ypLjQEkIWK8VrhQojWOGnBamFkjUE7GzgFx/X7OapHOujExaQDzwFAS1JUN0MEO1W8wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741356534; c=relaxed/simple;
	bh=BvbGQtnhY7YtCL6icc1bi7Do1eNjWclb3jNBCxMsOAA=;
	h=To:Subject:From:Message-Id:Date; b=W+i7jIhqr15suXgUwo2bNdyeE72JqKrg9Gfao1gbzfGeZc7/W3X4rOGlfBIUOBfJWCarp4Dm4AblAP+xfvSX/aHhyOb8vtlLFhJdGu+x9NGCO+4cPWhkXNt97QemqVLAPkXlhuK7a3HoYGazpgYUlxBKXo6yJqOxTOOieR4JsUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dkpky4iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dkpky4iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6912C4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741356533;
	bh=BvbGQtnhY7YtCL6icc1bi7Do1eNjWclb3jNBCxMsOAA=;
	h=To:Subject:From:Date:From;
	b=Dkpky4iBzoWaXAj9xxF0I2R7MSD7OgSOVdG4aE0+cPKiZbJBSrUFxfbrzqslGn9LY
	 m/YoFWGPYRfdpjYBpSm5IIMQfJNfV5r12gTR+PBFViNF2KeLw2vC8kQP0WnCXiR/wE
	 urHa/Zmd01vDLuLh69v5ReGDL6vv5LmDvYvkAoVGUq6SNORY4wER+amv7pvPNerpr4
	 O1LgYfE1y5YLPIpyPzFqmkK2WfrRmbAaHPvdTZLUlnki7XbA9OufdVFmFnpvLdr2PH
	 u07oRb9yH3jxI44F0VicThZhzXSar5AqRWf5w3e804yV2+Kqqqj0St8jxPd7puqHyl
	 6Ib9BFMT+7H3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F3C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135653359.18725.10523142422181199128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740ec7bd2a102d2ecc0bbc1e76d118d6199a345001aea10f46a9a68c35ee2997
Date: Fri, 07 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741356533
