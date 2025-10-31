Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8BC3112DC
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761949194; cv=none; b=ctQW2QxJ+bzkx7CAURF1d3SCvA+osfc971FJ6soG6kKmFQgo/x8xeMpyfWtEGKkg9u647UI1T17Mzo3SOnzYDL6MFuI8qu8fe3qKcwZUV1sJ5SHN83TN3Px7AYEIavba2Kai+KX7JQ3YidlWtciH3qxb7/dHt2n7huEskPLWGq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761949194; c=relaxed/simple;
	bh=GQXHOaGGbp399i37xMqef8YZb9glQC7gVxoK+EnXU/Y=;
	h=To:Subject:From:Message-Id:Date; b=qLuhYI7SBYvctzxpU7f1vRLLeCbl+aMS+Azl3NuOg6NSIfaIgzxuADw8IkwSHryKTBitKcHJjGadxyBdu7UZhEHm3GQg55aUlpoYzMrfbfPvDn8SuanCad/d9KcN/2sVms1z5OMkswqOPnzuYT0y8i1afbD345IxuNkXtPhsc7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F08CSF+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F08CSF+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7334C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761949193;
	bh=GQXHOaGGbp399i37xMqef8YZb9glQC7gVxoK+EnXU/Y=;
	h=To:Subject:From:Date:From;
	b=F08CSF+2HYOcEyDU2+QYK7vAvDJGnq/wmoX+oMZhDXA6nmOfz956j4tCcD1J1U82L
	 gSqiENjLgQyqZflyPfAp3NyqD71glT/6XODYhKx3EpcuLK1ZcEd1jRisUB/LliCiR0
	 LRctZyDS0rY3QRpHFPEXjEh+3n+RaB9uejFI3wTI02Vcr+18cLKhnvihL8fny5sxpL
	 crSXgAwr8ZphHrg2WlYRP2KMchPcXA9+js/h98olWJMNrXltVe7VKndinArArcqE2W
	 EbANCYMpGE1GuOX388MMv2VGR7ZJ8RY0rL2oiJ1a9/1MKlvV1G3GMkBsank3j1ll6m
	 m6XikfPNIErXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4ACCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194919359.11308.10830003185259548362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cceeb2165f7abe0c83da0e441bc0ff14de03d5d99f1d173bc72c359fd974b44c
Date: Fri, 31 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761949193
