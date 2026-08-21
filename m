Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C97435AC28
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787279434; cv=none; b=Dvi9SGIU0dxwmxY/GEeBV1N65R87uo4clCvNAtAVJ9a5b0lwyxl3COkTpsgUm9xiK+IRcKGgVz4/iTG1wmQr6o0d5SE/DyCfr1bihBaNnPTNb4p+UjPel7ZeQ+NTEswPyDAWlmKmXdcq2UU53hpnhrJWE+LIoOse4T2gWFX0ovk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787279434; c=relaxed/simple;
	bh=Uz4nlyg05pIn7NCzxQnbTgZy9BHPm2DXzwuJpWDkoU4=;
	h=To:Subject:From:Message-Id:Date; b=WGHxxFmG2ypO+afMmdGwd2Q3Rm0jnHuG6JKkzY27cSI7dg6tZBr+wN/dcPNqhjAO9JXsbzlZV7amKzQ4a/9BgD+Lq2X3Fst3KjbDIoq+NRoKWp8+p/yRRWyhXu5e1Kyjeo+hIaJAX3OQubWVn/5GscHtCkHCq1hmG+/NuDMUWzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3Und40R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3Und40R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA02DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787279433;
	bh=Uz4nlyg05pIn7NCzxQnbTgZy9BHPm2DXzwuJpWDkoU4=;
	h=To:Subject:From:Date:From;
	b=g3Und40RLZdyCWzkcopXkcAEEZpSuZZKOk2F4yDeLS34NeEmFj1SROlbsREbESKdN
	 Mki5IorAOm5uRmDTYm7x8EsBiVMbmr6RVmo4ZuvpENPhZhPWJSQA5kweoB/QQ0VMYD
	 VUelurqs9NqHZEqBcwUZWYSFhCcJUNoRWgl1rd+yToyuChPjBnPue1XYivgORsMp5/
	 BoiQ39Xgd0b2amLC5SBdFrSGf+1onhejZrAkWscuhDsm6curtHByQeBdBnSoobrcyW
	 ckChclXhh0uDsPFH5MSxwRwMtOg+pWcjhhtynRxj+SCW1NUwfIU0FZWIPtrJDFIOeL
	 xvMFFDoCCcLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3677C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727943372.23592.17497693014809470817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260caaa678cba2f616a73d79ef5bcbbe410b3991c9c7adbb77f43681f78886a4
Date: Fri, 21 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787279433
