Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3360A271A7C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748352595; cv=none; b=LJyxj7YXPVSKB5DuAMbaAPDL5O8n3WN/vjuHqN/bdGNQvQOWM/0YH9bo62Fy66ASpuhPl4CgAAjWGOJvWUQVJeWDGRfiCL8e0fMmwpWmtbooqLHrQi6qZRXgaRMrEjh+/DbStEoq1nuJku0FIwnZ4EY+1DdokxjljUeqChfzbp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748352595; c=relaxed/simple;
	bh=k4g2h6EROnzLyF2gyb5PH26RL9tSwrrVACouH0e1FZc=;
	h=To:Subject:From:Message-Id:Date; b=KG6sYxDZo87BMwPGswoyXj32etuHyW2tv+fDe1WFvBS9b8u/7AXE4lnNVeb+gY/jCKrjSScra9EjrNLkGniagGmdXr6rR3ayPYVmIbqJwVsXWPQOkKnKnmTjHlt8f++/qeNmbRFTOsAGzTepd0yVVs70T44GgcxCbkC9Ss7n1SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpOLfA/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpOLfA/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D46C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748352593;
	bh=k4g2h6EROnzLyF2gyb5PH26RL9tSwrrVACouH0e1FZc=;
	h=To:Subject:From:Date:From;
	b=lpOLfA/WcYV8ouua+3Vq9yoweMiGKTbSnL4f0ntcTYQoeDRS99OL+QbbmDx7Tt8uK
	 /Tth/9BAQRQV12JgbRGhuYKObXkI+bzFpEDs/wy+pJU4UvF4csi1glsvqH2YcMeZ4j
	 rT+axQ8zSAfq8NA4ghRbOVzt071u8gPzGwtEkcGts6yz3uHq2ILrBLmC7bVy05Aj/Y
	 d+d8gpEsiNtXRlTTEtj4vkLY6G7GRXHBMyDhUPuZOEclL7URwvSceEV84iZ2+D6Lz2
	 NhFIskrfquuqmLngUnw6h1MjK9v+ZRnvZvEEBFXaU4sJ0tj4YdNV62PPjcxbO7ya2G
	 4I09l893JfqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F343C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835259357.16033.2542900215340901200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c731e0d4306267d790e50860448052180a11a7386cce11e0e69c003d5cc7dc13
Date: Tue, 27 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748352593
