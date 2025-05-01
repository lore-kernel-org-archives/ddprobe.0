Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B404CA4E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746073194; cv=none; b=mpXbnwioICqdL/JS/s6YldFlDn5sN3qzmgE4noZvBUBHKPRIQf7+SWgmQbGkDm+jz7qYWUXN8bpkYf8XrpODKzgkGwThJJ8sKN8lzK/a16OJ8Gp1wv47pSxEHm8G0CwjGpEgYj8NQId4orQ2Tpryd6O6Idvn0zpg73+RySLSjEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746073194; c=relaxed/simple;
	bh=VotEoNU6mQosfBvQFOS0Yye8N/1agp/YjxgZNq0CYcs=;
	h=To:Subject:From:Message-Id:Date; b=FPrFxOTgEwdXvnLPSTqDm9TF4aPJHq5o+empWtXiaLIPYCaYPdLA2H8lXufnS+5Fu1bHvpeJiGcxVY+nt/yCA68Cig5f2r60PTT3h6qdwFgyJLzsuvE6757ZqWYzmI2Eax1EwwIjh+s4Cu+tZ9HiDznuub0T/S9AVJxX61qCuNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC0EAwwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC0EAwwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC987C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746073193;
	bh=VotEoNU6mQosfBvQFOS0Yye8N/1agp/YjxgZNq0CYcs=;
	h=To:Subject:From:Date:From;
	b=DC0EAwwSXMLNoqt2x48YXPjveuuwx+QemYEG5Fl6s5B4niOWlbBTbiD65V8f/MZ6/
	 4L4hsA6UKjr8aD97Tlu992ht7X4zKRvLAyk4+ILiJywWpS+05BkdPVKREXmnzI9VMw
	 w4DThwjU3IlI3HF0KPPN8t/UtTK+txHaypZxNOoDYqoIu4LF5jpLPcyZIlnOc00r9t
	 jndMyqywqKkdhHyIiPqRnj4scfKHwnccrzGnB1B+twqh8qfnN6XE3UXSwojWRAhEGg
	 oZ88V4qKfwOqUexM0JWVYNMPUj9txwE7U7Tirk/8LhzbNqBdIActJgYYzQy7kZWm4u
	 tAlVomng0ayXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E27C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607319358.22573.70196686148816751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467230968e0189297e70b773b6834b0499009e5fd45bda643164ebcd210200bb
Date: Thu, 01 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746073193
