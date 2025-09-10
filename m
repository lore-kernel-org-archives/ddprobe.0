Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E892248BD
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757482794; cv=none; b=DLWSVgvAy1Q8fUkzELY3QnawK1btIy8OLTRxaXlJSE/5RfETTdPsTL+BcBrxLZdc4MF/1wFCDdDWnyd4/ee0Y2qqwYHdzdkKApbUDBu2zfdK0i78d89LL6LmBIFmcShMV2kvqYvxqaorBAcKFUFJ5VYWfa4y6nRZXjZGk9TguSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757482794; c=relaxed/simple;
	bh=t9bbrPKhao0m00BvLguc5ScVUMuzP5YRwj67qfxACZ8=;
	h=To:Subject:From:Message-Id:Date; b=m78I2XqZHu8tXRSoSCG0j34KGUNz9F9xZzE1v2AaXHCSnNnuScUiXNOkvfiNTNVnTwbDRZz9EQmZrtJbwSbw4CTOotgWRqz99Rb20qMx4k5Tvqzen0hbmpOqGMIb5/G6tAfvTm6s1t44tKPD5dkc6Gm79VdHzIpAYoqM3fpTAd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCWiFJiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCWiFJiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D966C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757482793;
	bh=t9bbrPKhao0m00BvLguc5ScVUMuzP5YRwj67qfxACZ8=;
	h=To:Subject:From:Date:From;
	b=MCWiFJiZQdRVo/qZpYTu4hJYGp6uzfECpaWNykybf9TYBrK0Vcxh2lcZHrqQIQAIz
	 YvuG7GDASaamfkl8BfFE8JYtCg9reMrz9v30BgjzPNLPiF4qds/IXsE6DOtrgoCO9m
	 sdMHhdTZPCRwSRLKx6hkcNW7LOwpsnQCKyTg2KFODcFV5hYa0Yl4WX9O0LBZhrZtHn
	 b6sSuuiykid0gMlmkdYJUj/lK1Q2bqERA1UIQbbIXPfM/vA2mSj4YCqsu0wDvOmuQd
	 QSI8uigy8O2UEbjeXkayFwIgsTO3r5uExv2nAytiffDbXbbdjZcsz9txVrDYsRYnCq
	 LQmua9iZl+6hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F234CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748279357.1850.2519873480492126418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c9fe5a4241890e832e27d0540ac0351dca718f0b3a1efacb42410c05e8ad42
Date: Wed, 10 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757482793
