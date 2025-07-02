Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB9E1885B8
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751443193; cv=none; b=ekR4hVxjYLukc8pH95pB8kXGAFWFii3ZHwT1xY7oapkSQtkP31z6NHYeOuydnESyVM+QiIOJXTgmPLZlL1T5CieAJKEBj6pdbiQPWxo3h1BD3VbYpSgcxWi8MtzlXC0NnWfBpJCoD9K8NCMMoK2Er3scS1xG96CiaEjweASnN8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751443193; c=relaxed/simple;
	bh=/w/5dBFYKr0VvkxqUzJCgDZ5n71DTGsHGLVXd7by5k4=;
	h=To:Subject:From:Message-Id:Date; b=jQvbrONLbPjRl+EPGPS0pRQpXqyvK1RU3dlA2JoaUJMtf9Menf2wAzFOa5nsYvyGlLnUmCp3vSoG8c2wSG3HzjltenaEP/X8ES6am+5m9xumHWls8oU8PLjkNHggZWMoGlG70Ae0TJMReDC66bnlAKPDDnull6UOvYgYxt+zqgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn1HPImI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn1HPImI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1AC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751443193;
	bh=/w/5dBFYKr0VvkxqUzJCgDZ5n71DTGsHGLVXd7by5k4=;
	h=To:Subject:From:Date:From;
	b=Xn1HPImIhFCZn+I60e6n7NCs9TQktQr0uNQMV/mEab5PiV1mwv3E5/XrLkwNDqOzK
	 zG1d4J8FDhz8/x0Dk0t4naxHqa0jjG0pb0Q1OZFFT8S7kSKjWnqA5ymWDw0/ZI8A7h
	 lKLuOIO5gMzzfgB/FBal5nK5vV4iJPyBozl+q6Pp/OxFIk3OsevnLEIgxLsMUBg9Y3
	 68hehJAUMx7dMemZUXWojqedLt01i/XNQ6zKa+kTIqkGYMezaFOHkngH6GaAbL77oF
	 tzltHnwUrOMM3u7EtQ59xWNsvcUekL0a/b0rMx6uaKTtjLLQeKlJ7MAnWM7eJeRTXQ
	 4BjlU9j7F1wXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B78C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144319359.7292.13522175629779825962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a97f453087f5176bd36cfedc5879a6cec0b1e22297a12d841a88ceaf01a5e5
Date: Wed, 02 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751443193
