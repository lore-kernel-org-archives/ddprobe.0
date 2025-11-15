Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756526E704
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763197794; cv=none; b=rAXVGvWQe2V0jjFWLnGWJORe6qCtY3jgJz4ZDQ6uq28dK2uchokCizStVybXlHpUQibi911xo6/ToJRZ9mIrJDvPHPEH+boNF7ipwkKNGJ8S91jZtYEUTeUAtoiVRwW9KnrSCMqyXs7In8YYp99UE8hHCZVtD8ZWWv5Iyp6e8Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763197794; c=relaxed/simple;
	bh=jncn3ovhjNpg8nR1m31RtJA5BsveIogKGJkMge4NXNg=;
	h=To:Subject:From:Message-Id:Date; b=S8I9N+NljAY96Veci7IL6k7EVcWs3+Jc9Q7lZlXHA9UfyZYywg9BvIpuba2WFmKYA3cjLMaiTgfPJ/KPmAJ1jPnsCNABXiltfdMr46uKM+Dhsz3QSgXYmMwffpOsFYKcSvsHHYPzyUYuE/cLoVpUtf1Bu9uI6G8NfPFi5vPbq3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHxYFCvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHxYFCvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C92C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763197793;
	bh=jncn3ovhjNpg8nR1m31RtJA5BsveIogKGJkMge4NXNg=;
	h=To:Subject:From:Date:From;
	b=IHxYFCvPR6N8wJeqJz9mJ7zZ+kQNmYNI2DJ0YCNGZRPUUoD3PEBzn2Icb5q44BaVE
	 hY7p+qeI9cTZLJ3o31cgmCKQbvMyT+bDK39Y3z0V2tBpBWP+fI8UoSR3PmrOsIwOFd
	 +54qVs0aDCojJ8/N5cAXINp4j3tOmpkA6Um3uETF5T80gaJSvXwco0cqP4hUXHrc1M
	 yONpf9MPF9B8jqhYvMZc2liy7+olTybgQA5ZaSj4l2PKmM2G4rFvpQiMHDW/F4wPqj
	 bkB3rSX3uLja1OlBmTNr6Vc08R1UK8NYB2NXNHKSJnTzhX1l72CilKwDpwf3V1Z3Jd
	 dVlxhASc0avvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A755ECEB2CB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319779367.23743.13803265254550708458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f386e20ab1c043bb4d63d5a9447859a30d6d702960cea8c3d2946abe91819780
Date: Sat, 15 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763197793
