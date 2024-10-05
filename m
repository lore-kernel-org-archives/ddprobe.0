Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8D84D3E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728118554; cv=none; b=Gt4upsGCL2pwrfRBbz2r8rXMbC033TYXOBzxdy6IJ1a1nGgEdgiGikTJQWA/ES/ohqXFP8SEMO5qEKGrb7ZQlLq3CKdeIjn5vnv+HuVy+BpIK1yFBqwEPiDLFvyoRVG73dNliYz7k5DfKd/7d3bvfNLlXli+UsGW3Fp+PIK4+4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728118554; c=relaxed/simple;
	bh=7Z8ldJKJ35uAlYwV9V+V5HQArdham2o+R4YQGHuWmDs=;
	h=To:Subject:From:Message-Id:Date; b=bP863JRwgg3+LgERxyeUegt/8+RfY3foVGJymKK/4wq9BmpRmVt5IuQ4Zjw8yS7bgGhh4xOV2caUZE6NNqAY+pMDWFvbzPPEWuatccaTo5bUn/TnVojLaEGEfEXN8pTuntCllvDkQEjCkuoh1m1PzV73xvxRtdQM6IzfRv5+dAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjHN70Am; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjHN70Am"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F424C4CECC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728118553;
	bh=7Z8ldJKJ35uAlYwV9V+V5HQArdham2o+R4YQGHuWmDs=;
	h=To:Subject:From:Date:From;
	b=RjHN70Amq7fc1+of7GMkx1Ephllw20h8Poctv2ZwtHtIjdyPXSqGzUOr4bOVeQeaZ
	 OFTlRc+3asIkpztYv1h8Uuvt67mjfWqEhL8GOTfWRscjpqaDUwhPc8KP3hf1LQ1KGo
	 GspImmGYbEADtkrbI0VtwhDrE1LMxq39u2XfvF+pRoFotoBK6wcCvCv+1CK76IuD7U
	 B+KiEaeKowzSkZPuXeSYFBqIf+yFXLkycoM3rVGS+bJf3KQDv16yfnKC3+zzNFplRa
	 J903LP/c+gYwjtFpiVnhk3CA1LlgaeNoNwX1WiFbkDf9eqxVCes9cxCF1k+QLJKAm7
	 T1KjEeP5izKsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3DCF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811855357.6909.11488976102748756275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d58594a378c71b40e1b0fece15f07ef13fd56d6bf02f3b2a9c027dc075eca1
Date: Sat, 05 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728118553
