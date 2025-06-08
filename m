Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F3A20A5EC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749389994; cv=none; b=NLY7ZqZuZqzzR0mDjYRyX92YM2Azz/+go1n6NFgDgU/cj2cBjovw81pUfbtj/XZlSX3540CQ0dHmpOgU1QWH+nhQb7m2aCC6Js1oJz92x7Z1QYQt2OTjTxatRKCD3Am4keXACJIBln2R72u2/rgm9NqP7DLH2U6qlq7an+kbLkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749389994; c=relaxed/simple;
	bh=qK0H7eBi0E620rSrN1ATF5DEAP+YEw9Xr67VkonJG24=;
	h=To:Subject:From:Message-Id:Date; b=uf37uY2xhJatVZ4Zz9IMQL0y5qZidZrECR3NyIGRj4FHRrGNmwtjcmpNqpTqcWqDEkJ/LOut8JfttmTS1QZotmSEo19IwRT2KY+9n9DdpjcjRiufgi0CqDoCmhiRx8xD0m8q6LiqUntQXoj38CGqaLYTKXEkmSWxpC42tFj3ZpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBFWwyD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBFWwyD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A855FC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749389993;
	bh=qK0H7eBi0E620rSrN1ATF5DEAP+YEw9Xr67VkonJG24=;
	h=To:Subject:From:Date:From;
	b=FBFWwyD6PKNh2JSGx0QqDJW3+14fUfOAGmh7CgZrF4HjtyUKG/MZ/ECnNOGav5jFu
	 Ug4ghPXKsIP9rmXOWvX4efThTPWuOTzpRj+DC11zOpxSJniGjQEPtgUSp4mu+Sc+Fa
	 Wp+jyr5+w+GX1u2oNlztNg20XRSdo9vrxfh3ObsOTNKa3hMy32vrUMlyjwdyCArlUK
	 E3g3zG7NNhRVHSoFgzO7tTQBJNW7VXShRsDY3JShYwXKo8HTCcEgIu8Iqs64uP1vxw
	 +Lu/yBAbFheexXEN4xhmaun09bVq89o0vxrJ1DVQCxTm0RWzOnjlx+bf+PJC2R1Gc6
	 MHsqz61sue0kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB4C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938999357.29141.7075991344843101885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ceea5eb0c10df80f56f5872ebbdcd71fc568b69448e9bbfcc4e13fa9f90182
Date: Sun, 08 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749389993
