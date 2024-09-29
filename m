Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA4B1F95A
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727642154; cv=none; b=j1i7x8/qyTxPviyQ2NDFv8bn9HzQdmqscHEddbHxbODmu+YHkmLqCwgOWUKtoXr13S3rQfoZwy0/oYkzvwvL1nhVI+Dc9tpuUlGECw9b1o4ZYk24OfglEQPh8uXxqHjNKMnyszmpIMwzUBMskFk8b2hnTOUq3OQf/7sG9wjlXkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727642154; c=relaxed/simple;
	bh=2+IaYWTyEgtQWJCupqRZUoLMzcp58Y6UEuxptu7MzB4=;
	h=To:Subject:From:Message-Id:Date; b=rvK1gFcTwAGIVZDkLIELSXaeILTC9hDr64QJ3PS35IfcIsRq1lGhfYPvbEB/2XYx5K5kOg38Vn7FVU4bswWLnKtdGQJebnJFIRQomNIK9IVYAT8eLk4xVR1dc3VSwzL9ihWoCbiikkz+M1rPioND1gPbD/5JhMP+TI4gj3/lvvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY8RUTQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY8RUTQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF907C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727642153;
	bh=2+IaYWTyEgtQWJCupqRZUoLMzcp58Y6UEuxptu7MzB4=;
	h=To:Subject:From:Date:From;
	b=lY8RUTQe5WJG3GHJqdKfOUNU0R5J16uvA2JHKBzSWQ/De4EcctKLXRwER+ntkXgAl
	 MzJ2LStZB39J83IZrzdDVOZDEZXYh82OY7Iw0YDT/jN/9tuHljGw4x0GrRvPlHaIyr
	 snKGMKlzFQL+teRJtmvgFTKb32olGSMqJlJcYm0VGADBb/d8CHMn8vV89PuWqlADNx
	 jcf4oJQ1iMI6pIF+2PAB8e0whtL+uB9/kTFrlwYbvnZlgMrJgDmIBRbWd/0AHY/OnS
	 l96/NTl9+aCGKLAA+vHqY9Mt5BN+f19qnCs3jaTa+O7jsuHvfE1mf2Wh4cVkxWZlxG
	 YB+hmk/mEfMiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A819ACF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764215364.28414.15076193943338940974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e441b6033964332a15f171b415c4ec07d49300118f5366c4ed1b488fad9ad445
Date: Sun, 29 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727642153
