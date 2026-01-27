Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB44343216
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769508835; cv=none; b=ToL4wR6TACF6WInMlVlVueJT5cNdfMPerl/RBkDnUgnNIJYQJpWpcjUx+7yqPaar99DFLbWj2euYeIP7TVyEX0QOZXezSCG0+K/PJ+ryGzc4bT/jCXrtdSA9bD4DRDAdxMQVEtD1a5Adlck91TT5pCjlXdajVwmpDqyCVScLdlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769508835; c=relaxed/simple;
	bh=hfBH3QJVVkcmSf+aurfOB0epEnIa56PkqqSlccpVM6Y=;
	h=To:Subject:From:Message-Id:Date; b=Cqve5/bo1Zf3QawMPrtcYy+R6d3lcnCiRbmaOWgWn1JSgFJ7c11qyb/4DJOBjLqvFrfk1iKtbKOvJK1UPEddjj6Y3dt4y/Gwo3c164kN9jSfRaPGyejGSgNYKo38XLN1gN/Toc9+Ct/C8U7SkkslaoGN48QLeX/ZgUpJgLxbw3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9JKIJeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9JKIJeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAB3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769508833;
	bh=hfBH3QJVVkcmSf+aurfOB0epEnIa56PkqqSlccpVM6Y=;
	h=To:Subject:From:Date:From;
	b=s9JKIJeD5WqaqLAB4ZbZWK5/GiVhouar4IPAdEe3GtjhyMosrOlVZNiuKSTCmRVOG
	 8h1v7Haq/osJs8vS5xGabC4mNB28sghLqvQId2yO8eby9ktnbP26jsz/KJcEFALdaD
	 zN4uYsb5oC7qOL3dD18VV3/IqdXhHQwOGu7hteERQV6a7Shj/KuYFHJcGW2IgMeBc5
	 sdH9ihuG2x60sBwYvXV20Ke7ps6TJfhRjEnqRbhKEggfoXlyB/PwiH6+PmwRiE2twU
	 nIWYRUf4fAg+jldfR8pumgRZpDypm0l0uMfnXbK2aod2sNqJp4qYtQfjE4g7igQ8up
	 RlFT1VtVHeuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F191D2D8E4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950883364.19873.9079698999653974224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe52caa11cbccaa5d96fd855e5ce22a0be46ec9bcaa0dbf3a3f7efd769336cc
Date: Tue, 27 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769508833
