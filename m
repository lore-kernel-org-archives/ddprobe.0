Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9B86277
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770634434; cv=none; b=WF9VuX7C+yY9lRupNh5AJnTZ+2Z8Pw8DCqjMX/IOuZsCetS3x6gvHt+IeKh4nfICFGvHqVkjB1X2/uHLk7rmYiTAmJ7qjtSv4K9lljyxhU0ebMo2cA0B18acbSKlrbXtnQ8DS2eZpaTlGbpw0m4haUrJF+TIMc8U2ULfjga+9ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770634434; c=relaxed/simple;
	bh=GSw1m665fHu72AAE4+qsH95onF0d/Xa7CaowiDm7Z0s=;
	h=To:Subject:From:Message-Id:Date; b=cWoDwc1sRScrJfb08a1Y3D0qA3qBidNQrTxlUDt5QK9lKlHRtgvqJk7qmHCbWkjQVJK6qHhvrh0bLKe38LReBXhz0FI8L+Zo5Wg1rawSTvBcDTcgk6DruNokvE8VgpsO8AM2a3LhflH8b6qe67ft65dD9po1yCVClzP68JQiyRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBpAKAO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBpAKAO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F6EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770634433;
	bh=GSw1m665fHu72AAE4+qsH95onF0d/Xa7CaowiDm7Z0s=;
	h=To:Subject:From:Date:From;
	b=mBpAKAO1/gFiPG+078BO17emNbp5Ktgba7VqdPlKvqw70LDqMHFP8l1IXx427xMAC
	 bF1bt3P+gKkZ2kt6alynQbGwH6sbIBhcF19F9MLrOPVeMWBqcXbVlGSz1aJHhdHg+N
	 bppU323/xny5+shp//tiWUBm6CniDD+27Tol+WkwZiKNf03yiqGHXi5bpequgh9PAt
	 qYroz2Ib0gAmahQnht3qVf/0RXZl/B+XtKtaixvB1KzDJjWgFgcejNeUIyo4mW/FS9
	 R2RGHW/TXz4A0zJhRcufBlR87gLrpLwxgUS9cppc2oVMRdXQJaT00T0U6eLn0hXnJW
	 ok1c/sbxOWxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FCCE7E0C4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063443364.22934.15695624703574966299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c016665cc4cde43f3c5bf15927dd1e0fa1729affa036f0ba15635b701132974c
Date: Mon, 09 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770634433
