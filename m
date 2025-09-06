Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB6F1EB193
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757183396; cv=none; b=qf9Q40IL0BSo7f92vCGviuBcuwKwGjkh3WIUe97yH7TK2ymRupMFw90yZAQG8X9c1vWcbwKzkrKBGjJLnBJjNfdOYg5sQ9w+hxiZN5LjRb9MW5X3TbhKz7wN7eAX0jNpFBUD3rrSEn8LR9d0Vt5PS6/onNHnF00P97tZ6LO/wB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757183396; c=relaxed/simple;
	bh=5PUyF/upnVpLLWhqu/H3NYQ1Qsf/agP5c/lx/MA2X9M=;
	h=To:Subject:From:Message-Id:Date; b=r2v1ELfqpe7xpBjah9sYAvljTPjyVzCC3aecP21W4f1do/1mHYp+iBSVNqgN67PN6pgx/xAmbiv+VkwZhADzZk2XUaYbfubwty2+59SMNckjXGaYPGYxFDCZm/c22fYH2nhqJDiRWR3KrpW497x17X0QlhG/kKA2OtLsTeb9vM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALrs0jdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALrs0jdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2385C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757183393;
	bh=5PUyF/upnVpLLWhqu/H3NYQ1Qsf/agP5c/lx/MA2X9M=;
	h=To:Subject:From:Date:From;
	b=ALrs0jdhbzQgnX14+C0kZxckj5yeJr5IktbTWndoZ1xR1mwa30hMb9hXo9FYnWnya
	 2TKnW0PAulM7b4Nin3xrlOskxK9LVX8pglS6WxPzTYroeQW8t5B+6d2RxUGe7HZnZB
	 FwCleiF5WVdDK4ErFOmXfdPPNkk/kqVf3YbgsYvCFZhmstn2rrQHVTWw1KHRja9EfS
	 D8St5BhXi7BbFVamWjkHb4biptGSkgpR2DfIHqfVlrRJFPy3yCb8sSLCMkf2Yrwyx1
	 zHOEG9G5kfsZq3QAKQqjqnLFvKFnfrQTLd8C0fKjeqR8fNO01A4etALOMEb/9V01qK
	 5hP2rezPy7VAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94202CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718339357.25339.6235886436283791909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701ac32fa0de50c76a9d59e31f6b6a13c8d4f1f54f147a3cf8a9b0d50e05d4fc
Date: Sat, 06 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757183393
