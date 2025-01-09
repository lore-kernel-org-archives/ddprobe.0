Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2243C195
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736414754; cv=none; b=EFNn67bvHiEcth4xRap0jG+aeyoyEiTO/ReOd4xBiGUOrcNmgMCd7JgYZ+fAL1ofzvzi+I1VtGRMPMtKCCzmimSdLaF7MDPnkZMtXwiN7+HF9H5cgfNkOSU5f7XguQsVuwWe0S8jvokt5jPSyjk5TgyBq/pGwn/+Ggtux2nOf2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736414754; c=relaxed/simple;
	bh=NwPX5lWkguReSSGxjdW6u0wI8STVKBD11Et2zCg6kUA=;
	h=To:Subject:From:Message-Id:Date; b=J4sKSb1Vuf55xG9uI4dU7wa1tCExANMzX3tyHYvmLNleKCErF2rWl2Ux/E43n8WB3BC8jXQtGzI+UTA1fJl7eytFimQxJ6zGgVzT4Uw8BNa/Y+Gy0yvpb62Hu+6tYUS7ZY1DM8yZh0dNkw4KsuBJw332OBfIM5d1znZR0+MsWE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6op5Ixp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6op5Ixp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EEBC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736414753;
	bh=NwPX5lWkguReSSGxjdW6u0wI8STVKBD11Et2zCg6kUA=;
	h=To:Subject:From:Date:From;
	b=K6op5IxptFkpdBP/gkX0khAUPErTC42Pt/F9V+aNC4F8cV2fKa6L/NkTtd4+Bn8PZ
	 1poHQOqQdS/eyPzZB6Ir1hCgIlyzqSf0qJcFFGXCzlQ7EUn+lIqykkoqWbaEDbc+ZB
	 acevkNIfvrkR2G9HqDITkImhnA5tS6JJEP0hJ5lkBvJfaDIjHstgFfajP3bw9GTIch
	 R59fsaVhZEygHAsE0anOtOPy45NkwthiEU3AwPaXgNMp8zIwnr4GdxXGvePLlrcXNP
	 1zt+mM3MyOF0ntV3XEZfxuzh34z11l/q6mMZkIUOSC1zJT1GUxScTI9rt5GeYPOAmo
	 Io5nBPgAO5MAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB47E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641475363.24172.16406061238946502944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46530e36ccb3ddd2e70ec78e7c2e9bdbd71afd11d09d80ae87820f6cb095c02
Date: Thu, 09 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736414753
