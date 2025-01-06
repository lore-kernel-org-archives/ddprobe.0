Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342A31DF960
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736189154; cv=none; b=l5Dfbn3/2XAKbb4wl5EQB5+CQKQ7+I7KMMR39fLorLXYlngCDOk73qgKlCGxvwd+0kS6lR6+wWwAzOSxxsWjDFwNppwo0nbWd4zE4P3KF3I1UCPrKso/S1SgPNY+t71RpOYhO3bKl6s6yAO/qMVaauA/+s07Yt14GbqZN0vRHm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736189154; c=relaxed/simple;
	bh=XTaKQsnkYviUyAyOiVCehu+Xu1UjocB1mZm+d3BKj3c=;
	h=To:Subject:From:Message-Id:Date; b=S3ZDWyYqgwhldLZMjshrPhVjBUhlk1G5R6daPfUeZT0MDGqXeu1O82f/aeKjYL+YElIirpUQFYQuZb542QbBXoMzzYPM9hryWYIwKIU7R6Auak+/FAf0ryChAi8SA7EAIPGTnYtO2h3uObLGBVt0SnnkLjDwomL2ZDSaj8HR/eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3ox6u0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3ox6u0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9503C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736189153;
	bh=XTaKQsnkYviUyAyOiVCehu+Xu1UjocB1mZm+d3BKj3c=;
	h=To:Subject:From:Date:From;
	b=G3ox6u0fQEclx0m0in/QMldwXuXr+mfPWOH4lbm2XrnFj0zSPXGeMRRq6MjvFf3CJ
	 aTE2HgdiNI32WrQQUZwjMjfFyU9LJsvnFnMvbhZRSKJKDM3k426EY3yT8jWzrZceKD
	 4lQpeaVqyniqlpUUY4kZ8iuzGVGAFJBntedESsFLo3uee8qeQuZ+ipct1oL2+Q6iYP
	 XGNlqaDkOLLoJX6ug2+U2g6Okdv7j+YJESCrQW9F4D4ga7wlT0zv9fxf/jMopNyVEE
	 +oin8qQDKAtcKyX6kvX06JOHDW037l6xAnk3szjDKALHeLVnbMwdYzRy7NChIuMKk9
	 QiSVxi9aM8mrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919CEE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618915358.12791.8628726357526497173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf8faba75fb4081be04f7e25a767b5fcd78549ca72c72be4c24c5d61f00062a
Date: Mon, 06 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736189153
