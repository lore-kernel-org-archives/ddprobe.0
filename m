Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC15266B40
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758857394; cv=none; b=N67y6h6eoKFl0+aPc5fqbtV+QqMY9aVlEtWft3K+eWI5VVefIRTbV/0rw9AODxTFrWBE5RvREqbRecWcq+RgnpkDD0oAg8+5mU7kVO6qq8Gg2bwau+a7OwFjVnksI2AnGlFlvi0HbZopnt7QFYyO1bwaMR3ehukgeiPNJskSAU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758857394; c=relaxed/simple;
	bh=7YN6Rnq8I+FFsicRajqjT19ketVZW/O1fLNChvUSKgA=;
	h=To:Subject:From:Message-Id:Date; b=WHiOI1gA3UaebcwRwBO4spGQw89XtafVHHpEJz5myuI1yL2U+/e78KlnuD39iEmXccgTkSQDoz2wBchb18hi3Zf21pZoqxShVYlQol4EbP6bqKp4czJj+WSL1wjuILuGSjVOhmIQaiAOHrNAbzGD8cKGYMlN8wVXdeonVqgA2qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilxYjdzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilxYjdzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E5C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758857393;
	bh=7YN6Rnq8I+FFsicRajqjT19ketVZW/O1fLNChvUSKgA=;
	h=To:Subject:From:Date:From;
	b=ilxYjdzc7S9PYVBzZko/46qUTtJF7oqQveFr7FjAiFmantglOoVWIRIfBfaGtsTt0
	 /3zwoAyins4m0s4ZXz70gc7TQXTx0AFQDmNKIJQfMBPDJIk9bgzstSQJX7SaL+OgK4
	 WBJv1cZtSJwcuYRVixR1wCu2rbbOK/LCFALfLvlCvxZtsVVtTTCcz/WqF79ycXTk35
	 nfJgeSQ0dHgkOXcV3189JB5/HX+i7/6oJbACgtFSuIYHEH/gMGbmwYWQ2hc97T6iIj
	 tr2d4hQRwLRm6r0MXlMCPOuCHCvDi3+s+6Wp0e183t1oqnL2bN/KShpL/aTfB2Yyj9
	 69gHO13CuzXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97640CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885739361.30888.4655849157763169279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e0147e6a45954bbb4fae87a0904f1f9aeb34e525451d8fc6ae6ede0806b18c
Date: Fri, 26 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758857393
