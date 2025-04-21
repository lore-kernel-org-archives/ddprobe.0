Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BC913D53B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745254194; cv=none; b=ksUn/GwhJ8butyW/25GIILfwRT4CgHHIRaQdhfrSM8Z9Li9XRKDYlVAk1W/DNcXF92BCSi9la2rERhsfbQ65+gMqsx0gwuBGtqW0mmdAvMa+3brFPNKmxSoZQbluVghSGhZtKqk7ZE08orZQKupquzm+ZlgaW14XquL9EfHLHvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745254194; c=relaxed/simple;
	bh=AJl6jN3LoAKl6hYQbIbc8dcNWxUtU/jA8eKcsY30kQE=;
	h=To:Subject:From:Message-Id:Date; b=ANHpGsEVvjqiaeWRrFhdQf62ub7UVcEh9dbFI+NwwSMXT08TBFqVkDAUXBFiHbfFNce5+MCB/rE9CNBweb1LQ5bRQK9wHVzUs6+GwWYdDjmnjKaFdQEwdh51Giem+VRRAGm+sA3zVdL+Q/VUS6c1krMt1Rag4/9g8tUXMZpu9no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcHX6Bzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcHX6Bzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745254193;
	bh=AJl6jN3LoAKl6hYQbIbc8dcNWxUtU/jA8eKcsY30kQE=;
	h=To:Subject:From:Date:From;
	b=HcHX6BznbfzP66Rbkf9J3ugWWuyceQDIm3jXjqWU9giUVQ1oZ73Ij6I6sbj6X4hPb
	 S7SFrnnU8wagbiDS6J2Ll377ClVNEGXVuWm+DJ5KDPcgand43+uTxH25zmdZielFO2
	 CuunTDcQzww8EyYdgKLJj3zSTetBibL/zbRupRuI9EAJroMAzU4aEZZ4XfQTLAcoNN
	 seNCrQAk9j0wRT9NbrAQkOg5PzQCZzs8wUBOBiWdLtx5/OqQq5Vouunx6iXFyQehQ6
	 s/QwqwQNPNQecFoi4GNPGqp+DW6BhF2pd1dqghB2wL428hYNzp26ixdu9w1FufmnmE
	 GgS0VhRGARZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91933C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525419358.5561.10726618454063024797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54ffac66403155d5c3fa6b469f496df7f4836f0b93e9d0dda1193550c183c6b
Date: Mon, 21 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745254193
