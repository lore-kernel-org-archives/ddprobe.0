Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEA41D174E
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725634554; cv=none; b=JM/IlTjMUOB9dhC09mbYdFOTIlz2sAWf73m/kBVh/8VWara9hU7nJTrhzYUAhZ+HUII3J6z5T2zhy9YPhNNW6t16XVGoU6T3dfaJCTofctKJyJyJP52bZxmQBEDDCtqiImtt4g93IcBXLNgDJA63UyX9we/pem9nBhnS3Kk/VHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725634554; c=relaxed/simple;
	bh=ubKyyr1em4KdrW/lQKJkJqXzClXBwswG+8Zkn1PrLp0=;
	h=To:Subject:From:Message-Id:Date; b=CuJmqqTXNTJ/Sed6XRzn0ccGHfOreYfb7XEsdzFO6dto001cGMklDfyj52TAn8eJXMzU1ZEO2/m26AdwQcLMoVIYfuAFYodwjS9vzOBtc1GDx67uN8uFR31xj68gAitpMcGdjmQTLiOM4nTCtKZwNiUXZedfizd8qYbSS4EDvTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUMZiFrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUMZiFrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE51C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725634553;
	bh=ubKyyr1em4KdrW/lQKJkJqXzClXBwswG+8Zkn1PrLp0=;
	h=To:Subject:From:Date:From;
	b=BUMZiFrzrJSdnKGrpGvxCRHBM+xdXH6pOt6KHBayQokoSgKalPClIbvIJtfG1xsXs
	 zmHaV9nIOZBbeMd7+uB21m/o22Z8/LbbXb6jmhIAqfecPc9BpMTyX8Njw0XXckGEM4
	 T1B00RqK6WP0cbt7DBYH6gIIQ5e0VsyHns5bV8d9UMT1TdCibYeUV2msRSYYSNvzIj
	 u+kaBWwfibVxx0+QFHSqsfZ6i8Wx+2kr+gcv0NQ0xOA/iBksffFSC9/3F1R6/Xno6K
	 R6eJJ7xZL0d04YnXseYPHGzn8qAlyE1iM8XhpEfHy0SC7yNVoBHUyxmZzCz5/n9c6g
	 hA8J8p9zj2KAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDACE7B1E
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563455358.28799.13829989402492738128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c5232af487ee6bfc93e9566ee049012ae1adc88405b0fc46a66d80191d312a
Date: Fri, 06 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725634553
