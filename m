Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B939B97B
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778662234; cv=none; b=IlWqvzDf5B52lCrgTYMUgw5dQA0etdBymh2cCLKMw0c3r/bXnahEeqTwEBQaqKC9ceyDg1yGHxUHkRjZbcV/Ct52axr2uUzcdHa+tHj390hrbFAzJVwZt0r2AY2NEhQGlu52JgwtC91ni64yjjruyxZq98Ms8qR2qkZLWAJnU0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778662234; c=relaxed/simple;
	bh=uzpU97SNPX+DiNJNPVzPomMXundtOQoOOHd3pU19C+Q=;
	h=To:Subject:From:Message-Id:Date; b=OA5FoBl5LI1bXQOKphF5T9ro3q7yVUEQgu3goo1RLA3/YoxBtvDAbbZevirfNi+vvbUy4Vy7YPz862p2oRoR9iLqZLJIyPe/atwqQOmDH80j8EGlKBiztb7iKwo9LOLijhmyAfFyIaridQvnMBxxFGuvmYeGvyapQcGSN12LwZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdYGhvmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdYGhvmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEDEC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778662233;
	bh=uzpU97SNPX+DiNJNPVzPomMXundtOQoOOHd3pU19C+Q=;
	h=To:Subject:From:Date:From;
	b=ZdYGhvmn0B3orgWwI3Hg2HOo+ldVRaOF81RNJJvfteEnkDNauWNhZMkJomasc74tA
	 PhgisingmvEzQdfX8yX4w3HxqQ3uhR4tUASezDfaP38xfGW9Xg2f9dngL9b2f6JEOK
	 tyTmti23+xr47Kxn167qp0v2CZVKLFP0tYMpn6t8hicrKZWEdtzC0uM3dou5VsTX08
	 taXz/lrWBoh6Gt7gMxXtHG8At9xnV4YUtyu+CWc+SSEVm6gd9msqZcfir2NUPUxU7c
	 eRaLt9LRR7N5Xbfp0R/8fiMQxTJ7hlglnunZHG93VWrUmTo9EbjheBMD+9LeC3r7aE
	 uytIok0N0xfwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB365CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866223369.1728.9399425513989276176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4295f38756be15c5fe394791dd13d8a3be17733d3065cf9dc3702f3539c4d5e9
Date: Wed, 13 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778662233
