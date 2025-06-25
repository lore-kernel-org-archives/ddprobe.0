Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333A727FD74
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750866595; cv=none; b=R7na1CNVeLFWmxWYQWoEdavKwRgxG29D220F5IDo7x5bYRE4linRDquiVklsUru24zjmDKTO9I37CitMM6bYUNQ9SF5r34WJ31BennfzI39A4dveY8c6PV1VuQ+pWOnsIaUc9dijuCNRtxKSagWeCYDmLCuopSmp/bknCII6f28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750866595; c=relaxed/simple;
	bh=3XYXcvi5ptuZYICyqd4od3Vc6UMNxADpKhD1S1A3Z3U=;
	h=To:Subject:From:Message-Id:Date; b=N0jagYqGQUh/skw/ZiHfIwasAwxWg9epTSt8Trq5mM4yBxngCy5W0DonR+gOszpb8YGXEihc1aP/suA2poUnegBZ2jZxXIRB9h8434/vd220HdW7uXQsKwKq+JcDE92Hm4/KWGD1DCBW5FiYLsauxghdKzm0Wa32wzNiFdo9P3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUL8PQMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUL8PQMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2006C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750866593;
	bh=3XYXcvi5ptuZYICyqd4od3Vc6UMNxADpKhD1S1A3Z3U=;
	h=To:Subject:From:Date:From;
	b=mUL8PQMK3QeU7Ikydf3Rd9hdAgVtVHsk8zfFsLBltI5a7Q/vg7ixuw3fL6Qaj1mXD
	 aPYz4uffQJykD4rLwnam44nwaSduLSaDU+N1oT3Z9znW+a4eZFhWMdK5aNc/U6TQw1
	 r75Mcz0qMlIeYKpMCOdbZIZrQVIn+ws/W+3PA4q+JkIcS8X6cYaSrFxzzxiXdfxACd
	 n7EPE6oCbfdizqyjNcYBcO7gunOJ+BqJ29decJsX0MKzM0WA84dbHT6VXxK+7bm1Nz
	 QKWa7XCyeEsED9gaeWN9yrYYPOZyCHHYzxhPX7AILNNNssXvSUIP1Dufkdc9ISKzZU
	 SDb2KvRm8lByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F160C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086659357.2388.14755468904410946197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff5da49b704744f6f750592edac51edbb86888a376cef048569b1f26abb6d69
Date: Wed, 25 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750866593
