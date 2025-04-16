Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39500204F90
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744811395; cv=none; b=pKtlk3bE2hOsheLB0qfULmgxYouGrb9ZfI/tfbX8w4M3Et2hsy9p/jvdUWErib1qqNmeMQg/HwSmqApKKC2eoCgoyLQfff0Q0R7XGp57yLirGtF3+NaveHHSjG3MXCLZYZPqGp9GhOUN8ySU53iidFbpbK7tluLYh1y8XykCzCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744811395; c=relaxed/simple;
	bh=mjMiF3sbTyOOP+KfMVgws+3OBC1yVvIz0tHPdZo6Gf0=;
	h=To:Subject:From:Message-Id:Date; b=SCiOyXktfLvmvL0ToDFkaHirzUCPH6TUT0egIdJ7w4O5aPSYSqHK8zyad+2ywv/TdPDXYlO2ihCR8bR4fc7N5Ypc0fxMAUQ4TN3wcuNoeGbIUyL0XAFr4fZEgGFsQE62g816os9yMFTDv7vJX39shRZPLL4931EGDPafjEBYNls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBOafDoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBOafDoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0490C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744811393;
	bh=mjMiF3sbTyOOP+KfMVgws+3OBC1yVvIz0tHPdZo6Gf0=;
	h=To:Subject:From:Date:From;
	b=gBOafDoCbur/wUWZRRDmb3fFbXlN7P1mATst/H4WWYtCekx5xALnZPKZHVzz2W1nW
	 0zrv6+H/JXrL5hJePWBHRrfC4jyZI5P9abxO8O5R86JuuOg8nCgQYANjEQPtLEe4oL
	 yx5nX5xV04RsXkMDZBUu0jbEMBYUZKEhQhmtBc3lRq6quWGr3hyfEYiVPwrPnLA7Ul
	 S9OxP8fsvX8x/J4uGs/3UV7vbHB8el0EuheEomKxqDboUNAU1s/P5ApywzeebRVcNd
	 KZku/byGGqQVCGpG6jABko+ny01QrPjH3a97SKuNbSd43a0nDeAcCeytjnAHQGRjEM
	 Ji23pLaC2HLtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B638C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481139362.7766.1557617403562378475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983fea2877698b2f40f7a01f8c96558d4a2cea199c33cde6c7232d8c2bebf57c
Date: Wed, 16 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744811393
