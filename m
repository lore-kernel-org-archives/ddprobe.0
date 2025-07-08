Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2F41548C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751948394; cv=none; b=s/Hf3o4zHFc6gUEK1lXWUbkqBRZS5wrCgS/45Xss7d7GwbT6HOzeSirpxBcEvjlLKXuFlJKKHjBl/c1b0p88ZNIa8A1q90LHEBN1x28xuMNkXXccc39ubarrJxkvUwaa6J8gfeOzmPU9PqbgGwNknQEe1eOnvW5CkvqqI4JWdMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751948394; c=relaxed/simple;
	bh=oMfyos+fzbuN6dAJAI+Zh/cLIvzNSLpoYFccEqq7GZU=;
	h=To:Subject:From:Message-Id:Date; b=D70l6G2oSxCu30V1C0BnqcDLYaJLei+G6JOo5McvBF1/+a2+UAPjBkt4MlnmfDmUiR5g6PVJAEeg49YCW6/Hrj6l03OhatREQ53T6KEB9SjMiBBZ6sRf1qTZlv/v7lQX+AXgvD37aXTd1VgEGFiOVizYxRque5o9MTYha7XGzsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POpk6P0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POpk6P0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C47C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751948393;
	bh=oMfyos+fzbuN6dAJAI+Zh/cLIvzNSLpoYFccEqq7GZU=;
	h=To:Subject:From:Date:From;
	b=POpk6P0dHZ0QtMWNUZX7d8G5nJ0JnqqPBcZD2OQw8mPd7kfOs58gxwXEwf3f5S+Rk
	 SQOU8p5hLIhNKeOG0u+mhCBZcXTMMkgMhmroLAYQWA2W0PPWe2cGy538ycGd2wlt6x
	 9j+lnvOi/oeQW+Movpngeo24c3E6KdgQ4HQ/aQP9tlgqvzW6Gj3o10sjM0Bp8xdfgJ
	 1qX3SOPggmuD6myZVXUbmOQKychTjIuGt0E82fySygRvKi5bK4SLdoVFb9bUjL6WqW
	 DXmZhBE+0r+O0TsnQ/GCxnZdoC1RyCRjlOnUax6BOxxsezz3nVIBoyrtf/v5rCKNKE
	 fZ6OsfmqCOd1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA4C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194839357.16356.4412369093161424733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9932d4e7e4249ca05f17f79a0289336371e91f1414c8d82b498abf83c239f738
Date: Tue, 08 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751948393
