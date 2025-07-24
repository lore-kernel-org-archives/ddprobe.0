Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014872600
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753336794; cv=none; b=jO3B2iuFlF3tYKQM+BdQJluuGxHod6u+sfLUdHv4WX/EBf+0UbjFRTE7Vuu5kIzV7xYGuCsPIw9t+2H0boOAeapTn1TithlzMxe5RA7QtoYQiLBo7/XsIMwCLSgQ5JD/Lhk2dmMrJOnBTUQOI/WeI3tTWk8TNvGdTexwR/UO5EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753336794; c=relaxed/simple;
	bh=hgG1c46FEqEekvCNExI77V0uJwzngs8xBaDDoZ8BmPE=;
	h=To:Subject:From:Message-Id:Date; b=PlmEGr9n4HU5pYk1Jzg3pmu3aHPyPI+OX66yuUUJrhoWqCHS7jnucSDrhlqIwbDKF443pkLs7bCEt+ArxJLRC7LM82alhZCw0HKedgg54eHT0OvqejiGoF3D3T9RJ54Jquj+vcJfYzPukC34GpXaCfh95OmR75/Z/QY3AAbTUkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtVUu7mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtVUu7mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F603C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753336793;
	bh=hgG1c46FEqEekvCNExI77V0uJwzngs8xBaDDoZ8BmPE=;
	h=To:Subject:From:Date:From;
	b=FtVUu7mnLejW2hfB7u9UwU53eHPcnBjObKo+Mq9USeQRJjAzIdFSnMAmXbWOn2dPN
	 o7fQwSRPnTuNVLog4+SeUV1+SKNZblXpNoMMzubi6jklOiTkqm6L6X/Y+eAkHlOg8E
	 lf2y29rtpRV2ft+SkCUMHuARlQrQoIXbLHvzO9pTzsJNKYCW4ZFyDIC2ycltnxfdlu
	 N2pZJdE4NTgZzAwybj7WJx/nNSCtpm+cbZWvwW4JKj755JXB9YhMki/P0Mmi0VBIQd
	 vpcd4Xz3lOOmEslI4udSxQmep6Fr5/50v2tNAPkg1X0VmOHtzGecoogrngUfWtczR9
	 b4Jf9ExXR9JFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E913C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333679357.3752.14127959965743032836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5af190e61e65ac006aac8cd230f80acbe0b259cfe4ffefefaa1ca7d4aa07514
Date: Thu, 24 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753336793
