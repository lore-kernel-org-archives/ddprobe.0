Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50220E56A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751246994; cv=none; b=GJdXqFE+zpQ0IZ4kXGLkxywAtLK2owNKhGxoRmkFh4t+TAV1A5fErOfPTJW079YReRMpo3E9u3/vcrCMN+oWLyA0J7AkgpUcfMyTtTUtkvDZMTnqNPgEKSwzh6mIAiJFilN7Z/AOkPNiz03QfMzFn1RY76IfUwxx2gFWcandD88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751246994; c=relaxed/simple;
	bh=AkIBBbHOchW0RnsfEoi+4V5U1aF28AEk7iVwAR09ehM=;
	h=To:Subject:From:Message-Id:Date; b=VF7PT1DQ3l9voBiyyinKY8SEJKzHLm90Ur8nZtNvgZrMoCrUbzaiLOhUqGB48mmU2/ccYBXsrXAttOPppkKH+WDlCJfgjqIhnWfb4sLkO8c69+jS2ZbzDs+t/xZ9UfAFLjxNrmBoOWZCph8+R20iVfYUv9ITiiHUypQ0adqmcRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW/1Ij1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW/1Ij1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3944C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751246993;
	bh=AkIBBbHOchW0RnsfEoi+4V5U1aF28AEk7iVwAR09ehM=;
	h=To:Subject:From:Date:From;
	b=sW/1Ij1a86s2scrfnfJne//H48vyJU6lYGMnmztMz9GeKG98PiMczOr8ooVe7EN2a
	 2xAcInoq1OaTsNDqjLakJoHbogOBTQTBubw0xwlmn854cRZWCiHyTCot0jQIZMUYjV
	 +pbV5eYVOl5MRJgUzS0yDf6V7jyEZna4KuAwvJP1ZtPKvY1J/2BccaTrwbv6mkezn4
	 RyB5yyhsgSdOrnJjgnS6QTv8MGrmqvjaslOWAdcLGfLHcNqUQ/1dA0hMOJbuIhS422
	 /STlb3SOddLVwxOcPJAmfyRceNRhHhU5nZmlLwsm8gZu+Zi5hyEkQ93Pu68+0GXOPf
	 ZqPDyb6Ly80kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91382C83026
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124699357.751.15248194676674777834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdac87383aa6a32eea77347ca3ec0dedf94a979441d232767f7693b1188b33ec
Date: Mon, 30 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751246993
