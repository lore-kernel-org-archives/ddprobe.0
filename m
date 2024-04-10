Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033E41494D6
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712749697; cv=none; b=R8GuFKR/kAo/rI0zQPB5NN2OIt+l/BGWxxW26JCZ/ZsARowXYjvyoC6dpzgViUV11akkfYAPx554cPclBecLMF4UQCXhybhze8LxjPESH3VixMGkuSV1r3WlRv+CMVRVg9Ak33qIMcc06jjejTe6e+8yUmVRliJw4L2zamC77uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712749697; c=relaxed/simple;
	bh=PsuoTtSiCm+nKFx3su5a01OJ/3AZBJSpTSAJ76lgv6Y=;
	h=To:Subject:From:Message-Id:Date; b=frUo2kKGbFPw3rDen62XnNgujhA1HxcbAsUrq1LNCp6MN0V2dFA3F0LaQVOg5DXnrgVwiP0fcGAinQThXMwUWbVdws1+LzMK0CybOTwABW8FqHDjwUf0/K5+9HVEMW3I4CGaw1ATT5P2wtjWN2hkGq9zunU+r++7NCZw4Cv1Mck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmw1rAUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmw1rAUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700E2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712749696;
	bh=PsuoTtSiCm+nKFx3su5a01OJ/3AZBJSpTSAJ76lgv6Y=;
	h=To:Subject:From:Date:From;
	b=bmw1rAUvmvNVEAqo9iG9HlFxV3leO8gos9KINzAwiiQdLTnyPcuwYfkvAm98cDXuk
	 ok88Gk8EE06fZ2rUlB19hl1CVlfxFvgrN5L8BxQ+/ovREEcG/TUBLhnTQsJK2Yxn6t
	 O327e5eJFUlL94gor9/cXmZtiWq9Xk6jHi7fGEajDf8mH3sYQIwMEaFvnQ5tE0pt2x
	 nQiCFql5bWcahuvQ9mPV2VQQYIeAu0JiQTYKin6zyEoH3dNF4pCLybGGlQ78KlTvbM
	 DH8xE7XQc1VRW4HNOFqwEvhpKPZ6I6abuhzN5ukZ0lslf1YpkUUNomekrkQxvlQWH8
	 O1zWCY4tzCPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DBCCD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274969638.11405.17178277805212939026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5666ddf619abc6d734b0f54081e7e77eaac0d8ff1e7b017c2cbc58ce087ffcb7
Date: Wed, 10 Apr 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712749696
