Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F95367
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755393594; cv=none; b=hb6tStj+vCSqoHmwwGPYIEwfmDuR8zPRUWlTtgvUSc4eqT+CBzLr5KpNzNthGL4hOpP8nhpI2XhhmCte9j97ZlRZXJkqIc5eAcrv6Y883m+rCCiIZSEv2k8XhEi1uKmPrGlqULJ+3lnGchjAbqzryAFRkDurKR08VpCM3pRNUSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755393594; c=relaxed/simple;
	bh=SJr7cE3OOV0/PEOHUoapixo/UkCnv1bWCq6lxE7GYR4=;
	h=To:Subject:From:Message-Id:Date; b=aBvlWjciE9whL40Of4w0/qjBfBEl8uzuNSmwW+jQ4AsV9ARecsrc+z4aKxgZSqOP/LhwgAmUhhZcb2WsZuvjEjNdZylryWL4FxYr8OXlA5VNsRFZWznbmW7jNxK6zjO+HstB/OEk4RhyLQA9Wg+AL6Y0+SMfdp5jQinri7WYdOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOZ1VQIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOZ1VQIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5992C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755393593;
	bh=SJr7cE3OOV0/PEOHUoapixo/UkCnv1bWCq6lxE7GYR4=;
	h=To:Subject:From:Date:From;
	b=VOZ1VQIjtMF+9OUrY/Mk82alLI0n81b6wOllQI16xBqToXhpq5EFkLPq3abJ+e34V
	 Q6eN277Q5RFM2aT8Df4XbSMvTOWQkkdB/2O4RJw0YyfZWJt5X+S0IlNPD9KJfWv9B7
	 Vyptp5QuloxynkqI2C+f6ILWxCfSAMuU75rjL1ubYh5njDl7SkSOjyUIAijNprPUfd
	 3JPrwzhTVuPQ2ebj12aZnVD/IJst2A/KPpuuBQPJVttfw7r2VylNpD41cu78/Q65Jr
	 6wfrr+YCROm0hVsw3hGBeTUZo8E5vMIhsE7BStMGO0RUuoFFf+d/l5Ojoz3tvtz8cz
	 CWH/mJsZDkURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539359357.1396.4424460530266251952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fea8efd13546c684d1a862f160ab257c8ebed3e4dddf1a2912439e9377963a4
Date: Sun, 17 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755393593
