Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D38C21C173
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752124194; cv=none; b=MJDsWgAWE4P8iCFWruR6mnntHpapR7c1vkGpJfvPj0yryIqPyAIfbI+POxLZ6XWYgTOijTwb8jSismSjdBvZg8BfykBg6u57p1rxTgaC/JuCQzNHws9lQJy5u0+2uQ2omq54PjeNipdwyT55JVUWV3VGJHf3oZ641oGhahIhmws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752124194; c=relaxed/simple;
	bh=Fg5dgw7BqwHs+c3MW9sCpsRtTr6do9Q+/wcQu9V7UwA=;
	h=To:Subject:From:Message-Id:Date; b=mTzBKnAhM6xbI9HHlr6VxbuWMNI1AGWTPaeTUkcpnvCsiXumRh7lSV/dfYzQbr6jBVGAfDYW4+HQd9fhqcbRuf0YGLJTxo9/hjP4jME2XJIM6uTI2NEqbToPojBTeif8kuGdGDP+ciB76yHpmYUDthfsKB4rowrFSzkEopFP0o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spIYLUMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spIYLUMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5836C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752124193;
	bh=Fg5dgw7BqwHs+c3MW9sCpsRtTr6do9Q+/wcQu9V7UwA=;
	h=To:Subject:From:Date:From;
	b=spIYLUMud5eLPjTzR9NfoZGULRJznXPH+DoI7k19bGM9NM6JlLNPWLUgzs6liE8RP
	 Ds2H0N9SWNKkPud7rojL6KoOIgsLRbiRu2ZjU+5IJnewuDFMRSJBzGVbcMoZvugMdh
	 oF9WOfs1yVKjBN6+Ul85fO5po+RdhW387BRoRZkknWw0myvWTy7mkH7Dx09J8+L76D
	 KCgcUQ4zxVzNGQl4AZjHjvI2MuXqzRB/ZxBv8OOz9VjMre4IOVPzIwvDmhbGdJoJqL
	 NaSzU/hE5zRMKh4BDCNENM7IOOdv4a7eTdV4JEN173zswHeHmpAeJ24a8cBo6lMxw0
	 dDzaIyQiOsB7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9EC83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212419357.16845.5723331369849949872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a6d48971e845081f013d7be68b8de3fba9429c0556974abd5dbe454b6aac7b
Date: Thu, 10 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752124193
