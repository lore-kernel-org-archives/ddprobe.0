Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B30A2D8379
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759511394; cv=none; b=GgEr9+50te692UvIqcDwfK09Q1O2Xl/ek8ZDyhwuD9hdu+jcgGAgYT2icLz2OQ2LTenCGCT4fGo8GC1MTnRhlBAjZ692OIfyenX309qsiSK6/ne7QsC9vLIq4qYfC3+MzY0omjU/y+RgFFBXmPuI/w5A5Y/8TRTDW+5By3VKnsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759511394; c=relaxed/simple;
	bh=70WVPN14H9dnNLocJTVokf7QikR/FG+hBZOUpWoIYOY=;
	h=To:Subject:From:Message-Id:Date; b=kedsT0EzLAIKwMek8rzOhGIeVbVQp/99+HjjhsxppORYBdD7bjp9c3CN8PAgRYZ7peQ/0vAr/vQv3foObkYXnvP7Yo6QBtZNpPfdJG8tmfSqEfkrd9sNasgE+aorRpeqejUz0CD41y3Jblrl+uwJlHTs1NqJgSwGUjA+sha0AV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od5xaUxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od5xaUxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF261C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759511393;
	bh=70WVPN14H9dnNLocJTVokf7QikR/FG+hBZOUpWoIYOY=;
	h=To:Subject:From:Date:From;
	b=od5xaUxe3FQMCo9eUl9ChDqhQcVvITg2DVsz7Bd1AdJEcyxvTt+Mk/ycBQNPM/71W
	 JGTRDjh8a7Gy/oBkKd3u2ulE4DLemwzTegE25QE5tul4VpGs6I2Qy1oyTrZvFlzKI2
	 zGU+2Ug/sGlCkeeeszHBMzBEy5iVTrbNUMBuRbfwKeSONK9xCKAmSaW/RBI/iiZsWL
	 3jPypUTwO36YWTpXZSVe07YW5RgcpifhXSXeIQtUMYX4YG6j18Nj/pTi4yK1dlw6yB
	 b0/vMw3ErqGw2CrKS9046f/Tc5/u+09wn2y1oDYLi3tTptCMlgF5YNEMC/z1c05pJn
	 nuR+yK/SahYqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B16BCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951139362.7911.5341011956322174414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2579ca6e3b5bc0ca4a27bd88e23dbdacede74aba7a74fc176f453b12ce7417
Date: Fri, 03 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759511393
