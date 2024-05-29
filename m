Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BC4101C4
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716987863; cv=none; b=hDm9OLIU1v3LM4WXSGPb2+GGXMOhYgUCdMczjjhq+mg9n+XE079LOb81QAg3A7AxfIG5ck6oyRWl9YbCJfh/SkVKp68T07wyzI1g9GhUXcrkOcPWP7PLBG0O6NWVqw+ZWAdbHEJOx8so7v4dgb2WZLhesNEiEXznr+amSZJMxN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716987863; c=relaxed/simple;
	bh=dPC9E1NliEFUbnXJ6wVhHT3DAaJZxnNzeIIy8X+8U1E=;
	h=To:Subject:From:Message-Id:Date; b=t0vRCnQEw6XZjcuoY6xje8t1Y6gJdf4KMsPM4UaTAaInIVhsnDa6R8yTICjlVGdQBg+CrPtLy2FCwE0vk9kY53D2bauXWumrMsudXzxORC8ylc87ZGt38kfVVdC8N8pdpGtu0s60DbFOo2Rltv1EfCZG8i8yPh6is2mTLPo9Aos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtnHpVUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtnHpVUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDA3C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716987862;
	bh=dPC9E1NliEFUbnXJ6wVhHT3DAaJZxnNzeIIy8X+8U1E=;
	h=To:Subject:From:Date:From;
	b=JtnHpVUsFZRgXcxay1dt/sMRV5zLRfm6dIAtv0EvJNq1zGq6n5z8nFMz8uyZHx2EE
	 4U4rrnA4twKnQSJjoZMowmGDEKvucCkyBH9J2CBg3ll7y9e0WCQhWOHehf4XhvboNI
	 4do8ASUmK7ZrynK7VSJL2y1I6W7378DawF8icOr32A4i66zi5gk94VPDejIoKEbLwO
	 bymvl63TqmGDFcVNBZNkJD9OLWKAgMsfVqSMij39DB7K8Ip6MCymZAcPlYgeeFiqPW
	 xef8DTLnubHTgxus3VoNincC5JhtVbNlubGkLo0jKgtEl8ReGMI45XsAWMCjn0J+VH
	 LQlQnpWU0b1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96FDC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698786281.22229.17763374574436064190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e7234e5574516656c48cd4ee3e4367cc1914d51f67594a92ac41409a57d966
Date: Wed, 29 May 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716987862
