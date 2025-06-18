Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E8E2E8E06
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750259394; cv=none; b=sPli1lnJgCWVevDyx2nhBdWBq4Dm9Y0+j5lyq//NZPZerYgRYJ9eU2+x8STBhUtbFrujNoSWXfYyx7cDFSgIFZH3yshtDF2Nx8sgGMu4ituXdW+JfFwCUJ1rT1ufazk1bwZLGPhED1VRDYIE+838fxAt+mAwP01SUOwLodtxj1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750259394; c=relaxed/simple;
	bh=9z3VgPEGvvh3xUcpfyWLKLksy5katrVkl8RpQsKqT8k=;
	h=To:Subject:From:Message-Id:Date; b=ORGfR2JvaucPycWy7C7+JdmkHL7Df7NzqD9kvv3A9oj+SprsRqqugtRdVA16m2MXmuwMiqYunP6Y4LeAscOfd/HjSNYr7zMq5o/4hh0bWADZVYKMUp2JYPrMrppoXQjNwvgoyPWMmEYrIqzG0Lvib4cPp1lmTIJ2HXbMwm4+rqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYrpZA6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYrpZA6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30CFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750259393;
	bh=9z3VgPEGvvh3xUcpfyWLKLksy5katrVkl8RpQsKqT8k=;
	h=To:Subject:From:Date:From;
	b=KYrpZA6ANmcsRVPRdVF7khfx0hqSUXeHqeFH4USpvJ9wtJRUQYnSD17EWE0hR0Zwy
	 xNw6q23x5hW8m/4scubju/bjd9ZUicJwO+gdNMkSHhobb61NwhLCxnh/JYA2JYytPc
	 P33c7Xeguw5U6/foVluoZg1tj+Mt8JAMFg1YedqFX2nZLyCSiVFoW4gm6mLVOlO95N
	 Jfz0mDbXWJ1oeafMOiPpi02e2y1YYIB3752wBv5zh2KVihodU4ukz/XSPwl8AYpsPF
	 FxWbxIs+3mbqX2ERlys1CVAZwBA7ba7hr0ORTFP/8uwsZg+fRigU9hHVDP+vb1l4WO
	 sZcZlqfQF7CQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90246C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025939358.1927.3687764367773632362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc500e18473805ed48f4a2530b62fcc67be266c04941c421e18a709c39579f7e
Date: Wed, 18 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750259393
