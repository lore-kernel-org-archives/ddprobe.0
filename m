Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9EA2E3716
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753155595; cv=none; b=OUGZmf2ieYKZXIxpy9WzO9VKVnMC9HjLrHxEuUtoK1YlrJqVXhE2OBkmjVW2ziwZ6wtqa8piWgTW4jNwjs6Rw4QVcZA00ymnOcT6ziXetyek4EswQjYyx5HPrismIW5gNDWGQKV2KabWhgMogNvx5LuY5Vrkn45Pi5cL7v9Q4F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753155595; c=relaxed/simple;
	bh=8bDkZRUjzXGbw9Rulm4I6lSUGy0dCTP0OKBmKA5GtKg=;
	h=To:Subject:From:Message-Id:Date; b=W40xS/3t8oec45zK4gvZmXBNf41pnBzJndvFFjn34BaxIHy7PO8+TrhlsY6hmX7UkLHBkhs9CQeIZIXi5f546SNe1ZSLWIXyxE1ZBuogpanBKS5/OyS94XLkqosXaehpypHisJ7t7P8jqCNbed3ScNBBeeEGV0HfiWYrjsPlI7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZB9MYew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZB9MYew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753155593;
	bh=8bDkZRUjzXGbw9Rulm4I6lSUGy0dCTP0OKBmKA5GtKg=;
	h=To:Subject:From:Date:From;
	b=jZB9MYewmgt0MP3QgAWUNefjmPHI3kuKCPGQtDaY6PFQPsYeV6b/5WHpSylV43KUf
	 NH8xqXXXBcBiUk66+XDcSNIFQkrnjb5pGemN+4i/l3yE4TZqcdimeZlgwRNXvaLPxo
	 yxcz3M2YiuJDSH8/rzXbMgpUQpCYCqZUoohBi5biPlReE3lkgTTYGZahLBu8pk3wIa
	 KwTGb1Y9DRRmomrvdRdZiKk9yTRAYPbsL8EEu1Qr4tXodvvmW2u3lh5CBTtq9egyYv
	 HcqfKP1Z5MCeJus8Evnf1RH7Z1CUz3t6/dOZClkJ1s0K50gj86nJ4IgkftMn6fitEp
	 2mlwopIltBDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D0C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315559359.8522.9689582526166780206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310226b416cb8a4b69e7658b47a2e8b96c35ceb488f0363e0cab1b85b82ddda2
Date: Tue, 22 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753155593
