Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2942119D884
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742974194; cv=none; b=XGJUGU+MvRcJ13mSn5lm9AZAosYgebT1KRM5Hz/Ceg3f+f24fuBbFpEO5mDAstrrYBluuY4ZjESPK4cchlQxLfqjCVYpAuWBPmLlNxMxQc6/201hpe8A87+57yBzgsLcVhzyS/hdFGxcgTkgGy2CKMV33E+ZT2YrqzwwyyW8Ieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742974194; c=relaxed/simple;
	bh=yhE+gM18z8b8bIMfIe0i2igSVyUEsHs8AP1qdTcgbG8=;
	h=To:Subject:From:Message-Id:Date; b=coNBsFAo0BgVa+NyGlwsf0RPu0P3Y7gyky1zIl3YkHve6408nDbWTirx3G/9ZrT5GYnuIWtlpVeKSTdNwi6P5aQM/ffnqOsZ9F35g6qFJ6juXmyZp7X4Y6CxbFWWxk7pHIH/05nYK4Uz62CtRsReApH0fPkm68EKYaEmZHMGf/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfWzMO0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfWzMO0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA1C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742974193;
	bh=yhE+gM18z8b8bIMfIe0i2igSVyUEsHs8AP1qdTcgbG8=;
	h=To:Subject:From:Date:From;
	b=RfWzMO0XuswYAR0gt/3DBBNb+0xYs0OQUITFwzNED02HhjpmmvQewxEsKN984wd/R
	 tMIf8y7mHQDB01cwsOm8zEo82/NNzVlTuPRyQhpnm0ABW4PuXzOovF23DBnCTuvmPj
	 njRC/S1ZFmodvLyyjkf/qbLHDXpvShQPx7R8vS9Q+lJPhJjZz+JooalH9mo4KjhLv4
	 iOD+TMlqArFgIa6cG2jvqzEnPOn1boKY6Rw/b0Wesnf8gMfqMdwns0lW3Ns9ps65gz
	 k0gqoKjHoqU+DlxmLlI1wd1nrfSBwFIwEaCsNR4RisZzWeZBybCgfLi0dLclg/ccnD
	 axiNhZXKCMt0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90298C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297419358.12268.7637831941001225621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f954898a2d700050559f95a7bc7927a39b3f00424d5d3988b4837ef680bab72
Date: Wed, 26 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742974193
