Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF7E1847
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710552497; cv=none; b=sN/pUoysYRVLIxJnngwFlWlk0zLYaz+9RpxCTAof59846wx1QPvQDzRneqIyBz4Hjk+E4qtvUMQxbDNrL0+UBFxMa22y5+hpnLsY0ycvVLaljRia6yHVp09c2T5gbRBNKG4/s5fXJrd1otsYsg+/wKZDnhOK7CkNvcKkncilz+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710552497; c=relaxed/simple;
	bh=jBqKnutqVJ/uYOSWggHTHr6WahCCPoR5Rp7bMJgZ4Mk=;
	h=To:Subject:From:Message-Id:Date; b=eec4hC+h2QShF2Ut4j6sNtVUfuKE5kesX2tq2yiyeW+uzFEfoQVYW+d7XKGk894gx77DBHBbqKlMwTvA/aMuWEUT0dDhmIpRyVbTx+B7IJ2r984Hd/GUYfP5QRTvuH10h6Pp7itvGUEpZGpnVPMNk4/FeK92xqz4ailqmXQ6kAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+pIK0ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+pIK0ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FFDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710552496;
	bh=jBqKnutqVJ/uYOSWggHTHr6WahCCPoR5Rp7bMJgZ4Mk=;
	h=To:Subject:From:Date:From;
	b=F+pIK0htWjNEJSJ2Hpyo7icaAzVlhfq1bHDP36zCqTXXoyXX5ysEjLofNtQ2sGqod
	 vLfJwer0989bhtVGJ9s2UDEVRKJsvmQNr07iS4SElYhiYkCrd05I4Et/pkVC45uMk1
	 SCS1yPX/k0duA1LXKh7k+GvLIn4dCGyUgmUwm19ilzuspKT76bTPMDtURHSv6pOJnb
	 vq+FBu9QyA+9N9fTUBbppL/P964IWMu2nKQd0hZCG+kliJ/CgvAwNk2CNdes4MUxQl
	 osHOCpd0+iv9RHgMMIWJDITNleYgiSpUAa3AR7QWqGiun+lRc2oRW30Hg+mzbYIHSJ
	 9EFUKCG7Dh/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C65C54E58
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171055249639.29391.17869096789068796184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c584ac186ebe58a533911e7a92d27f696eab06a78ecbee1eaa4fc428cf8347a3
Date: Sat, 16 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710552496
