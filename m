Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477091C5F23
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745174394; cv=none; b=ddb8yif1+GYidC0Cm4a05hvc5yzilNsuNFbBCjwptqbsH0OTvoLoZv20etRjUP6yrdwGhtpC9KfxOPPaVubln/oTsJ/HJ7Ko4VMs221ZKVL/DrFVI7cmzVoB12z14spil8pm0CZzlJvfRDF9goRZIH+oFUpSd43yDzyQWGslfow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745174394; c=relaxed/simple;
	bh=DZjRnHNIpOqGoOjM8yYTWe0KkJG9359npS88bz8A4tI=;
	h=To:Subject:From:Message-Id:Date; b=BvDmyNJvr8lZULPWD5dhW359TFqPjnOrstO8kMgExGPYU3kI3eqyZKgRACQkvldUD/rY+Rd8s8s/61yVNKIaxwIcEpaNRtbZNdoOdb1m92IJLShrEt4ddAHIKAy1UuHlTioMISzJcftuH9nELQlEx29mrw+8Iw4rtxdUNUeim2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX1A582s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX1A582s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BABC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745174393;
	bh=DZjRnHNIpOqGoOjM8yYTWe0KkJG9359npS88bz8A4tI=;
	h=To:Subject:From:Date:From;
	b=AX1A582sct1N3ivo6Yby8zX5u0FmVBDrJ5YjXNXMs1m0fWUU9EyRTi/dSxMmu2VMq
	 4Of6dv8N2os4Pfy4jM6mmdJiBFCf8XkPPz1bSscH1AZ5GsoHvZJLQ6zhOZxlkiLLoX
	 deRhscWA2HWf9mBH3WoJf796Ik9aMT2oEI/1YG30L4JtqvvGQsVkV/FtSuvEcK6nuP
	 nccXC4MilldIDi2nfDns9z0nJ+15YGKqzyzEo419M+CyUXG4YGDCDZ8Y7U+Ydqaz5/
	 NFUf5UTDLXetTuY8XCJKgLNPjwlEeZUJybUh7H7iR0Zoyz8mNSZacz0n2/E1/DhN01
	 HktYZBfx+lBgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34C0C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517439364.8549.4083101547418202764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f4d5d2eabc9a488093371cb75bd76d97180cbcaf1db9f4b552ab38a68c3fa
Date: Sun, 20 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745174393
