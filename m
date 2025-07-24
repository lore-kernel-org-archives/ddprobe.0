Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A832EBB9B
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753372795; cv=none; b=i7aN+hK0gpY92DN//rn6U9pVNtkndb7m5MWVyxv6Bc9Cw79FAVXYMeQk5brWOZQxEX5+Iqes5ePu2g/f9uHvNiRbZvCclqwWatZZzOeV4HIwQa2x84GvmBj6ZnGRYDNHEH4uOXwDhTxmQ7GRQVzscOIDi8OwKKeRoa1m9eKYvqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753372795; c=relaxed/simple;
	bh=iN7OqVfC/ZvGicBB1AbODWKvn7mcx/m97f/tDJyZYDw=;
	h=To:Subject:From:Message-Id:Date; b=bKBYsNPV2gSEkDXwwb3w4fjHypmMGwlNc1szjBBfM2jWB13kcifw2a6vtVVmqx1BzcKJpkUtTu0SxHWqLfnRxX2wyXRwshMkW2pS4LaVG3im9sZq60t9ZFUaRoxdjwPnNV4ztznKusEq8ElD9d1gvdfUz3s3l2TwO8Rx/MKbmsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK1vMQZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK1vMQZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A119CC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372793;
	bh=iN7OqVfC/ZvGicBB1AbODWKvn7mcx/m97f/tDJyZYDw=;
	h=To:Subject:From:Date:From;
	b=DK1vMQZdT0brhbJKygAvinefrSOV99ATN1K2KWDz6F+dmEWzkbxoBtA8wfAL/3pb6
	 kLMlcM+D/3wP7tKWa0X7gvwVMM6gaD80d8AubtmkAVUH0msJCnsZg041Uaz6m/8zU0
	 1Hp47NqcrCJWCVc0JCCB/ikf0UGgVRwAJXerOejtQzeJkjP/pj02QzM+zWHAK55jtB
	 T+Jk6EcDzUXpJFxHidtWWcHu1EADOihhk8avC0x2ajQxvMzqp0zYnhdeYrLuCvxuyR
	 rlBDt+Zhc4hPR4rNMxsJoVOstr6E9LB/NSyCjlI2W1ub8aLee9tF2a+Vsced9J0FYM
	 HI02aqU20w72A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF76C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337279358.26074.6252900652210940934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5156f5318d6fa3340a2d3afb4cc0f74b9b8ce69c9c65744a810781bf17d1c57
Date: Thu, 24 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753372793
