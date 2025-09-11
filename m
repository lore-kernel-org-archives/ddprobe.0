Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1739C3595D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757554194; cv=none; b=Kr0+hpBafl8KX1cnILXXnQZU3Fib8D43E/cMB+DKJzIhzCuZB+16ZU/rioMqVAEltJK+odG053IPb997I8g7SJSVxC0ZBH2rDqV3uj87g+kSyDT+UMY9nE72tGJKM0xxe+ZX/wGYkjKYPIHh0Wa7hO1ZGyLgc5b+/aVdO98OjcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757554194; c=relaxed/simple;
	bh=u+knhS39huGq0lvEyDSnG8xe0VCpcwbBQH3rVUkqQdY=;
	h=To:Subject:From:Message-Id:Date; b=F92XxdQPJ2VNIC/GhEsU8hCWZNHFjIa4557S0+NTm4r3jimhR6HUyMNCQu/P2XAcTNrLMVddcCh+liJiAWpJCY5pwFX4xR2R8xm8ogGP6l+ASWQtbaBF7qNah60n/1nPjnoQP/17IW9gFRQmEfXtovp8SYK0yF5W22RztqV59RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN4GcPMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN4GcPMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757554193;
	bh=u+knhS39huGq0lvEyDSnG8xe0VCpcwbBQH3rVUkqQdY=;
	h=To:Subject:From:Date:From;
	b=NN4GcPMAylodX6GMzX2MGKJ3CkTUKIN+EBRy01UIczSVsWvdVkmr8rKH6svCDZs+1
	 3sVeqy4BJwojl3DwTxpT40U+o2M+JzOhZF5k8E/5jDx+gK9BfHAzZzx1TSLMoclhYq
	 uChmMWbK4fxM5InmT9Gay6WyKUGHP39vwjfBUwD+4qISqVWNJSLgE+Ej0g2dyBvJrw
	 DxFlv3I6kKpOOMgDhOzqjQEqIfwczO1IYh0RFmyDfwdixWf1wr0NtuGuUHxDoDdkpC
	 7CjYEwlmOHRNRBhoOERne1mIomX4jdp+hYU43IGLtjWZh2bwKefQc2M49o0Leo2k+l
	 YDYn3IIE8/azg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECACA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755419357.20812.16169669031404142663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fa79f8bdc27d2605fe28b0f86ba0a2ca8b17d8bd3cd6954257aed4a3414fb8
Date: Thu, 11 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757554193
