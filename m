Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599FC1482E1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738278954; cv=none; b=k3LVkViRGsBLi1RWPD+UBJ32OqBd7noPbsim5scz1uCCtJwNmQG75lml/eLvgz6niCfCuglJGLUwqT9pLpnExC+UHpKVU0xVJm0eCQvYyykgbfdZvVrifkNUL0ofjButyZgcocxNqj1+fx7DoFhglHq2wRmV9L5N/JBBVo7ihdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738278954; c=relaxed/simple;
	bh=4Ek4UW4ZEOtguk/28DcefAECUib6b6/DVU4FeGy0+eo=;
	h=To:Subject:From:Message-Id:Date; b=HNbxwAN8HgT+D+zBgdViXb+Zzy1s+NojHd9QAWjdaFtVjAEH2Y+EmDQwPWD+pzFp06kHfbfEFFFFz+94uyJS7qy0nk13A3zT1m3zsoQVVr4EJm8OQWnSNc5lG5jEIQlTQ07K2UcFy5Qk1NNQf2ei1x+9V1azlHcoGxErrWUAgn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Afo2TA7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Afo2TA7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD606C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738278953;
	bh=4Ek4UW4ZEOtguk/28DcefAECUib6b6/DVU4FeGy0+eo=;
	h=To:Subject:From:Date:From;
	b=Afo2TA7uzGTt/XuZNO5lGc1AsYp+OpTzM8TvTfCOBBor4gXvhFqRREcD4ZD0XNjgm
	 0QZm8BYgMl9eHIqWnf24B2K58w5XuJZGst9wGYq6Uw79dl7XelS0uGrKysc0YQZ3z1
	 ZUlnsU7V5ZSPcWGnwPyrDTrzGBg5JuUmUnaQZYdSVF/9k0O+XoH63OhZ8NeWGyvmGp
	 a/6GDySdkxwZwZX64WuIPBo1UJAIVcYugj0GRO6dR9Fz8KnwFyugMOK2hulXSvuNI0
	 sTjB5HbefLcJe8iSU63WFbPf1YVp6LZjre0YsCe0KNHgIWH9mN5BLWc1g4URHYfXsk
	 IeN0J5N2Bchiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB28C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827895366.22313.11026921200115275643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2891407b9e3ae6611333a6f7ae3c136f5cf0d6d51ae764cfb9d450b716ab3f9
Date: Thu, 30 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738278953
