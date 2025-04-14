Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C3E4C74
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744592394; cv=none; b=Xxq0rt+Pw9V5cwS7okokns6y9mnSYz92oSFZg6yxJdLO21JSazsS/i+mgHsfz6WqBDygnAVmn/kIun1Lb30zaGhITF+udYlGxKa07VUZoh1ANHWaWaBE2vIWjJdIp32X6B6FzSmVMJ1FSxJU0qCzmmclyfxRZXKYZvNIHJbcOYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744592394; c=relaxed/simple;
	bh=ij5vSSKzKeqweTFLrs4HLKKVI6JRtkUVWYDU+FBxNqA=;
	h=To:Subject:From:Message-Id:Date; b=MWmJ4Ye/3tvRS9D5HzCG/rRuvjPdbXVpfCyHkVj0rdYEP3gHKI8jecYoq17PW7zqNNQFSp7ThUrGazcJ9hulztDy9O7ntkpIADplwvkYN5uTwFAt32MsmUmpVmxiRldZr0UBNL/HPyk+9YAwvSE5W74BDV/LlFqDeQLvV1Pe99k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd8kkTS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd8kkTS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF03C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744592393;
	bh=ij5vSSKzKeqweTFLrs4HLKKVI6JRtkUVWYDU+FBxNqA=;
	h=To:Subject:From:Date:From;
	b=bd8kkTS+0cTLEldZcgxDYf2Ksm3d5tE6UU+tWyTy/PAJRWSUnUBSz3XIVFWMwAZR9
	 9U04GWF2XePIaVW08TzxBdHpwUlwmm5nQbh1edIv/VbbHlHvqWiFlMMVika7LHjB7W
	 gHCO2AkSlrDjznUJXSXX9qgSlbCd/9u3BS3Jbru9cJLoPj4dW3pFm+sW7BWRf7Q4VT
	 02ncOw0W1c8TsSZYjNbY8PWrlt577dT2IsxUhylsNnywktjlICAObDoIknjYSCtgXH
	 PKq3E14NdxqnBiNY+KLs0/oRnJ5r3x9D30Ok+1dO99sW3onAohaHcbyJDxokDHp314
	 0KNaO8k+0vwkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4559C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459239363.13256.5668188509951722231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1d55328b5b664e4640fe414dea7190dc64eb825b60aff8679334bf6833c103
Date: Mon, 14 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744592393
