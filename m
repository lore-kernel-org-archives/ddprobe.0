Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC8205ADD
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741121335; cv=none; b=jgKcyDVuLGtyzP0LqE17gLd8NeW9KBhtWB/FA4/doNtkMrEMdAdcw1Sl5X+DgSIlF+5AGxfBt5hFEvSi2Hekrj+Ky/I9Y+zQ9tepnZDrBCh2rWIPu+28pkhInZt2YLxLP3vAU00I0fyOYY7d7EHBtehVrkY6E2qGwUbSXfZx8Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741121335; c=relaxed/simple;
	bh=HAwVeLuZ3XkS1bFAfjQ8V1WSGX9kH31QPxumwkgXJks=;
	h=To:Subject:From:Message-Id:Date; b=UFTElLh5G4mJq5wmYDz81455UXoTWJgX2ls1sx4avxlFBbOmkZ8Pxa/HgdGZC62cCTotNxjTwg1+0ECYxWQFbnYPcEMFDw/Lx1o6rrj+v98ttRRJV13JMrzUDYh9JpjkO3x//S3ovMthOsZL86/ixkKbBHCZF1nbRsT3oVerHHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDtXpwZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDtXpwZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25CDC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741121333;
	bh=HAwVeLuZ3XkS1bFAfjQ8V1WSGX9kH31QPxumwkgXJks=;
	h=To:Subject:From:Date:From;
	b=XDtXpwZQIDt1lRnxRY6lV7omXlo0P6flKut8SB9ItQEDVXZ6S+8Auj3o5BYKKrsgd
	 Df1lU75YEZpH8mHbtH8ZP20HRZXeKdkCMPe9m2E1yXS1KxSie3x0KfpPazYZlY6qqR
	 aBfNKt5An2NtQXZJU/0hewsuKiy139cKBrb/V6w91CkQa3Xf1c3/8blOfoxW9yWNv8
	 5mjvqTT44y8a2zaq+HYn09DeVaF+qCIeWs4MpbrQJC4hFKNTZfcvc098ogSfkbmcW8
	 fS7thROPMyb73QiLIzlPYP65kkOma0zf9riG19BBZiTlyLhtbce1WwqOCuYkGgL3R9
	 U5zhx0wVkDPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267CC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112133359.29914.8738173217569672344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333aee1ebe43ac0315bbb36ad9a2f7545b8e2d0cd37710074ea204184ed27465
Date: Tue, 04 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741121333
