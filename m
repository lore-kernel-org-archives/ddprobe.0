Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F129CE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760491194; cv=none; b=Ejh3JDqNw5UhBa/XuEy3rG5nOZ6/n/1aaDEXm7lTTZ6gCPvJC601eo8zLbssqHkmYQGuX6l19vOFXdmDjszx7BsR+T3fxXQUABVico7RYc0L8+8OG7o2+72/CZ8ekMYwo8BD+GculCBIyaV1uTLQXa0zTfLV6ACWtjGzODkjSmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760491194; c=relaxed/simple;
	bh=Nrkb9jR4ZsbVGnx+Y+vOyJ6OHLb4IDmZPNBIFx+VW94=;
	h=To:Subject:From:Message-Id:Date; b=f3WxHY1mMahP8j0Vm92KqlH9v5JKNyuM3HhsfbA1Sp6ML7MISiUqWQAMtGCdswwIggzR47o9FTK+lAH9Du7Y7k2XWhybhkJvyFMCe9+C/jbGe8WImbJFIiwASaEp+GHv88tiB8meCOC09yzq0aG0IokZAna6qBNefU4LxCM4DNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSLgULHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSLgULHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A72C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760491193;
	bh=Nrkb9jR4ZsbVGnx+Y+vOyJ6OHLb4IDmZPNBIFx+VW94=;
	h=To:Subject:From:Date:From;
	b=bSLgULHiNXVGTn6VljMCpqmcxdcSftvRFX2OUWL5KhsdMwfvaZw1nmqjFHhldCfka
	 JyoUjToiUP/we/Y0kurc0JwTuM/W1yo3gpHYRRDGWLVIWC6JZc4xqKwc6Xoe6BIWZ5
	 d32bnSY8/XWe1fz4SWriowi+rrYRgPsSTLmQrJAdqvUAM55x7tgbdvXhKNzw0lUCL3
	 Ag3WZ7HsQf6jHaCdwPEvCww9jXXkfk2VhTzA0n2eZmOW/LoBQnux24s4yNxeE07tpg
	 VT8VvJtUavrHFXmiVK9jqkWgEfkotpUtONdCr5dcVnvGAfpTC7ncAGVarN20e7n6FR
	 SMZSZElUB8mzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF76CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049119358.2908.6567394304052064019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6079f9bc490db8eec0814120fc75ee23d20f299e44ba8415cd65ec1a07ee68c1
Date: Wed, 15 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760491193
