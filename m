Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FF51CD3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724425554; cv=none; b=NtkhO4FqJ5TczK6CmHXzuxIjKz1lwveTzmhfPbbRTpY5e6L5fK3sQS3SCpflccnW6Ik8YPQm166PIPbIr1wCELQZbaP/w/7pqege/yTePJMfb3W12T7f/HJQm493WuM3Xi9HBuhyCqwqHBZOnoiQQj6Xr67R9PjPt9G0tktqQXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724425554; c=relaxed/simple;
	bh=RZFn/W1APvpJe4kIfuEPgzqpRdT+I8i2gKNzTuyOphU=;
	h=To:Subject:From:Message-Id:Date; b=i6Q+vuWf4lMnB2l7pnw6JWdls+MSyNj1SKXCrBT6jlz7yyAdwa4O+jLpOg600YtxaPztLxTzXGF5qY7vi8lMJ97uD1VUNOX++nCHD5nIWiaJwTTM4V5ynpRiIZ3oJZ/4bWuh8WaY/OkxgtAxoCjnelEAvyIFpGNHUv1B7YIsPCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4AjU0GZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4AjU0GZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD1FC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724425553;
	bh=RZFn/W1APvpJe4kIfuEPgzqpRdT+I8i2gKNzTuyOphU=;
	h=To:Subject:From:Date:From;
	b=q4AjU0GZyBkAE01TumqZF3CXUpl+O05pAJG+7OghtgsP0ta6qhYEBGV7hixTQhycV
	 0V/LsBd/ibgKMrKIxRK2PYmleRuutNxDeArZW0xv2Q2Bp6DuNItBSnK3fvhOC3Pch3
	 p3UuV8lyznkcsUKzzXF/d1xHY5Hn564nNY3ev1oH9ZwlQCqsWwnNEQqjCTBNV2wdhn
	 Gwlda7InVdn6SC3RE+4NH77tS/rau4pT1U+S4Dlk5K5Eyk+DsOm+UK2Yvi4Lgottkn
	 bwVmuwWCuKZT5bljXy4n0D/DzwU6BVkacGkIUuPS+js5GoEFefA/gm4odZm/F8EN2m
	 JW2MiN7IaHJdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C93C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442555360.27120.5104283108037651357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd53bd3685aaf19ef40d4eed09acdcae677b14e9559a22dfb7b0ca4f5cad5c2
Date: Fri, 23 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724425553
