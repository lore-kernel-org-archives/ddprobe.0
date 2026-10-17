Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F547CC8C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792249234; cv=none; b=fzkczYxhX3/WoDRByczDdp5tUQTnibrml7SwcYSiEcWrWQ+yrR1I1phaATBQstdwCAJ/iNv9sMWPa84FaRPbF2AJGqWeI1MBO9Qs3COZZbl55wG3631YiwIU2csalEBCt98xhDiyUBxeL38Reba3S1NbsKitmuopGNcYF821XFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792249234; c=relaxed/simple;
	bh=EfJAyhFGxhc6Q1FqUFlCKcsNH0BqfRlWY60Gyh5Mcdo=;
	h=To:Subject:From:Message-Id:Date; b=HtZFYui85fgYZTX790gQwVasLDIhlYXxFkk4F2Z9bPsoaM2qLzrSIJ9xWY3vjRpYF4OaW7FG0gXFw8fqPvVH2qyf9ocY3Bhgemnl+AlWtgHfGk3guZDi6Y+BGNTg5Yi2SIhkbtWYv2MakbJZr29u0+//Um0qOtbWW7RaXjRR2uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCjZH27e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCjZH27e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D81C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792249233;
	bh=EfJAyhFGxhc6Q1FqUFlCKcsNH0BqfRlWY60Gyh5Mcdo=;
	h=To:Subject:From:Date:From;
	b=CCjZH27e30H3cay78Ar9s0ItcT/6elVbFjJZCLfMJRI8hQgaUvVJRtofOFCu9iKQs
	 cC3JiEOhs3l8N3DdpdPnQfjNKRTeZ+egPZvkinYpYiH3jh0DoYWR7v4jT+CKbvpP8K
	 giKXC74i6lZajB6ExgyhjredrfKar10A/R/8TOxY5VJYNN6WG/eaDJkuqEWDITlPgF
	 CIDy8sdCfLEig5DkIUjicSVm5Uhrhqq/WcpMXPUaq+3hp4EbQDjFS5Db+xd6zWaCcW
	 c84K3miRaxAP/JBwbf9Vh7/H7jBgIFdZS4GAQ6m+OfHaBQwAUjqEYd4Q0nDDDvkAua
	 4MGOx4xB2FVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4039CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224923371.342.7747256185056884853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02039daf4f6596fbeef12d5f320af6b64e23da50c4f6427b6c959047f496b014
Date: Sat, 17 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792249233
