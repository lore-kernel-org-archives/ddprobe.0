Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D9480605
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715286143; cv=none; b=HSfsu8hyuJE4DKgeh+Hw1iu795WzPsPMjCxM7ODnSrzvKGDhipbRQXhH8Qtkqc4qk8BMvN2DIPW9sj2CQ2zJHjmz2JDsKaWvtKRegd8KfaFXRb34d56/ym+gAl45zQlaxjZjW06ItddQvYFvXtXIZkGnn9krhl/aQVlMWl6ulno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715286143; c=relaxed/simple;
	bh=4Lr2c+oYtI7lDq8+58SotPuqSAp0gAJ2q0dyx5KFbmw=;
	h=To:Subject:From:Message-Id:Date; b=RZpbDFBvBotUOVjWHeQ7p74+XnzA9xhhYwu+7p2xCtT3FxIITK38Ug4uHMpnj+dAX4HYztDaWPvlKGWEWnHbA4d1nJIC8EA2j5FOCvpFzQ17j2xGVkYPPNjWievpxbHDpIK9nwWIEbxk+aqwk2hgQLKv3KUQVTgCqKz294661Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgRk6G1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgRk6G1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5697C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715286142;
	bh=4Lr2c+oYtI7lDq8+58SotPuqSAp0gAJ2q0dyx5KFbmw=;
	h=To:Subject:From:Date:From;
	b=CgRk6G1BN5tsyZ40v8nbcpySglSweb9SU94XzuD4hvwkSzeWqlKcwulCS2TCollmm
	 uXngQJaIJhMhOXfPckUqeH4gOtqoLd1JCzivU1ZsIlRf4KheD+OAi7UKebct/hOz+u
	 Z2d1+CKcDnZ+V1QDkLcYZFndiw6vPper/KVTQuUvYver39SM2KtAhlGpGZLRsOPC+5
	 UFT6aSPekf8TECHW6GCOr/HPa4LgmfWjP7cn1Q2QdqYgXa/npJC9FcHLKiWAHH4ZqA
	 g6K1ALmXf99ARVhBt2QY4CXdZzmOSx3huALAWdr0zIntxqBf0tAaeaGbyElSL5z0aP
	 4VjLYJTshySlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38DFC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528614279.3401.14684324489878288191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585f22f17a0eda843be45914683055fbd9ec1a5a8b516db54cd4dc0f49edd2c7
Date: Thu, 09 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715286142
