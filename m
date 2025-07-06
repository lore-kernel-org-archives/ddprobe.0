Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AD229A5
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751766595; cv=none; b=Zu4Rk9ONLAQOYV6RGiEH0aqe23n5rBzzfMRb/7D+glDQnhwhnsYKK/ajJJvqlt/bc10tdgHImufCG/7FNXaAFuVfTH1OB3mIEoMx1ZQ5IfcB0DznpNWoBxQsm8QDramhFFn28OZIjGIl2BshafcODNh2jcFjSkBzkP9FCaL7dbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751766595; c=relaxed/simple;
	bh=Lr66BlbvV59CflWTyZOKdTGFixorDhX+fnfYPn9EGcU=;
	h=To:Subject:From:Message-Id:Date; b=BVyeH7qjGEMuNCKanZM4JuKJ12/VGJROMndn4lsL+hglRhUBVtCn+FjZuVpOTpBNQRN8DmUUPhL1mFNJRibf9Dyu3MniYCrptIGtQEw9ZUu01ZxIe0ndNDZ7V4dPWtvDv7wht1y7VEZ57CxyPTXKPzASJN/Z14PY/95G1+ZghWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoZYJBAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoZYJBAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751766593;
	bh=Lr66BlbvV59CflWTyZOKdTGFixorDhX+fnfYPn9EGcU=;
	h=To:Subject:From:Date:From;
	b=LoZYJBABgMAxfoMGfecHaagS/cIbXIQZ6SPEXPG9Z1vBtGdMtzFW/qQBpXcLQS9rX
	 jmNn7q7sg9U8FFmVCpKwB0VsQQ5JOYyXRoAPARepNFlx54PIH9FqCkw2/dFkZZHl+h
	 tKcX7MxA01+DOV5VNlwAgX3a4ki0gC1KwHxNcLqFIulCPNyH5zU+RLW6ykCQQS9b2m
	 Lbme77iVx//D+Qj3IWKtkQ00rBRapTF+agVw49kCyity87OYdep34VooE4oIX6QHke
	 XEm60y5NkoF3FEE7/cA23i7G+6cSQvCBEw0Bq2sw9Zx5Cr6TPodY1xZ2uzIhmzRM/7
	 NguDGTm+RANrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92204C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176659357.11616.4846373254415625547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897b18d8df7cd3769ce42d3a87e655e9483113bef52d4e96d57d2134e662f527
Date: Sun, 06 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751766593
