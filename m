Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F180038
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722287754; cv=none; b=h2epheYEgyXf2/pAHOEl1ghSCQ3mWKVxobE6Pgf0ziSVyGMU/BVVKpp5wkwTnHshX0vdtwCJHTEvNfCUNCA7mDaya0N0gtNehn42nKRRv/N1Geg+hu+Jov/7NDxUkj4Esdq3axqC9xxxvnX75AqqJhYYZVgsmDnxDbvkDZvk11k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722287754; c=relaxed/simple;
	bh=il4oeZOi1S5Mm1DWJMUBZGjfTw51rLfuAxWLYNb+B8Q=;
	h=To:Subject:From:Message-Id:Date; b=rLUs6Adc3Tzp/p/TnhmZDGj2scDVczF2lKFHw5FnjlmLscuzYHFNTJGW6qQhw/TcMH3DxypmVm36/76micWMMae7NvhOtrgUElpsVZJAmlXwd3uButAxd535SVD0gXEjFG4ENwVanCmVkfcOyGFZ4yKV817Upg7GSZcGRCkbCyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3QI1Xz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3QI1Xz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA94BC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722287753;
	bh=il4oeZOi1S5Mm1DWJMUBZGjfTw51rLfuAxWLYNb+B8Q=;
	h=To:Subject:From:Date:From;
	b=m3QI1Xz5jYgL1wkIIHHX8Mx3VoNwcuQxkBh7Pq2snKrb5UWhVt2JxcH8/cW8PEYz9
	 zmycko4BCd8UPb5PC23XFVKfc2TaP8HyiwCAADZQVicEoJPUyfg0/UjzojQvIWqlB5
	 RImpXIZehsXAxAUwl3PtDglBMtY0HYRVDgOCWO3LWaOVzQmtib3FQ8YTTEu1IUX7Wm
	 EkWCqMlVJfN6MMOXYnOBL0s3ivjhbqiyTpH2uBlgnNBmdQekBGxgJmoOypKq/gYg0K
	 WHuJFbWfGSEKOXyCS0ZnUDlfhC3m9pJAKIYG3f9oX0PtuLHT6L2hbC8AJWGtmTygz1
	 q1Sr4kC+b3g0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA7EC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228775362.26143.1142578542540008279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8e6323e0ce3547a64f3dc187e91d614688e70f00e9fd9d0012ba4c4288d461
Date: Mon, 29 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722287753
