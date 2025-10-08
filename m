Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321502BE7A3
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759898394; cv=none; b=dPzxcYrFYCFW9VZKh5k1m5n03qsQaR6M5J8qwCo32hMNJYSG2NmgkVuqNnRV+A7aqojH6qR2veXa4695KFLl+KH5optk2+Fwh0P7Kt/eJbRe8lpB153+F0ePqvF4U+XmCKIYprT4bei24RdtTF2+48yxjFDSo6GEoJBhrrt1810=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759898394; c=relaxed/simple;
	bh=BcH84VoxqQk72Grpjz3hRaeB/Zz9UISEuiNmUswCMms=;
	h=To:Subject:From:Message-Id:Date; b=EyDOGEAzb/qP0eQvx3Gs0RElAP+PgxbhlKp0PzXyPnSsfBaY3t7Fy/IWQoJ+MmxjNokq4rI1goenPRZy4pEaqmUn4KWbCg+OHyxH5C5YO+h2LMoKt6fclDBeBM8yFhNpluQDRNEQ06IaIy2QOeG3qGI8ZjQaQZHtFvWEaZBF8UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3LTAVK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3LTAVK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFBAC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759898393;
	bh=BcH84VoxqQk72Grpjz3hRaeB/Zz9UISEuiNmUswCMms=;
	h=To:Subject:From:Date:From;
	b=d3LTAVK//Fx/sbbna6c4vsBBcilIDapBNgsC4Y1RBVfnG2eh6eQqY8pohw/P2y9BE
	 /KPHxz+fLvvSuELXWJAvA3B2rikMPk0xlkOEpVdjLMw6bmyfGgRdWqK0P+5n798xZ6
	 V/+T4Hs3tmAQAMMEFjLTvru8Eam6h1WBKLXb8apR0zOJhUMghxOxXOGLq89D6Z+MUd
	 PtWKsu5Dw2j8k5qwFgjjOIMlyDyEmMK1X3HUn5lypTnghRnP7aL5YJx6+wK1JXmD/R
	 YRFEBGkenv7SFViXJWqOAMFOz3p3eZFTP5XlOx3LcN4nZl+IjbXOnKoUVYLD8Y9Qo/
	 8rgehKIsJjnXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB0CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989839358.1267.15222203951045444279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decff08198dcf3924e562582dc031d8f6a96e3ae4100307c146470613f3d9120
Date: Wed, 08 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759898393
