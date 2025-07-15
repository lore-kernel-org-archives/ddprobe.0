Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A59157493
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752566394; cv=none; b=BhhTKuXXdN+5npYSidYnfRigG8bG6WwuJdqTCGkOtEyn9SG0lOpNIO7szNzzPlpfxjEIjT1DSikLx52vTN9htDnhX6udN9tVQdlWtwFF+iHCggnONF/cO+cf36PySbMIzbjypIFosNCpkvvRkMuov/p0U8AE+XN0cg3YF6KYlKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752566394; c=relaxed/simple;
	bh=EfQ+Asi6gSssGXvXXfe3hD/J7tEKxhfLYy6H9rCI8O0=;
	h=To:Subject:From:Message-Id:Date; b=qdVAiqBt5aWEGspOhdXeIh6Ql8kDnf20ycrgBQzuUebmHyOTYchGrGnCb9YmDMG1hFC63PoZm0XSgOJEYpcODbYgun7FkxKE8M6GCLaSqZzgKdq9ocH0S293XEgJMEjYDV90k+gWdxl2aLyWwrFOf2R6r70vf8ziqhzjdgjOnVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbKYrAYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbKYrAYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752566393;
	bh=EfQ+Asi6gSssGXvXXfe3hD/J7tEKxhfLYy6H9rCI8O0=;
	h=To:Subject:From:Date:From;
	b=fbKYrAYLbvfXTv1Roe3LzDqewkBTl+CVT627TEsx+CTnvpgI+qSknAdCiRhEyniir
	 hfkE8Mro1JKpkQrDDLsTnoq7sYTpt8KsceQEs0mlGVHaHBmutOpqjJq2u8FGhfDTBN
	 f7KDAmgsI2hL8wDr1wS716zTP+AtSB25MRk3fNVSR0xuRyrhezBCwOGf8YKnPZVV1U
	 Yw46iXO23V7nkMvdhKcTJhyME2k/2sMrNYk3dKtBKPgmT/qad1y+yZvDhhGOgSkSKE
	 yPXBQKDDIkpU0MBL6BZHkaVaB0ABNFvFPJ5cg8F0BjofEM+bR6LLwQmxlDScpdA9F/
	 I2sfMIaZgmE+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B8C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256639358.27973.169056061478381004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0a4009b71cd351a7720034df36f620dff4dcfb02665c6d8dce6e329c132daf
Date: Tue, 15 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752566393
