Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3278E3BBF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758380395; cv=none; b=jjCVdd/q0vCEBxvSrDYJ5dL0jyycioOjZjiKg4a9c/oFNROYvX5x8P8fcgPsF+ULFcpWQB6vQ47ke1NGPGC3wwm3BYMjlqUqGsk6XeEolxIpu9Px9dklXjg5SmmvoI9vy+TA0qZSGcTm8zIEm5QPOcDEuyBLfybVwkRGdOd60no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758380395; c=relaxed/simple;
	bh=guLFmyo7oV7NEo9eaGdRXxigHnU5bBMp4DB6PAQgmb0=;
	h=To:Subject:From:Message-Id:Date; b=a+SsWvhwMNOmaMhgHS4qXEqgcecOjJYr26MgCk1JPQ1cJg6nXVJ650bR07usaNVaKA8SDHpxQOPgoA+5Bo27nbfprA4Fp0PFLFgF0veJtFfeGAPlcZITuijzHIBTPcWcuzHAmzWbBF1oTurH3Xy5yy9pY1GxwS28EPuIbGH0V5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsWkiIUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsWkiIUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2520C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758380393;
	bh=guLFmyo7oV7NEo9eaGdRXxigHnU5bBMp4DB6PAQgmb0=;
	h=To:Subject:From:Date:From;
	b=BsWkiIUI/NknjihoefOA2exqV6vUrFhcZnWHDSOVqhx+YBaq+nzJYy6dN/Xq2wFcu
	 nLUF197U8q+e6VyUm4nkvDplNsJIv5uKVEvC8qsgEDyykoWTTJ3IhqS2oRsFDvcm9b
	 P0xHq/tOLJSmBSnzK0cUcwuq3rYxakaotbTCt/ivh94LhdA4R2fDwD3UGewNiWs7k6
	 7dfFQbDigf2GQieE/tAP7YWI+zibqHHjXXgzIjTt1omwvHAq3w3m4JrShUEBb9p/ty
	 9j78/sA0kaQcGygKTMKWScIo6uRU5mXq53qau/VEHPPeEm9x71PjH30mfloWUgYeXI
	 hh2pE8v+b5hWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F496CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838039357.7994.16399229974891795909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01088489ac635bf9efea0c7ba474acd2a5c728e88c0c95422a760afb99f0e76
Date: Sat, 20 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758380393
