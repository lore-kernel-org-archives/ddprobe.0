Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D59F2D6E5E
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758965994; cv=none; b=aQx2i98AQnYrhk6dMqSr5n0e+9oy1xOS/4n7uZgmnjkA0CB5/2l3y0sO8JcVqsC4iqoO050Tg6XX7TpxehtxIoShe1nQ9/sKBDPvtUOPi2wQn00SdkX4f9fAq5lrQ7oMkxhTXegoozOGEF7lNBsX1fvNot5PfXCWCXZGn9EUv1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758965994; c=relaxed/simple;
	bh=/Jg1o+hTxN5DeoweH+RN6YsDgCDKzgg4rj3n69YBW5g=;
	h=To:Subject:From:Message-Id:Date; b=bAHQSwnGDQOABI8HXY3IDpUqAlj55mb1gkQtTiVn+gfnQv2vlLu2lP8VI+l6OnhFrFmKld8tT4OYxGoZqM6ZX56BpU/tfxVlEsabczygQuLVXcjGfXFLY6WNUIyLCmeu5VZPA2Wosc2mxRd3EqRPYaVQoIucV+dj0B9p2tytv58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBr8bFYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBr8bFYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FEBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758965993;
	bh=/Jg1o+hTxN5DeoweH+RN6YsDgCDKzgg4rj3n69YBW5g=;
	h=To:Subject:From:Date:From;
	b=cBr8bFYYumaJB97d/KWPi6eeUQwzvBh50+4QCDvDNurZlmKdxVB394x3nFRITM8DC
	 ssrlQnkOtyxfzRgeURLesZOb7tPki4OyQBQs6MB9BVLVb+eqCpX9h+C0r7fJXQdrKy
	 eUaoUsBu0Wj5COnB5AEpBXBanAIUkNlaW9X1564BLSuUaeeFGEemw8YBLbHKhmA2GF
	 efIjxKGdrxu4qr2OVWIGsA7FQiPk8hn3Y3xjQvOn1U+s8mNHEkTaWDiNY1gYDWqDh4
	 tjuyXai2z81V4nDiRUhH8/4yEjS6+l22AJ6z0f/TcaY0QvOKC8arAgJSefJjrtRwQj
	 s2izk2A6PIyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6DCAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896599358.931.4866170795848001303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ecbd11a7c242052d81769c6e297415ccfd4eff667dcc7645ea0a13d09d2395
Date: Sat, 27 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758965993
