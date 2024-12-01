Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFF42566
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733016954; cv=none; b=d68FWIdy9tOqq15ajykMzkmCpyRpXtJUXCDi4wJfM2yOk2A4dhWGL/g+lhSXDEpNPedgmhsYfX5Kr6gIaeNdIrSQwX/2RySx9BPC0pYG0bk9ehp570l/i6NwqYs/CpOKq37berLhvgpMpXBuE833VACnFbhKF3K+rfV3cQ9ujcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733016954; c=relaxed/simple;
	bh=PFqfeTxoZuU4ku7Pq8O/rj1wa4dScVQfHB96/XreHSM=;
	h=To:Subject:From:Message-Id:Date; b=odZJAANbdP90AN/lvXQp5R6ZjjPUqfwwcDy6V4g7XIEM19/mlwYTxDfZgAHYvuCO9V/yEoFwN7dFK3xDd5DO+wdPTLiyCpS5gf+EJ5oBXyVU69JUXQ1kAP9biY73Urpfd3nvf5zwVRUnHRQv1amMPv3TIf0a6yKtPTLVBHmdhlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6tkMgcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6tkMgcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B220AC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733016953;
	bh=PFqfeTxoZuU4ku7Pq8O/rj1wa4dScVQfHB96/XreHSM=;
	h=To:Subject:From:Date:From;
	b=A6tkMgcLhtbEfzLzj3bKO3YZYGslC6Z6WewAfYYDP3yv2DIo6MTjALQGNMnb9g7bQ
	 40m1OVRU2rFZc1+zdKCtH7CV3nm+IvQb7pK1AsshyQgFwPy2GsuCJl2awB7zfF5KrK
	 0YHLqiT4/c4SEl6N4uQRiDqIAc88XR70LJ7DoJSZaWijg2C2QhTb2JeXVRz3T0NEy4
	 yZOOcTCyL/pLaNOaVECysclEjOh13cm5q4lFuiiexKNL8p8evMRe3czWwiPI6QNOba
	 taR5xRvVc7TwxZZeUPKuueX5QUyc+4Jc2aTIwMirKWFYKqGTYHtP7JBlXBMR2hgLzb
	 /yELZJIgD1NUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C41ED7361B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301695359.9471.1122855674306273831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c870440c08d2c007a651cf77cb37135d185b4ded84ab18d4994a2eb7f3b338
Date: Sun, 01 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733016953
