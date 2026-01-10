Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC3F33C188
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768061034; cv=none; b=M15dibgj/zvDC6J7NJaR13bbJ3tarWEMd9CF6psOcgP5eMj91ZQyKw8p+4+HjNmG7GiOaKQyY0axP9bgLIb5LCLhU8uE4/85/mjQgg0weYVqL8OZXHLqfrc0Wr/ahVNf/mi3cyo9n1wo0+4ZlLnbQAY9DRE1RCYxB/LBf/Pn4yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768061034; c=relaxed/simple;
	bh=Hy8vYG1A6Sa7ChPhUEW4D9+2uKq5GwMFrg4eYGI/SIk=;
	h=To:Subject:From:Message-Id:Date; b=u42flH6IJwU2yjM5lZ9YrcQ2Pkrn+3hucPWP+Ur9vEyKAnPqJXx2xPI7NZKhPUI8CXLJ/NktBhet0gzTOQXauc/hYTncq1Plt55ZyzeCfAoZ5AbqrM5cyPyR47VpFsmfTeVuZZrekglBSIfU+U6wMIDQBLPbVA670ZEyfnfhKJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJpAi19f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJpAi19f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8748C116D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768061033;
	bh=Hy8vYG1A6Sa7ChPhUEW4D9+2uKq5GwMFrg4eYGI/SIk=;
	h=To:Subject:From:Date:From;
	b=JJpAi19fXiqTpXQ101XqEv1AP7oA+2fxMr18XnCQvb8jlRc6flADsLvzZ5kAXEJPh
	 voMDmQXVhV1RjPbyzQwIRwOODaQOVJeqymzkkYSTNL9w2ZTq3RgKDjTHXqpApsmHnz
	 J28yDbzNAuMRIpYZf0WkD3JSwPm0WaPDatebiy+jr3FSUz4KNFPT936Xkea1SqdR3Z
	 MmN2Flc8DyGD6iARb4nSnhQpHkVng05tnBRB2U0IBtF2X7PmfB/ijqWGQM8SPQAflK
	 guZpB9PbT6y3n5taK3fdknQJN/lTLxizaWrJ5yPxGCJndeSeotPC0wN4tUZc0XOrII
	 S1YeHypHcBsAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490DD277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806103358.6385.5317804259983010126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fc91367bc270619f2499a32094eb6f2d174922bb3d57a623b9f409c7251dee
Date: Sat, 10 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768061033
