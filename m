Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD71647
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724820954; cv=none; b=b3l6xen5JKnRHa121+ZJQL4yMjTihno1qmN9LGmJ+cBWBpUzE+2MqRm+VxYyVZXbbmTGlmEtGaI4p/2QkmlMtHJAtAuAXXR9fs7nAZvLFLAbgCbd5F7aPa39xcr8sHxcXarDkrT3cQgneSa1x5zbbmvOKs8icH8AMLplKJqkBxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724820954; c=relaxed/simple;
	bh=tEozlPlU5bT+AH5JiRreMMTogJ0Hkp0WnaKCRORg3og=;
	h=To:Subject:From:Message-Id:Date; b=NkEV9+jRonyMe4JbMC5drzzjeFE4U8DVUDzCb+5foys+wPMEiwIdPNW36pZdpHZAlC6NcVOadeabETE6xSqxgx9W7Erqvl9mXxsyEy/tQ3huItQU6ZfQ9FJTVXloULBG3qCdAVPS9bnmDDsuCVoNnXcrBeEVoLCfFgGZSiI8x4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfPQgsIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfPQgsIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A2C32782
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724820953;
	bh=tEozlPlU5bT+AH5JiRreMMTogJ0Hkp0WnaKCRORg3og=;
	h=To:Subject:From:Date:From;
	b=OfPQgsIUYe+/wJRjPqljtbJ3yHWriGqGj63UaHWYKTy4IQQthniYGhJ2/mBVxiL60
	 3/57ZBr/sMf+Y2gla/Ju24fwmN7W3uWPLU9L5rD7e44ZDHDx+k5rII+Byj5dxWpVHH
	 5ea5fx57uAidGutrPh0f8Li1iY5jGv8TuGQlZsaYhEfb5JsTktqBSdjcqX5UpDqcKe
	 nVmFxgek9Y43qQZYsRv49JRMMqJ0qL6wBPe5Awl4Eb6a+oKdaiTRN7P9xSkV50qO9K
	 0n2pDB61KfRCZh5TSSvioYxQZs/H5x0LwIMEltC/pjuhxM04DYbOft+f5WlwMHR9h+
	 H29TWzcjWfq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D01C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482095364.13420.8260690484155964496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627ac2292747cbc03198e4f9ccc2f7fb2ce769d28e43185946426a6bd8c9d8ed
Date: Wed, 28 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724820953
