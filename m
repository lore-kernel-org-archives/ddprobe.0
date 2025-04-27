Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379418BEE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745784594; cv=none; b=nrBqs+KtQvkJQjnRpqZoOrIstq6cq9v0ZYy+yst8xufhIw4Pfm3A2RtxpYncleFTJxNThc3cdDiviNEnTDnqL3sceObe4qsPFGtvL4fZtEue13xciKxF83kq4udIltvUQjOwA8snfXG7/k+WZIXsiS7tdrJWl/ulancSpsX+Oeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745784594; c=relaxed/simple;
	bh=nEO+Voxjhm2DuRXV4F5yVulAeDtMo30i2Jqh9PLF3+s=;
	h=To:Subject:From:Message-Id:Date; b=oigh/sxjP4yUZX5pthJdKJfMMHEwPpSaJU0wutlJFOqjSUfKl1ya1wqTzxkWMNK17eyScIcFUgCsGtVjpz2Rzutm4cg451ZVDKpv2CZrPMGF2cbk9l0HVyTgXkpHDHAs26shTI+faz+vy+LiQIWgavM4o0SCYMbWbSgp+5BEkcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEOdY627; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEOdY627"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A331AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745784593;
	bh=nEO+Voxjhm2DuRXV4F5yVulAeDtMo30i2Jqh9PLF3+s=;
	h=To:Subject:From:Date:From;
	b=JEOdY627AYWEIFBR8f/p6iQ4azfAS3ctlfAhFbseUOMBw0NrWaVH3JkUuQ1q63HXu
	 luWjd5FkJtGTlZS176w5r+HG+kUIwx6jqqk6lAZCLZODypOaSh814RdOqTHE6HY3e3
	 d2dOffjgo1n4iCrlzijT/1ikmRI7jmzk1oc4ZRFm1N4oUn+CGFdVoKNiirmz+IjNAy
	 SRZ87ZgnFfd6fuH5v2xm/0DySKWa19pR4s1EUQqW5nG+peHS63zTqUF+ZOrj4NkDq/
	 z76IvTIHETDwv6GaWUMnHGrhKt4UwP6dblEXVsknM0WJmDcAbduXj/oMQCNh0HftAb
	 Th5xphAVQuKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DDFC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578459357.7121.3119456852586404641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f31e849f71a659872f4e99e69de0f9338332e872fdc39527e6f445235ee3d18
Date: Sun, 27 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745784593
