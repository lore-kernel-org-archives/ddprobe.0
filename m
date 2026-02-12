Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32919CC14
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770878694; cv=none; b=P/Flr9Ac++iXXr3VAo0ceN219ly8uafHUHWrqSBlha+F2fUZVRW/NJvHet1CbrvQZTL2/IuBC+Y9Bwd0f7OXYLG463TMQVNx+7Pl8F9IijHsviPseW4dkjlM1IMldwshZrOUZcXtFApnLifrJKMCyvqxerm/11rYyL7cvGVx93w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770878694; c=relaxed/simple;
	bh=9E1pCzyUzPmiQmlnZMSsGHKgw22Ac+WqH7JlzwIUrBM=;
	h=To:Subject:From:Message-Id:Date; b=Qr3kvRhbdoG1DdVBYhAEqXEsXmrd17PxOvBcLfllnVf+T+M4jGnUUT1SZs7x52kvUdD36p12sMpnSlnIEg4KpOmqVEQjAm1uSq50sqfckuaamaCPPMsUxPj3mFOH1u3zMN2sjtNfwyKUbTsT6jWgKM+QggqbzkXJ9x0QMT5Ja18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnyZfmQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnyZfmQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68E2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770878693;
	bh=9E1pCzyUzPmiQmlnZMSsGHKgw22Ac+WqH7JlzwIUrBM=;
	h=To:Subject:From:Date:From;
	b=PnyZfmQz4w48CK1pIZ43yTaNxz7BgYh3V/hmB8CPSUq+8ZeesK1Ei4tUriga0Iazo
	 stJrXWpYujtI7abMcnVS5jbCf9pgrxwUa+Vjs9M81yh6NtJYnnTSG/okQriPniS1fd
	 2qupv8bb1ql/N7Q1vSzsJXk6zEbBs4z0uGqDqI9/IDBelXAAfgoOX6POwlyFNpGXzA
	 DrkjawbAxNX4U9Xht/4kXH+3qBbgh68ijy4A7kmkTl9gzGcYu8ICj+hrciJU8HMNNa
	 TzCYH4Dji2tXiSeoir7VAQN8tV+mjkvmTypsksLjVyeZ3pEH9W3ztP0uLgLlJil4nF
	 q3lngj8aKwQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAF8EDF045
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087869362.20546.12415673431875675359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43de4f2f0c8b5dbf9f4e0bf198fa337af9f2cd91ef0654281d5d07470171a07
Date: Thu, 12 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770878693
