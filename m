Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3393430CDB3
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757403594; cv=none; b=EJ2MDCEymeieE5O6obTMp3hL6AMU4zrxqWWR1lcnn9hAVIJfSywXrrbfUzO3+ErzWJMh9ZMYikz4OpcyJZFjdmU4rFrq3kAdPLYaPUCOTtckGx0S6e/8qcM1hBs/Jq4tT2MS27b6cdUQhcd+6BfJwMLFHeXHhBHdHvTlmvqN5YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757403594; c=relaxed/simple;
	bh=n1PujmY89JNZVAFOZ8MEwF/kiMGOgzKg7LnfAye+UwQ=;
	h=To:Subject:From:Message-Id:Date; b=pFanTQPtvbcsq1VC6YjsC1ra4/xi7TbdofNFiT3dBT+9lrDtDSdZtUvw/EIAedpCq8fnZH5AvLwoRAklk8IDAkqgqo/9901EGUZI7BPx35NErI/WGd1MXnGAxLaKXZhcbbsm/gGyCjZCBi7aEv7LaZ1XKIwkpiMAkaY8cRNw75k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irRvDETO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irRvDETO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EADC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757403593;
	bh=n1PujmY89JNZVAFOZ8MEwF/kiMGOgzKg7LnfAye+UwQ=;
	h=To:Subject:From:Date:From;
	b=irRvDETOj5zfomeOS25YY3LLSQg5ganjOdmTVSTMEyWkn7LJn2+sD+UeKwjLBJu+n
	 Xv98tlXs5cYDei8td97Kcy/IuvPYaGki6VPCw/EfWYH1XxpI8BuGdq0vy6APKrb8CJ
	 aqIbCQN3eiCYFUjxyB0CZTClzsC91+sAEULlb6RlYSpG4oB0ruHZ+aV12DrOycpWZd
	 Nr43hCOAdDUEoaJccZ7a9jL5kAlp4B9KxkBj212MCVSD87QB82eqcO0Tw7EZelOFv8
	 w0kgEUQVAQUVqK+NDBlBDQKyvpUQzxnusZJdEW3ExJwvnz/miib4bBElEHfyOwRlGJ
	 dNy9AhaBj7h0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9961CCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740359361.13633.4691450524214700202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3045605fc7c5919a6a6475cc5ef33c55cacf70df765dbdbbc831cf4d6d6db172
Date: Tue, 09 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757403593
