Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2675921CFE0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756310394; cv=none; b=bQ+/CLjg1wAZCGvekXTt/1iH7iimyaWC4BZRTTPaBxlaNFBhCn4h54cA5D+3yTYsexCVJLlEtiFJuvD17GZPmJfaGd8drQi0+Ybe8WosbYrAuqPKnVUzvHxLlq+K3eFUQA2PmlezNG+SR/Too2fE3FKm8fF1BEnBNZK3T7AtPSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756310394; c=relaxed/simple;
	bh=g/dzY3yp1GOCz7pHfRzfhNBlQV6Ze6//nYtim2sFhSY=;
	h=To:Subject:From:Message-Id:Date; b=PuJjVAdCsUA+wnUY7MKj9dTEk24ynSjsWy1uvh3qL52ZoAV1+3/TXiVK5aISGka7GOrZsgEuxBrUp4atl31U9OF+l2IBXASyGxDICN8c2CLkZHa1JIwD8GP2NFrIpFShHr8SmPkjAhKOfmdDZt8ekzM4nh8f5g7jFC6pUWfkJJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmCaVvVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmCaVvVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFFFC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756310393;
	bh=g/dzY3yp1GOCz7pHfRzfhNBlQV6Ze6//nYtim2sFhSY=;
	h=To:Subject:From:Date:From;
	b=OmCaVvVVGap8o8fknWNcJeW++Hf8mvqXdjeTQC10hyaDYNalhxBx8ufwTiaBHebDr
	 IGhDSaIXg5VhItd1+ohmzJg/eyUGNWbUlI6d8hHwnPk1M/zsTJk+evWEtOGkkQpWsC
	 8WqOLWNLUPq9ame9qZ/+KBdCiBs1UYnX47Tk15e8Sv1pysIxwZmqat7ssNVAI0+eZ7
	 irulv2tFrf+jitpxg/o2xAyujg3kxVHlfsMHIZfazO9h3zzwbU9rX5j3CBWprUqmTb
	 3j9YIIreL6HfxDzXFeq0aU+5kIlh4iOP07EUecOxhTh86ZzALnsQaGqARrKjvgYYW4
	 9Xt5BpGaDKqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93ECA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631039357.4166.4299388123851019606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7fe382ae205726484af7e25a2f5a6af472bc1185d48a010a8116ef805fd2be
Date: Wed, 27 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756310393
