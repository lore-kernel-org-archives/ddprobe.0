Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549A5A95C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737224754; cv=none; b=Uvym70VPEJ2wBTpnd6gU2Ug839Yw4jGQQSv4AKgonhPRRI1EU3uCXFicH4COZFejJZi8EWcA6yWpIFufcbANTlFrg+3O0aGFM8b8nmwUtQyaGYudX7deH/25R3Jhyfv2oKCt5TQvGQzl89vbFVGFVcZXOQRz1CM0RKfjWSwx0aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737224754; c=relaxed/simple;
	bh=7y2UHei+UmQoBcyoQOlXN1nxSBq6joKSYMzht55wngE=;
	h=To:Subject:From:Message-Id:Date; b=KRwULZISdTlskiNI6RPp/hiM93hTFKOvlKQAixMXVHZzkzmvs6UwWbh1xgnZ/BfP6klyPUQqJYtWrKxQH9W4SaMqUcWT/JiSwxD2rGgpQw91GNND27Vbnv4dYPyPVU6kN/BhmdnkHbmTvC5TcXnmUdj4XnKi4nHeThymoaOR4M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Syg0lji1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Syg0lji1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D0FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737224753;
	bh=7y2UHei+UmQoBcyoQOlXN1nxSBq6joKSYMzht55wngE=;
	h=To:Subject:From:Date:From;
	b=Syg0lji1pZdLpIK2DgU0M78L6r8IaUKDWzZJEULzTe9cAvrWLBmyUToEWUl4Jzi3M
	 zzvyTzs60xTyF4yQouljx3OQdGVi9D2Uhj5Ud40kdSZUnyJlGCurlIGhkO9WWCu9PN
	 0JctizFApjv74pjeTyrvF46j7/6gzNOG2Q2xFbbNOM25GP0NXKWzwegVTLmB2rkOQL
	 7M/gShue/bNZCwd+GBGz6y3S7qIOIUfuVVKu6pAZCX4M5u/cNrs7GajYerLgbffQ3q
	 Bi8DMbiAy+LDLET11iUE+KFBsIoAXcoXXWD7Y3DXA/dMxFpDVsBu4AsYnlYEe7+2jn
	 GNdSCEuzcnH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CFC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722475358.24898.3391703881434274568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e39a47082278c6cfd95021964143da8e5741e8f0e512cbb09c38783bd66ecb
Date: Sat, 18 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737224753
