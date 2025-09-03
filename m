Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217241D88D7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756882794; cv=none; b=VK2rqq95U2qvw3iW7Y1eOwHwLTMTfHi+hiM8NjXCJR/25rAWRVRnGnk65YgiV1w56qCJkh8/3EhbEOi36fxz66vDQfoeGt3XzKh4Q96XyuGbMgYoPX4e5TITTRq7B3Vmw6yrTBDtYVnR0XhznQWY+yVvds8wLLfpWV+bPYdJ1v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756882794; c=relaxed/simple;
	bh=xAdo00kGb0+K7dQ2jt9bjL0fjlprgIIHiEqDWtKNURo=;
	h=To:Subject:From:Message-Id:Date; b=VKXxGBReVPu59BAVRw9OeiKRjpr3ctm7hwhuIXrDUtsDOPGGP6D8eP/KQZZy3MyUreg06wKIuME0lYhlrppSso2HtZuFfd0aGwz4s1ojW31BHUUjS/73TXVG9QcD53km2hdkZWEFkWjVIEG3br/i0x9bKJHA35JS3SezchM9pxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNoRg4g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNoRg4g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A069BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756882793;
	bh=xAdo00kGb0+K7dQ2jt9bjL0fjlprgIIHiEqDWtKNURo=;
	h=To:Subject:From:Date:From;
	b=LNoRg4g6G/J039px19grplX7JVZuep1u/3+/B9Bd7fF1zWsuEvFwosxkSTOhFTpwL
	 Yt+t+lTYOGifzzpHuMRwmjlRweZYvE/07iutQ/3WoG2M8h2RUrdGpDkdE6gaoim0aN
	 eqL57LHlIoJjmONP7lI1GlNMJVYzLiyP26CjQ/CBbE9+IkVCvW/9Z4OqTLSJAADhdT
	 kQ0aPpET7+M2nfNHEQz+I1jL9S+8bmv3Ebo0MPZaEbYD6IIaDSHKQ7oqopf1v+AYFA
	 1CoJMnn2kUoHrR0zGD8bido4nv3cD8TOp6Ns8kvdstuyBTRcjmQRW6K9Zoc8Ghgaja
	 /moOAMwgxhiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6BCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688279357.4024.6152963613397645445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce626b9f25752a555fa5d4e0ab5e2e2f01205f17c8afb9cfb088b3c54b75a8c2
Date: Wed, 03 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756882793
