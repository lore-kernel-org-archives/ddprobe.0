Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E75A1ADC69
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752511794; cv=none; b=TNp4GrBbgRGnC04L7XeJ2a3ijABC7hDBH9ypICI8B8KTW+/xI2Q6iAbfra2VLdCpVB3KicbAVsYqAJ8ML4+wdmjOk8Os8vilvIx34DB+A5fQ9FnKtvliLgTBAb8JHgEdlFsAPbjpYyeg1JGInM1SBMn9C4A9gj+jYxAKCH+xkd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752511794; c=relaxed/simple;
	bh=WCDW6bg1N8CA6s7zTwFqgnu8+UB7/NsGDYgaV2W0/WA=;
	h=To:Subject:From:Message-Id:Date; b=pUdEF9hPzWtZ0I6SXO48Z6ePl4m6rvMDwe1Kxh6w+Q90kw0GBtUg380P30DGVPBKNz6NTX031R01iV6zmO35NjRN8CP3IwH0Fsg/P0T8jg0vLF+h6P3udfy4qMbCWkttCs5DZRzgJAFgudW9/5/ODQDLOQBAoR97U58MqZ7kBFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FenWK/ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FenWK/ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35C9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752511793;
	bh=WCDW6bg1N8CA6s7zTwFqgnu8+UB7/NsGDYgaV2W0/WA=;
	h=To:Subject:From:Date:From;
	b=FenWK/aho6xh/WHNjmdWDeKacKBJug9krSjNxRgzU5CI3sEctaoB8J4DrOFFWeT5j
	 Fnr5fRz1oZNZXlNYoQeIMR28dtHudNINRvwJOnQor8c476HXbivRgDNlGik9m+blcg
	 38LI8XrR8rc4LmjNsOlQBd5uKCfU1t9JYvhh0Jc0d9AVohSqhuLxaZZQueIMcTCyrZ
	 sOfpbJhAOw5oyT2JdDAJ+HQmcS4LOIRAhCPg0flbvh4046mQyqfImtvAjZmpiUyvnd
	 SpEBDYTs5+kTBIIhtg8hX285B5YJ7VeIodnrD1HfAWRw1/hj9S8COqxXvAlIepJtxc
	 Ji/9YHUTSlSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3D7C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251179363.25056.4715051604556235778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6c84690ab1279a98b97baf7c9f90b595ac1ff765702d31cf33f67c0ffccc4e
Date: Mon, 14 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752511793
