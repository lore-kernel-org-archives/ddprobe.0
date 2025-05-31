Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8439460
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748682594; cv=none; b=TRXvRdAOGGYf7P+ch72LUHvdUGpNbX7OwN2Zap9iLouXwpMtEDl3oaZYwRynbednHcFPld28Qb6JNUQ+m8wdynBUYI+rUZ9leEg3e/qOu76CoRwUhMLhHa3UAysf2ADYFKkAgYps6bS23e79LWGcdMH82vMpiUyafBYZbKKnikg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748682594; c=relaxed/simple;
	bh=IUyni/SEyWHGLdWdaDEZVFYQjpmcs8ky3sa4OnBVd1w=;
	h=To:Subject:From:Message-Id:Date; b=TJTTKbJ2cAzRBNXa5213N8D1A+0JqtCiyY7nMGJH/RtzIhwjPeSTGSABivg8YwrZ8BN+OEET/sxLzfpWIqY1BhVaZG4vB6LjeVsEXcBUo3jkC2/mqhg2kEJyX6vY2lKXLT27xSAeN2Q7rVA/e0z1jrfgnTFk7QVtatAShF0DAlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsX/evxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsX/evxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AE9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748682593;
	bh=IUyni/SEyWHGLdWdaDEZVFYQjpmcs8ky3sa4OnBVd1w=;
	h=To:Subject:From:Date:From;
	b=UsX/evxiD+cDLvYGzU9TdBS4w+4j9bSQq3MiQ8PU4nJ/h+vGKCTpDCMYbt7LfJ7S7
	 PdsY53vzNFOlmy59RTUfnE7uPIh1/JbwhbtCi9h4/utJG5jNJ0Bk7qByrz6mOiPWqS
	 F+4FSp2Eb1EKbFeUz+ZzOlIqytBt6l+XqBBglvJZQ+hcMFfEbHJHR/MepL/OFxIN50
	 p+/58bc85fOycRABI1uMcXjYO8G6LA54edxFeDxTq1HxAmK7V+z1xUMB0A18y68F12
	 rdnG91DwDiR4BpuqicSwVX5ZvDtzZpuTIu7dVeX327+MVHl54F/fmDR+aDRWwxYcv1
	 lCCDv19zTl96Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E316C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868259357.19774.13589587867721702960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b97252b0d3466a78928cb58c2d45663cc3bcb0b5f03ba280d8ac743ecc9b40
Date: Sat, 31 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748682593
