Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51081183098
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739777335; cv=none; b=aFfex3dfXdMINlJTLBFLLJC4MDfWbw50rGC8pGPoWkLruFK3C9IJ1v3WYMa0AS34Mgz2Y26Z0TZ3Fyt1auTgGa1TEsnzLtP+7XcZ2G2vG01xa3P9/F1cFawyw2QwzRV7/G08gJVCkIDbWxKBgtA4eG965MB65Wsou0q1k8QF3Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739777335; c=relaxed/simple;
	bh=rsCjoVm3K1HC2O6fanyJ4jpRnDexQPteZKZm9utp4zI=;
	h=To:Subject:From:Message-Id:Date; b=iWrPXuKWotivsVFHOafxDuyaXQHndKLC9k1+J+kIrODxTWX95kOEXnItjJYL4iPQOO/3747hqrs0zSzuzCWwdf10iphR2066289NQmdBOafequZbo8TptZZaFnGFOpMrPHEjjRsVLji/KOx4Y90AG1805IEbNz4t4c/xzAK5qCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imCN2szL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imCN2szL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9579C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739777333;
	bh=rsCjoVm3K1HC2O6fanyJ4jpRnDexQPteZKZm9utp4zI=;
	h=To:Subject:From:Date:From;
	b=imCN2szLiFmD8JiwXDWgqV9vGVtNNwSA6XuQ5xdqZ6qIWd7O54uHl7DADInn5ctq7
	 sava5Wc/8D74yoCWaeLedtAi1W+TgPfwNW6tU7HaL9s0YiUuzda3BDfq49OMtkOJ0t
	 TYbvVMJrx5eqFPHCq6lvXB47nedlabWq0jqbs5II2SF5Qm8F+zAbiQQi4JaKF+Z9sd
	 XYmCsmWd5GCtk8AlFxKiiyhORJDYy1WveO+JrvW1XO5WT0bqr9MQ7jOTaWqxxPzWO0
	 nUGu0V9f+Rc+AGUfme9QcKxg8jNwaoVJX5lrwOXximO0ww29IK0gB+3mWraUVhULIu
	 4L7HK8Y/LCYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A719CC021A4
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173977733367.18218.10123783997375700857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4933a669ffc60abd012790f621227e2385bfafc0c84266cc71498d9366e86f
Date: Mon, 17 Feb 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739777333
