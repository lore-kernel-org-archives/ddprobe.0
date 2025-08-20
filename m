Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20993DDC5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755718194; cv=none; b=JIg3Q6EvzvEdW8UeswRibeW9Q24dXgZEiKLKHpYZO7gw4XaZXu2JmHC13xkPYhMZtY7DRPEU4yFUIF+fBzb29AA912curNvB6SOtFvy9MujsTcL4UYo0Tq0pU6INkEyrbhqRcCMDEqFwEAhTjB0JezhI6u8SuH3W0ZVKEbELtuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755718194; c=relaxed/simple;
	bh=NbiqlgS+QA548tJMOyIO4vB9gSEBtw1BW5frrqDHU+k=;
	h=To:Subject:From:Message-Id:Date; b=rH91luCi4Fw7mAKyzKyLW/kKrqjuq8NxBAF2aJuqI5KI/kGAPldlCm047ovXP5hVzszogzZ+ZL4pVbU7g0NKrNd3saU1BFbWZr2yXtk7pazIaTArrISW1VwbMg1GHzIxUqjsJMaxe86JWdpvhdFfQR9Lu5P+VypapTRrc2oN9PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzH3isUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzH3isUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C228C113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755718193;
	bh=NbiqlgS+QA548tJMOyIO4vB9gSEBtw1BW5frrqDHU+k=;
	h=To:Subject:From:Date:From;
	b=lzH3isUsq2oWezQSHvvJ7HepNIW7k8gaAsSJsqMXUPwJGPqz0GfM5Q0c1nVnXXbaF
	 +lKVix4LLf//7kV2YqTZ+PtC0lQu1UZ3bOWsDKmiSsv6vk+RsXtBgRD8V1dgzq2w82
	 5OOo6QSP55mBhzhMwUvRcJs8ixHxyxVn/qzzVoO2l9Vp7/vHaD03ttm1ZrfN5MrCWI
	 Ksx7CtQ5kwSp6lugUV6u2W+ZByTVOgbGH7VJfMwwVV1t0M4O5NjqF+pR8yY3kT8+/n
	 EqGHZsuRcsbxEPzjCFYFd05FU5bf/ik3EOvxwl+/Y4IIeq5GJZINNCHpjDy+kPKFFx
	 dQflHu5KM3IGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E9CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571819357.29273.12337694522651673665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7078d6376268acb3fcc9547c11eadced09a8992925d172f3a6966062ae18c35
Date: Wed, 20 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755718193
