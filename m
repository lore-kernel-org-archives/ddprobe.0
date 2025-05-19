Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301F5153BD9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747642795; cv=none; b=CRarP52DNUbxq9bAzd8fYkKHIQKAZ+rY46U9TI27F0WPqnAd/x3WhnDmuo62JXHNcc4mKrZSMmUdXWy7MBnY9cVGxLLgjHY+QHJ+ZWT8699poieM6GCFnewmoypjBoeqcIy7HoFEKFns5evmFtpZXnrEK7peNMHsBtnHTs9E5bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747642795; c=relaxed/simple;
	bh=ovgdVnqaRN9e410rbGKB3rA+uMq1WQxsBCTcU6l2SIw=;
	h=To:Subject:From:Message-Id:Date; b=lLFAktbwOHKiIDyNygJJ1ZZoq/s1eFsKmj2w9A4cxs69yESCcWuLH6uzyU+azwEmwVJB7NZ1Rv5OLx/UYJM6bmh+vUvP3wWS+9FRY8XgieaFS6QokQcxetVKGLfVIaUWuOHy/KLwRmxVNzjTkQK25ZREEWMD623Ds67ffurYhyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTYN3SOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTYN3SOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF48C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747642793;
	bh=ovgdVnqaRN9e410rbGKB3rA+uMq1WQxsBCTcU6l2SIw=;
	h=To:Subject:From:Date:From;
	b=sTYN3SOdipGFPuznbIS3uhxI+h5nRIRUaUTCToXIifI9rmLTxWyEotpNlzGAMYhJ5
	 J7I1SryaqtjBfggi/FGEzsImfAgZHy6BX8eEJoxYJwNdXppHWZfmu/LJ3aLMpYECGs
	 rDzxEWMl3ayOAufftNSwgyrt3rXGY8wnJawM8sFm8xZcF5sk+DPy5Gd4fU8Xu1wWeV
	 E29q2YEssROCuvbXVpS6KnTyFiiZ9HJOM7MkG92aY9M3gIk71D4r3yyEBFtaYvighW
	 afC2iOFBf5Alvff4PHuqgwOCRP3tEiIDkejw19iPE65zVMrBiUtK26JjT9X5FYlcGn
	 8cL4nlrNXVlWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE19C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764279357.21213.14648797370481221453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d7f418d3dcd23e67f3a4d877b1522b7c51024f8b9238864901f14b48c02e91
Date: Mon, 19 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747642793
