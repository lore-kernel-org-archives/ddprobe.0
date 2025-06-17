Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A02D28BAB1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750164594; cv=none; b=Pli65SBfrCI5sJfsh0jBlCRg8eA41dChLsJKgsSTMo0UOmxg5DvxTX+ioNvevfd8Sq0Jlt9Bx028DE8dONRqd+pvw0bOEesN9EpBlP0NNPSWboRBFeDV8g7jRYK+xfIF5PHUQrt3m8wWwIdd8UWYUM98yO/96U8ZWcGwXhZf0eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750164594; c=relaxed/simple;
	bh=oeLEME0t5DC8BLp18rHuTEU9CacVrL9lR/5A59KfS4Q=;
	h=To:Subject:From:Message-Id:Date; b=lvDBpcVZVnxoMuWClobPawmAGFlpXTdJVzKVRou3muXUddG+NulG9uAd6Y1sR2dOFWYLA8AfoS8VCKRW14kw3JqM5PP5Dpu6RRUMYbFEWMmwSg4mGOM6zA4i2x2hM44rAfGw1jAUVOpCJxsCo+xlLkhbsVWdkBBSqA18yYGGYOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwXaABcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwXaABcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A64C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750164593;
	bh=oeLEME0t5DC8BLp18rHuTEU9CacVrL9lR/5A59KfS4Q=;
	h=To:Subject:From:Date:From;
	b=cwXaABcTEZzjJXv1vNJVjXyx8LViLBrDonjo2GYv6Swe2nIHZ2nlSmJWL/v4spn1B
	 ccc6UFgnoj0haBa3gsP5Nf0EyqaIQlHRZt7KgzhCsYuCNNHiMcx2sDT5YVDMZWDBHL
	 SH3BuhU6qY4jRobUNFngqyif2/LSsP509YubSydq5ek/1/5dSlt+WtBaPCgVgFkUV6
	 zulArzhlOMusj2wsbMxVxe8duSgnVaSs5OJWJY823T5gLYdmS1BDFvk2tyXYT1PpGa
	 5hH92jfEWF95tB6RB1pVBY/zweA0cao9wKS/u2Kzy+ODIwc8tWz8AK+XDTJw0Xt5IS
	 +tMTLqKelbyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90334C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016459358.4370.9915400598478692806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67615514534106d1bda6c50f769267fe63b429f4866c16ce0f157df147e6d28
Date: Tue, 17 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750164593
