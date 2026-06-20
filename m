Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B44115E97
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781958994; cv=none; b=ifYVCKIPLp361ra5OqhTp5+mz2YgZtKKD7TRmOdGJwaaWYE/z5T5t+Xnz8fyvbOc6wma26+gKEytQj7CwjJSVo7SXYSeKTG2lsKyXgYw2sVTquYSv9k8ewWZhzm7elEmPZvW2j60VkPzVay7Snx0JiToDi/bTUhzauwr0ySKNmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781958994; c=relaxed/simple;
	bh=a2fi6FLJBIMBGL1V87sfNpDJSqUsSrmt0S/sanolALg=;
	h=To:Subject:From:Message-Id:Date; b=ZuYWNQtmDgppiiYWFzNTEHsd5BvpBMSkq+SNR9pC4tBzpNFY7ZU4OaNpT/XRY0FR9ImTyh1qNpbdP9BGwvzBb41zGhYK+hAydtFE6y4g9rpboLpY4R5OyujPKbJGWEnOhZJ3zdobnJ/2u677u74yJGB2puGHvql1A8DCUAgDJSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVNdZMeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVNdZMeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D8EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781958993;
	bh=a2fi6FLJBIMBGL1V87sfNpDJSqUsSrmt0S/sanolALg=;
	h=To:Subject:From:Date:From;
	b=CVNdZMeRHJiAL9i7FMgSeRaz7GVNZ5PHoTliyUTOkLH0cCe7CI+WrrNKeRnrtXI1F
	 LRVlUF+ZeSPhuPPnum4wJkd07tNxiDEEcePRJDr3pe41J2GlOSXuOMnFCkjjSj/kTc
	 uGDyis72LK5CyfsovAnOvU6IYu02JmXmpuBBUGNnyCUA588oW6omG2qIPASDABm4y8
	 WnvESKDqL6BoXNXYG9z5+HwKu7G1b891cbEKLZ/j/KOVPruALbWS6FdNmy9A9V/Kp7
	 AoQo4+GHHkDVr98DO6FjAe+BFnqFlJO5vU176oDhLPLMNtUWTq+lmCFcBkt8x41DOe
	 WGFxyhzuggn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC0CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195899368.28367.4963038850512095893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5ede758675e65a206f4cf0a7201c0f3fb7f6beba6a192625558ed7a7383c50
Date: Sat, 20 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781958993
