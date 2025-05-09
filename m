Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F1CD53C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746752394; cv=none; b=g4rOR8YsJ3Khvgpjqu2q7yHOripd8XmOVpiN30obtk1NFVfY5JRu6jzNEJlO9/9Nv19HI90o185NFyBhEh7SSRURDqzq7kpGXhZXrFshnzdGxLTfPS73ADYp643VuF8nGbogMO7d6p2OQ5yaICM59Np+f14g50aqQMFQMkHWYAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746752394; c=relaxed/simple;
	bh=PZQbT6yvbAEl4v4AkPs9Qs+zXFR2AJBnFQ/MeItee+Q=;
	h=To:Subject:From:Message-Id:Date; b=gQrpwILD9K9I4R6ycfpkBUUTii5etxwX8hlafRSdVaMCfiG/G4bC4lKHZOCC1Lw/XpFRRyUOMkzvJVHQW2ngejvTugYl+odIlILfx65bIts5ir6EQnTc9KoekgxwUNRWf3808IEUQcKiduoYr+JQpagxUgJR8lBnkxUoO+vzyhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibJfGrn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibJfGrn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A46C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746752393;
	bh=PZQbT6yvbAEl4v4AkPs9Qs+zXFR2AJBnFQ/MeItee+Q=;
	h=To:Subject:From:Date:From;
	b=ibJfGrn32b4tsXJZa1FW/B8TLsr/P+CCWU5qtU5GB6Fc4vNxpAt9LUFTu/3nzdasG
	 EHP550FlTxiH1gzd8sQhFfZOb8V3asymQK2eLWw4zlhewlDM5KqtuiGP4plV04Wo4b
	 oISSELfZR2cmdWiaEp2plrlp9bGru3rOWl+iE1ldo95O1q4pLAzR1HlgW49C7WfV6D
	 ADBjrJd/zq62FUXl6ZTNACgEg4ZZ+rk/1zqWU+lp9v0pQgFuYHZLXR81z9lyftD6kQ
	 ePN2U5xF/uNUEwrn3182bUJIBbg4GvhOTwtgDHhXiC6q3zjhZAIV3ZJoS4CQKWP9gA
	 SKCJN8uL/eppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9594DC3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675239358.7343.2430066465548008634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7678065a054076eaf28411fc7a15f19a9af9d8df26db3fe9e5a71d58c0ab80b2
Date: Fri, 09 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746752393
