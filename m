Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213511F3FEC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764474774; cv=none; b=cWOH/9ksp9qftQ9YeqwC7ncPW2TcZFBrsuFLgnFoULyf3GWCMCTSM/KGxo4z0eYbNXB3vCd39k8LhJjVyESvGkZ084Z4Vd8TiXXZIpciEfSn5c1aeIqBsShyjLS1O3mdXYIZFnpyX8E2znqyUPv+M9eEmo/aDL0lgHhYoMqBIz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764474774; c=relaxed/simple;
	bh=lnFxS4OdVGKbKUKp/WLCZ+q05QQHVS23xEwKtPnkLM8=;
	h=To:Subject:From:Message-Id:Date; b=d45pv1VzPyaffQEAJhAg5amjrvscUFekHfCUqUYI2peomzp9BfgMGFBdtJD1kALGWpMfFzS1ZwTeG9eZujy5mJjHzlC9rUnEwm6vbdKIpjSPO9Rw8h78ub8H51qtuVsps+jaDxYdvlCyLstb+aIRgMfMze95bLHCA2gjIO53LJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDNZXiAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDNZXiAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764474773;
	bh=lnFxS4OdVGKbKUKp/WLCZ+q05QQHVS23xEwKtPnkLM8=;
	h=To:Subject:From:Date:From;
	b=mDNZXiAQSL6UEQp1t7TcV89om6z+K0vJkWFE54fe/6ejD6r9g/jPU+81La8/5kXEK
	 JRkh+96yJnhJSNfIFYa2s2XARme0RknG8t7rJy/d05zEVOFgt1ASe3xe9jTkXM5tap
	 XyhSj7s6mG4kBD8yB94XzvKNR8e/7Sc4QOUQxEbmPfOFJVHpusjgNdiNLfuQ61z6Z5
	 3GXWIWBERDEyk6sPPB9wpK6tJvqaeuYtURSZqlO/UEC6ms6Vm2INzpqaVpj4w4BxBg
	 lnGUrT4IvfZSXFPK59rwvJcuzx/uB2qzBVJ/3E+ig/8K6T7f0xDTrrQ9U6lRDhfigZ
	 0wT6wOjt9zu9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3ACFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447477359.21384.18217594848319190523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ac3a08185f8bee515fce541c8a396867cf36e308a81016a7670b1f300a5315
Date: Sun, 30 Nov 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764474773
