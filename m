Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C14685
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748546394; cv=none; b=UaRYpzFv+pP8KCKMVzRiPc5ftwFiH9EGvWjQ8sGJSOempGskcZJtMCy81E/BSNHfyJ5Io28rfEPyM4+qVR+0odpgn/m/uQeMAUw8zC/vTIizbn82DnJt1Vpj1WwARYHbQUKxl/cZJAm7gRilRd1vvnU78TDaLX3SZV3UqiGIfPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748546394; c=relaxed/simple;
	bh=TWXUYgtuY6Z2R2BLSSisVZIitexETV3hBEs4IFfayg0=;
	h=To:Subject:From:Message-Id:Date; b=n1ej6U5dSwelSQEOMENgXPugvpbn34U5A7tsj61DbfwBfBY/Yuqwqa4CzhQl59KlnfyP4isOWFdJhjXHbNGLbKLXDziq+gDXWjR2VMzkNRwlOdObDbtz6CcndcgPh3ndNk/5uUko9ACulHjkpWL7X3J4kJtxdrqKDZwdsRGA2bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXbNnf/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXbNnf/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F116C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748546393;
	bh=TWXUYgtuY6Z2R2BLSSisVZIitexETV3hBEs4IFfayg0=;
	h=To:Subject:From:Date:From;
	b=tXbNnf/TmK01qPnYy13mD1L4eHrYmyqEJ3IiYR1GmUjy3DOzIcz0sZR3ubf3EqMYK
	 AFuVt0ZYOcPDbJ709XlISPem2CVvmZNMNaAYnf6ZqDlU1J4rgnsOHnIj+47l84/opR
	 bIurThSicmxOMAl+mVVR5/G5HBUXQG0oSA21mZ6oOWE4CaD6uNiPqZZBbWH0AiQnSs
	 8ImNygJjlfmA5/AteGFwX8tLne1/mTOWPrVLpE1zxIi5zZhFnDDUAQb1VloCH65SDa
	 FzjDaxeFzSYJYj8Hhnr04jJ4EKxILQIte88LS3X1RqnchRPgTVSbegh+Bu57WW3TTa
	 FtHHG7yhbz48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90583C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854639358.6503.16668101212987739610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2251e54cd1dd7c26ec39f762d39d909b02d119c58c28dc38664117fc444ebb
Date: Thu, 29 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748546393
