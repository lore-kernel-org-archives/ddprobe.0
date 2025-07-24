Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BF417996
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753348194; cv=none; b=AHx6palmQDGIirRxcQEf8NQQ/PANa6n4HfmH0gQaB3vBudu6MelC08Wc3i8MxwxdWTED0xxsnTEjyPg+M5tN9pHBloUlABTXJqJMs8Ss5vCCLVLgGeICLMgjskuvkBzIPyQ7Wg9SYenQVHnnVuySYkCDdIlGR+/1izwZWkvHZSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753348194; c=relaxed/simple;
	bh=vkPRkHassnmsuGx5Oy5ESbfUo0MsbMgWoBjsYAFeqCQ=;
	h=To:Subject:From:Message-Id:Date; b=Yx1X5sOMtTwD+ijsFxL7flTCJffmDmgcdUedKqAcQR3brZsWf6n4ErNNXPAJsRjUC5UrzkNlNpWz87aGdrLzIELjxuywB4w+ictcjjJ80nWWZpcP+PUUK0PY5wMFq6L1sjl4+mV+bsEx+7+cVyjXyZ8YeihZrhUZZbhZbSYmq9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwCS5s+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwCS5s+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C21C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753348193;
	bh=vkPRkHassnmsuGx5Oy5ESbfUo0MsbMgWoBjsYAFeqCQ=;
	h=To:Subject:From:Date:From;
	b=FwCS5s+KZOUCrwOQFi8SATrqe7K34FtHkK3CNv9fHcTcl4lVgO4y5MDbz9tnmwcZm
	 hzWgm4UTiM5KOTsMkTrTs4qOdrk7WGvSHKSzC+XQDQHuVspFlWI7xqJ30jS8btyg2F
	 hQ40PC7N+dfDaYCAjFssSve8p99LWGq3OH9qe7C4AgxDo7e3GvwGFrxol05WqWqJk1
	 9gRfPkmuS69YtKOO4b+uK9CloAXxId6OC/9qMFVSdah4Zq0bJHtwGbYQV7pXhp4Ty/
	 py4DeznP1T1NG7kH6KB36G2qnicMcko34uE5kE6x9IYJi5WyrVx53g4S/YWQqEAFMd
	 wmHJ2ZYvvmRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E6C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334819358.10278.2258546716576685424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6faac3adc72cbe4dd7143fcf3ce8e961b49e08d380e1e75811efc16566bc382d
Date: Thu, 24 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753348193
