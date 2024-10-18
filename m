Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA3718872A
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729244754; cv=none; b=aBjlzxmrU9HDOQ1UfGQnAAuC80MJYNaiuG+Dt+uQJ+W+Gg1ibCjh/pDacjq0/G8nn3XhjjkWP53UJ3wmAjdH8aPeQbdcRJ1f96pttlBe1qZ4Pqp0tlBPxkguAms5uaPpDkm2eXCQpxoLxorUkNDWLxD8nhoOYlK5ZCSyux6aim8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729244754; c=relaxed/simple;
	bh=JgbqAzaP/4DRiQxAosFhNFKBvCyNJphEQSHqM+f0+q0=;
	h=To:Subject:From:Message-Id:Date; b=qddyOW2AyU3yGYpe+LcTJ5i9HhNoivrRW3hzZZEKCNUg1oD0ga7mSSoZCxw5IaSRm+P+8mNnOqNQo7x8v1kfYKjziy+AU+Q/7enbC2dnwwP4MunSBSoVwq4Sfb9tqDwTQ/oVATmzvUIseiUHIG5aVirvSlyFjuw5KlqIdH0E+Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeoK5epj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeoK5epj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA5C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729244753;
	bh=JgbqAzaP/4DRiQxAosFhNFKBvCyNJphEQSHqM+f0+q0=;
	h=To:Subject:From:Date:From;
	b=jeoK5epj8qYN9UrgBCyUTS43wkVeKeA2B3lQnSrcVt9GdSEx8rwveGcb6AEtR3MLK
	 kFSNwgIa2dOfg2RirrqCR3FTlRbxokaj6j7d8L9tmDOhJ01rAuk992+dB09YldrXd2
	 AL42xnEK09da6tMSvpPRIjUbtJwx5GmcPNiAWNDlp0xWy8yaOAl8C6tNqJbbhteOwT
	 1m4t8f+6gPECW79YHsWMAO0tQj3PbJh8rmAtO5fkq7yhEIgt/xrqR32RnFrIzRnWaN
	 o1xS4k+A5t1kUJ+VqWsjyb59/N2q0WtyBJymcaR01rgyDv9Mnp6IxytmFM2a+Vrx4T
	 HLfCVmxMPycoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92183D2FFE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172924475358.8885.15399893777083770113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac377d05ca556675ebb3e31db76dc828fbda2a74d42cab43909abef9a032584
Date: Fri, 18 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729244753
