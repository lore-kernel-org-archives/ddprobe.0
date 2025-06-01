Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FBC18E1A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748812794; cv=none; b=Ez6itY8xxa9nvtSZBQwzDZzpX4c73bJyYjfYuZsZ2fxW58baI87DVn47+OmfvvfKzbBVL22TmxKOLNykhWcpfLZSPSS0hbOB9ufsBD+YwpMnCpUSN3DPEXPK859JaSx76DPa2fzksJp1+ZLCI07SkplhkdSv0mG6OnS0agiIi/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748812794; c=relaxed/simple;
	bh=ufFjtDWcudDJgvRTaaCAns5d1hu44MYqu96jdkiXo4k=;
	h=To:Subject:From:Message-Id:Date; b=AdqvzVa+xegBW+GkPRxFEx+C1QjYeBD51qpK8sp99RWvoh5LLoDbTQVRQvCyWSr8dqMQqSuQpeGnjW7C+0Z5rLzuRmWVjd6wgwn16fEPpXpD4L/dbR6YgT8Si5TzFj14B4ByLhviPeubDBmsxpx6mEyi38jsd656Lz0acF9KRQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saBuamxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saBuamxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E13C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748812793;
	bh=ufFjtDWcudDJgvRTaaCAns5d1hu44MYqu96jdkiXo4k=;
	h=To:Subject:From:Date:From;
	b=saBuamxjRmTy8EpHPlUmDM0/K0vyFbC3NIdYNMBO46m9dpKM+krsuLUHFo1nYshfn
	 hUFs2I5J3c2mEZfurkPjf4iVGHVO9QbHq719XtkvrXutuGIkRUMCEuyU2KXOv3R6i8
	 NY5w17e5yId8QxteYfa3XIIp88LBId9MA/0frzVrre0wxEwfbfpDjCbSvw063NEc2N
	 o+fNBO+XzNt1sfUFQbIZk0LAcKq+Lh64lwfOj5FDr8YkmCHC0hZoCSai24elWhqbpX
	 FezrpvWQdtvw1fBRdL6PPTRhXyg9QcoJTCQcnxIwKycSfDx80wSlux1QwdtbRt1tLu
	 YL/hVeRBaZbdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F5C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881279357.10830.12099154615177042327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7a6736a8b86040f80c81e31c358ac37eaa98a54d8fd4c420f13252066ce751
Date: Sun, 01 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748812793
