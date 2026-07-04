Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5463D16F27F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783166314; cv=none; b=GNhHC2BlmsGbcK4Hq1a9LrkYb0JKbL/OALlXbwOCYZdCSeXa48or2CQMxZjeU+XmjfrXfqY5oURk+7QJ9Fjl5uNjKWRz1gsP0is95aCncwuE4CASWBzJe/82b6gp2NJJXloo0TqeyttULtUizBmVLKpAv+QSQpv7gduCrHu0oN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783166314; c=relaxed/simple;
	bh=Zw1AvthcWV8t90KXtqEs8/ytBLph0RemXit+aptMj3o=;
	h=To:Subject:From:Message-Id:Date; b=VOAxWoTyty54r5qPKqWtF9LcJ6PXA7Sh3EVlEyaUsZHKl9Xy4m+guk2RGmtrd16kHbHSgx+mLj2zsW8vA0oMzNvYs5BKycXer0cA0JnbD7LKEb9twnl9g3hn611Mc85cLEJot3yNIeWlXpqyJ7CLyrn780tgp1CLqN18Xdc7fcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecSk5zM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecSk5zM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED66C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783166313;
	bh=Zw1AvthcWV8t90KXtqEs8/ytBLph0RemXit+aptMj3o=;
	h=To:Subject:From:Date:From;
	b=ecSk5zM2H2XuTrPeZvXIQX4Voe0F6FvMvZ//F//fKEFCVCW8jt9MaFSazzwit6yIL
	 /I/v3Ghh9lF8jZcSLvx8VWe8bdS7yKiFChl6RkRv/9no5StEjMySkVEKiJJ+knspA7
	 7CbN05/narLc7d5iuGL1S0ZDHPw/wCuvurVBHAopwlLmT5bLkT2MOosXrbm5flRvlV
	 eeP94EasSyAX5SWq0RIaXhh6gHSkoWlZNwHa10K6faul2xK/oOzZLKdrdDn612Ia3u
	 PijVpnZEIdGTmno4Kr5N0W5SHlBdb1UwC2Uqs/A0hQN7wF2sP99QBvOTGsoPdRS5yu
	 OKkk7XFuqyrYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1BDC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316631368.17760.17490164547596383263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da21542a7b1e990ec40a77d5818c342974b3551a11bd42b1620ba780a4ab422b
Date: Sat, 04 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783166313
