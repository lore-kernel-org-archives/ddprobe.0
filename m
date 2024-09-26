Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F258188716
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727386555; cv=none; b=UufEEQ8B472oI92Cvz5fpFG2/AvWm/0ywxDsBODzJfq8cJ3hbRsGD3QA1KzxaC+wAwQNVCaoTUg3fEA6CfKFADjVfPADQgh/wgQALnV/ATyRMYNFfHByi5ObLH/4ZbFYbFulX8HLz2Ue2czlf37Ax4ON9YJ9PQXdtTNrlsTFahc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727386555; c=relaxed/simple;
	bh=yVqTzsaGdF5S3FmymqW3SJhvOU4n77FFnDrHsIyX4T4=;
	h=To:Subject:From:Message-Id:Date; b=pizsQRBSLRbUAj6b+U67VTzVcM06Os1v6qmW6kLZOsnBo0GmqYWG1K9PIKxXm4LuKic5wM3SfZRQj1YUQJxJ1R6yQJREf+u/M4idJ1K2kIb4vvANXekctVj4Zv2d1MCpobigfTd0ZXzkMw2yAqKsVuRqkiYEpmIQqq2F2MSZAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBDMaok8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBDMaok8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE10FC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727386554;
	bh=yVqTzsaGdF5S3FmymqW3SJhvOU4n77FFnDrHsIyX4T4=;
	h=To:Subject:From:Date:From;
	b=oBDMaok8EwpXlwLILrTMY/idTwNDguWpEaI6IT1QNmcwe1v+NmgjWM+Ij6AsnDkoG
	 5pVg3woByk/fObDIWA7kh70FPZOtl2xtgnl2aZTUJrewCTzP+ItiV4cEqaDIv0TJqv
	 9awUqQqLPQxQSWN3jwDsdixa1P09PgFoHEu69IPUYuuRU4KR24/GYLRLAwwxEJ4HDK
	 Y/kCWN1gH7p1Uf04cK/Eiqz6tgwae39ZG74DEFskAGuAvHjvyniyA9mDeE46VWgX30
	 br/f/5BGRE9jhrmK7Jn7PM9Efv/GmSbVMdIf2b1QUx9J5kbmBOVl2YiYlca8tiK+Gq
	 KwnCgymL/uang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949DECDE03A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738655359.19217.11941713488448239635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5062a42e144873154bb6c92c5b59fa73f914905c948832d25478e2bfbcc0a4
Date: Thu, 26 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727386553
