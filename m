Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613A12AE8B
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739584734; cv=none; b=rnajauGt3ZRlfCEPZiScegt/9qfzCbs/6e7wNiZq1XSn7JawHT41jZf0D34P0EazEzukm//WWD0MVD08wUip0JYRFSZU0SOtgFRJ+mGCU1kRBEG5PVqjRoq5SaDt/VKC1nIdF4AyqvAD3vqredFFD0tZJdZ3fNLccelR1+Nbqig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739584734; c=relaxed/simple;
	bh=mXdovQV1VvGPHuRql0osEhnqGCvZ2kSCY/IXxhEOjV8=;
	h=To:Subject:From:Message-Id:Date; b=uwI0R6HqfZZTjfyQEeb5CBJbwNKqf9ELz1lwkF8Z4Wfj/AaoZjW0/GrDNhe/PFXIfUzHMrJ82cnKaLXdKxy/yo15DwO9hrdKSawiRV9g+CUsppxTv9qR9mXK2oPI/GvXZQbjc0Fg7t6xmBZs6XyT5lg38ZwD+1vEVFQDHStvvnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfx9Ro8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfx9Ro8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C939AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739584733;
	bh=mXdovQV1VvGPHuRql0osEhnqGCvZ2kSCY/IXxhEOjV8=;
	h=To:Subject:From:Date:From;
	b=Cfx9Ro8tY4n+GAPSxHvlYCCDlH58iOz343uYRUtokhXCZqLTv8JLn7w/kSzQn2MKE
	 ytvIufg5Got5UzxZp2SXC8lY4pyS3s8EdSodjiJwprW4LykFfe0J0I3OgDBarJfcLI
	 LIwJKTMVDs7bxRCNewteNlJEONQB3ICg6La0/NCfiOYoL8ouOCucXsVa660ru77fEt
	 A6KJu2w6JVjBygkA/TDFEP6CpNGp2WSoCeKXWlBKN5dpS4VPtMMIAOb8TFu1HPXwHL
	 e5jgvKqmx0H2M0YH5GFMDfI+7eWtOjcfQH6KmiD4+QDkaf4k/OqmqBW7M7goz3j9rh
	 5qvWUnfd0PcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86CC02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958473366.18806.6586786597971880306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3375f0420ab3d9e91ba44c93e53972b62553d2f37d1aecc3488cb2f1db57cab5
Date: Sat, 15 Feb 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739584733
