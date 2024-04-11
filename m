Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF352C68F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712879363; cv=none; b=bfdv2UHEkBAdyYrfHU13WLTd2bh1NGppj5hKHZ1u9DZlfUGxKmnEFHbOH6U1uwALEZUz0+o8AABnqxcrqJSQa/ugUfHIg7+LY6I5Qfkyt3ugFKMP3ZKmR0eQvr/EKimo58dLInjWEnMok+LfC+G3TOox+VRIgzttHSu+8kineC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712879363; c=relaxed/simple;
	bh=NXl0ArQ3Moc7MFdS1coW4zifIeIElShGo2aOyazLnU4=;
	h=To:Subject:From:Message-Id:Date; b=DWy5E8YzPvacomchhjh0UlgS0s8ccTq4GAR5ud467FeCwLmw7zM7bcTyoVGs9UJz841rf4jsRbY+/pBRL+b02nGFf84zNKdmBXAONWLGCYUNyr3oN3sm8/TfmKioGPHXCUdgpCQmkbcB6RVIpC+UhTWcv3zZIohXd3ty6kUgM5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4Il1X7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4Il1X7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BEBC072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712879362;
	bh=NXl0ArQ3Moc7MFdS1coW4zifIeIElShGo2aOyazLnU4=;
	h=To:Subject:From:Date:From;
	b=b4Il1X7iirj5Hf8TUPMR11kuRkFQjZIv6jy8uePCI+FSe9FwnsoxdYjv/ahDq0sBx
	 Fsk+zNMq4cTEOsPUh37CQ5eLn3BU8+BkygUKPXt/n4Lx44LmGeWk6JzXjGIrRmbLLz
	 A/BjebqFQy+7ICYhbeF26mZMHm9Ira7JZ0i1xXMKFXp2V+yuaAy9bFKt6G7KbS//oG
	 HF6P4hBTODPyEE0EWv4Rg0qxcAQF2rJ8Xyyxgdbf0o8r2sUmPmFYRFsxdBbaw5lFd1
	 hnnFHu8w16KG6yDlO+rrM7jUnTV1LPBO3ESMHDvk4G64eLBPMVVsx8aQJ042Moqn3m
	 vsq3OYnLr2ffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2C7C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287936277.24058.6295258182306756453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2467ef2bec7625afa48f6a9fe0e2162733c53e82f19724991c91226007aac64c
Date: Thu, 11 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712879362
