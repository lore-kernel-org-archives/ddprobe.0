Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6EF11185
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747624194; cv=none; b=rGm91w6vk2SjHh1YRQzJksLbFuafHomMfdQ46h8TWhmQ9bleSRt6eEJDrFh+DVvlaLje8mMXabyiJJvGymsW+yKSBwFeFe6pdAregyeuaOhxYs+fnGWf9sfwioCISI86uQihpRHQXO8rLVXbdUrqHE28PfOokIMuuVZ45DZda8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747624194; c=relaxed/simple;
	bh=j2RrTVpm590v6A8/UKw9asfmrYT+Ts8+KGlenCAjTcI=;
	h=To:Subject:From:Message-Id:Date; b=oOsYW9NdxjnfHDwUlOblYKHLmHo5NQ8EaCvfZKhfcdNb3H29uYV2xalY9n47Qk8ytLvqzKy7LJsEsa/CBFhpYWjvGVR7n0OstGeLTGgKtvrsbyytoh8710uSodo6XuG4nR9nIcIJUsxVMsBua3M7EOhgSkf6MyvJZsFRa5U0bHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuACxOy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuACxOy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747624193;
	bh=j2RrTVpm590v6A8/UKw9asfmrYT+Ts8+KGlenCAjTcI=;
	h=To:Subject:From:Date:From;
	b=kuACxOy4NGLEU6JVLaOxaltMcAip0Q83bSZ4Aws3fK0jzBghdUGJ9F1uQg6S6fvJ5
	 9Nn0fulNodwVn5ZHdrW2GJiIBsaZg6I8HiPPr6Q9hMat0l/m7ORBrw6jBznwaS5UbK
	 1+Io2c9vFRfhaAzHHDSVoQBOgEFjG3t39+ij5L+bARb9EemkLPJtIRnqM6kMDPGLco
	 piO/YPBMrYHKjGhpzyxPs4+7JRDb/0PcvRWoWl3Wjh+JbpXcVBstLsskChCFka5rAr
	 ko/OKX5C+/kgQ9hHs9KLS1o+XG3AtkzqocyItxF9VQTXtNj4BumfgGiFcT1UWGMoO0
	 FZT2bVOFU8HMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92704C3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762419357.3608.1184463007687113448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18e0fb3bba7f30417a235d86d6e3a1d9cecffb55c5c0b2dc49e85cf725e6603
Date: Mon, 19 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747624193
