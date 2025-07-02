Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123B221FF50
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751437795; cv=none; b=PXjvQ8fT2zfuk4I6FMUehuGwfmmT8pojRYwRS5wH2eBcPKZv72CUMUgSiCDfgMISqTKoIQngKHRg03Pt8osqKw0JY6mC+psYLoeVhE26rKNl63etiy4NkqrjTJ6TaAug6Mxh9j7hvqeRWFQDW8+2BYpMK2XzxZ0ujRJjc9lit7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751437795; c=relaxed/simple;
	bh=NT7u/Lqz6RVKp9NX6D+4Dxx/k1z48UDEx+m5KWqcqx0=;
	h=To:Subject:From:Message-Id:Date; b=eqN0ti4qTQZB7LsBaZCqvkOsSCjxmD6VBJOnCGG04eYFbB5Q72CEglUAuAP1qlrrEM2WDuw6n8iFhMmOyqxqwJFq4Tm7Bch9EivZI12o5zdCaCIlZtQiBEUH+RpwgJlqDChlFqc0E0TSq+KujwwWzmYDGJjAOsqwJo1VOUnZWxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omWSKZq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omWSKZq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEC2C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751437793;
	bh=NT7u/Lqz6RVKp9NX6D+4Dxx/k1z48UDEx+m5KWqcqx0=;
	h=To:Subject:From:Date:From;
	b=omWSKZq9NqsDi9yhA3HBRi90gvMIX78JuSoDArkqrTee0GrG4hDRUcJK/ghSvXpDr
	 IQEDXiQ2v4aaI0HmoR90vhWBFToWe6BbA9aZhqhB0hYaLR7uXDixd4U5pSh1/H/Qkx
	 OlVsiH/5oQE9oha76sjJwOkey92vaR2uNjLRVBN6GsyyYXrb3benQ4taMkqqKZcKyr
	 DyKPZHJV2y4H1fzZwZ+lZg//jBJwAAHQHF40r/9sYrCu/YhyEzcTQuDxjoLl9/E/UO
	 K2vrr2Q3VfnIC461g0J7bNVAIIVHb3SsV1MsmodOiqcxNLjGzOci3QDfgbr0xP8X0P
	 6eR6B0ttHl5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90204C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143779358.13226.6666257940550011674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce40006ef6a29876e2d40767b3fcbffcf99145e4e2e141bd1a3771c6328dd90
Date: Wed, 02 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751437793
