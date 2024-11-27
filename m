Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC6D13D89D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732688754; cv=none; b=Sd32p/lWWOLMoov8i4OmYqV96aN38lGvDK0FUqQXa0ySE/ydtaaqO941f5ggfyNHaua0/UnVMfddkIT772vnSYc5pEkKgY161CcjEU6nw3QqN6eR4xHn1mMfj3hvTMU8mg+KsXu5sLGx8g7QKjBYtWlsCvKECFb7gquN4yBOdX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732688754; c=relaxed/simple;
	bh=zjMLdHOxhQoNC6/gzpJPrwR81HDroTGBiqahC/FokBk=;
	h=To:Subject:From:Message-Id:Date; b=VP5cIwQZ4gXgdbpNILNXJ+QNnFarLXs9SCCFtp46jjixyQx4W6g6TyNKxn9iz66If+P0NFPo16c1uGJMjgF5y5wQ78hRDGx+pRxGJtm4FWiICX4uD4PCndmIKvnJo6Yc3S2rZ3WOWDLARv5qWHTTw5YKcfFqreAQaIttWIDoOsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIhJeaS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIhJeaS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC00FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732688753;
	bh=zjMLdHOxhQoNC6/gzpJPrwR81HDroTGBiqahC/FokBk=;
	h=To:Subject:From:Date:From;
	b=IIhJeaS/SBeAkGtt1MSrl8xnLWBGqyIHHDS0GquaNTDwBJATH7CQ71M60kG+99Up6
	 u48gxR5LFcegCenJ2Be2i0HNk4KkUBfS6itj/dLoCHqe+hBN5dMywLbec9U37M/dXb
	 Gp8qyYo4I2cRgN5vYXRWVxWghg38us0lgGKvP47qKmUDlhDhbin9fe1k8o/pikSOuw
	 sRMDmqvuLn1By4T3vZGaJFUdLR0tEH/kDG6DcCgdUXk4aFbJtWa5lPO7NoWGSS2tgK
	 MGPwIq6kFSOciHZ02I2pVwAovx4mSDqrq1EQMzSEASvyKqntmOTJCq7CQ9qgfjN0Cj
	 4UV/WDdWFmcBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91404D609A1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268875358.3198.12925286184781729786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b676f0de4b04e62d903d03600cd7e90c77394998ce2376268cfcf538a4c799
Date: Wed, 27 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732688753
