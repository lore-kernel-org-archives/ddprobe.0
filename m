Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3311C4C80
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746070794; cv=none; b=OxQhPZNUMAhfV64e8J8Nd4qv9+XQoQb1FjQRY9DBqIW/jKDgj4UZPTySBHQYL4/jkq8JIKBx6Px0f6sP4GcBHShVNKmBZnF1dId+fRSBWqkUjBQHzvQ/GMGbCbPhA3p4oedYgo0Zf6Ch4yNqzeN784aBj6OCuN2F4SNBSiXfPcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746070794; c=relaxed/simple;
	bh=7QR5d32pUxO+RFTzmbfXTXXSyQBHZHIR5HAnvootUzs=;
	h=To:Subject:From:Message-Id:Date; b=rvqazK79GriSby9MBQDV+FWvl30ISPOnTevJBte4FSJ3kmomwRAtxU5qbK6N0yO4cL+vVYFojEM+qYcbjUrPPjOP2ubURO/04FDX+Ewtg58j/jexXCtcI8HiTOY67D3DJIjQftXmGPRTBQo5Zfa4GoCYiiuPGk72t8Zg78M5K+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGvHg5em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGvHg5em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FABC4CEEA
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746070793;
	bh=7QR5d32pUxO+RFTzmbfXTXXSyQBHZHIR5HAnvootUzs=;
	h=To:Subject:From:Date:From;
	b=FGvHg5em2MyoLDuYvE7ijeHuiqOMNBcYM++BnUIUsMvgh/LN1LHWyInMz0yd9Hc3g
	 JG3WVe2unKHXkQY6IGaP1Rrr1/5H0ZbgWcN8EFZG5CwvXTereNVoAHBolih2mY5kHF
	 /+T7rsKsOYnrmXi6mUJveuiqDiNCcAKnlkZFkwfVLqsF61XtF1uqC6pYQeBloLCKcS
	 xm4FTJxPc5wgR2Nx/VgjpONG/lz/oQmDLF6YykXSgQ8/jytE2EHqM7VHWVcI73YYJO
	 rLsK7ma5RqjmqxGU4Iq2xb0TdvcQS3r5rasaSnJO44pfsBNhBg7gt23mOuRPpLJ9yv
	 Ef0RJ+Jv06Whw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AEC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607079357.8376.3839954325323575739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae1fa202524acb9bd9c75a154c5eb076bfaedd7114aee8280a1983c4161f8ab
Date: Thu, 01 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746070793
