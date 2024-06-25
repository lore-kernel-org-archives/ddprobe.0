Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D564C6E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719348203; cv=none; b=NDlO+W9X+Z+G1DGEY1upFKNty64JfDddIlyLNwMIX5AiPin8Hln+rNeKcFP0eFJXvXPPUKaaviqaPYlPe1u1l8XZu0DV9g8GnpFpKyBYZguHF8dp4A6sl6DEzCgpXZ78XfK0+yK15F5EwZRixvTZC9odOphVXL6AXNKayZ40wOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719348203; c=relaxed/simple;
	bh=ZkTbBCloJHcbtnPd1V3HiBa3Jw0Vsj2k7F4QjVI+sbQ=;
	h=To:Subject:From:Message-Id:Date; b=df58BXWZa9ntgPxZiX1bHrl+mvE2mB+T+8S5K/eAzsj0GwuJ04EHjhH50ydoDyA1Fzy46clupfTyM2X5yi1UmP0o5epG/nHn+lW3PIxkOBYf8uF/66IUytHizzOFzgq6f8zSY5wcRgoFpLe9HBLfmDknXKLmIgg4sXdfTAorg/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4q6mm6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4q6mm6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67F3C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719348202;
	bh=ZkTbBCloJHcbtnPd1V3HiBa3Jw0Vsj2k7F4QjVI+sbQ=;
	h=To:Subject:From:Date:From;
	b=L4q6mm6fmS0YH5BnlWKGWnwcNkiiuKZQ6x5SVU7pOnzqcd1PVdemZGpuZwhdoxfyk
	 QFVL4IuBWGJlDQ1PeFj7Qc7f7dcekNU9E3N3PSr+F7KC/88G7NqoMMl8fOIBKMrkBb
	 gtC6nnFbBua2q0sBD2yRHX4B9o7ecUaZe2K9WkXTHBUMGrIq7ufNtfBgz6r61QyA/K
	 xilmXWd7kT9N8W+G3TBW8GbJcLsUrpQCAQ04rfG3Sr7NSuAJrAbIsuo1Tax6J/cIFf
	 KZ+c2oklaKEOPYB7QXoGv1X7xfofcl/FvSmkBBwBDQhIH71pTgntt0yvD0GSAZ9Apo
	 DefIVu0xfjJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2712C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934820277.22166.1796193703814143671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2391f1f14668ee807df584350b9712580fbf2891c46bdcb69443547e42a9d15b
Date: Tue, 25 Jun 2024 20:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719348202
