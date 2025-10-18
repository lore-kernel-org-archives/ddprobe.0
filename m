Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C56A926
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760756394; cv=none; b=UpP6GgEvPAM6/+hD2ahjpot9ORQiOBjP3LEf76hgqv7GmvXZXVFkJ0uqXFOuMq638MiPIhsCDLj+RG7JNHf/6xdy/2PC5jFZJAeQp8CX2hNqaO3LghqEe6ks0r1kSgU9xPZElc9t1CuyqTTfJsrAL5yv5pxZ8hppoZTlJkjEO4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760756394; c=relaxed/simple;
	bh=x9zSHTaVeArxCSTRJNpICG103w67OxSTWBx9+cvwucE=;
	h=To:Subject:From:Message-Id:Date; b=WHnoXEfN3Q9Els2+JQzEOA7+oi2pE6GS3zJ2Lt2xRv/hD3iYlDd5UqVdc6mRmaL4NEfOcdNT1z+zxB9zXkUQqnKeqvBv5SDKIF9dpumuYU6LM2j1mrX1Z4ir5m6UXkM1WqVIySuejXzWaJvyd74TSg3iU4OYynwcmX7DowN0kEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEz3T/Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEz3T/Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A32C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760756393;
	bh=x9zSHTaVeArxCSTRJNpICG103w67OxSTWBx9+cvwucE=;
	h=To:Subject:From:Date:From;
	b=CEz3T/GoD56e0S9s35u6GvfXEzDWJHmC+r0oDrxDLHpoXkd4gVJkADuE27w5cClfw
	 4a+Zt3whKdaGEsZlsbEUEJItYojHBpTbaIlbXJHqYMxNNZwMi90FCFSaviwFqSGRH7
	 Lm8NbOzFt0ThrlWtQtXDjpWlfKQmTO42w8URyeopiIqzwD9wkL/bB2Z6ppiYvGFt1K
	 7MiEPqhwC+x/hefATHd36z0il0oxj7uCBDn+D4M85A6FChCdzBJFJ7CBz6GuSpC/zO
	 Z/rP3ysDeSwHruvJAJuJyeW3XZ4hhjhxpjrHDffgEVeCYlIxmfc2NLxIZMIgUa5ttE
	 euNOrIvrP+ddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF8CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075639358.22998.1525345522304639141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25569fb6ac9ede5d42f4ee9fa181bcf572de1242f15172f2b1f01029b226abb7
Date: Sat, 18 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760756393
