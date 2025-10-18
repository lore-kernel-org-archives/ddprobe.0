Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CFD8F6F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760761194; cv=none; b=syK8/xXjReYxYtA1qBy5F1EUuCxvCekjIVhNam2MjLIJTvjW2MaJVxL8ZjmmDq77lEO5fuxt3gotPvWZqenfyuQAmqAN4Z5OYWtujqSCmzSfN69F0bVhj34by85JOgiMKUWGVWy4CpBD7w1pyt0yN/IV/bvOsP/gaC/l18drCjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760761194; c=relaxed/simple;
	bh=+Cr86nV5DwuWX9IJ0P3b4TCYu9wpatq1VXxLNgAqiLM=;
	h=To:Subject:From:Message-Id:Date; b=A6ZQeZLjr1Gvp/QBc+xGEoUxSogvMS5ps7KzZN3Unb+Liuv7ajcqVetFYOYL22qxQOyGLXlqbvQzOXl9xIb7sGqByQYKddDprMbM39bExTiPz43bnXk21mwTo+QduM0ut2e24/uLF4+PcR9JfYhIrYV368ZiRx2i+A02//pSt44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC/lcvus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC/lcvus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC230C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760761193;
	bh=+Cr86nV5DwuWX9IJ0P3b4TCYu9wpatq1VXxLNgAqiLM=;
	h=To:Subject:From:Date:From;
	b=sC/lcvusZeijyRKdpOWCvouFPjV1SHrLB+Xbmh0PIm0nj4O266swCsCPZH/puhZE7
	 2IEH/PXVP2ioebMHpKXH8heSxm7tMBaBqsJNa6toRL5ItPehHO7z9QlXsFaVlvRmdP
	 /F7s7Kk8L/7XhCr0rqSUAGxPTwhe43IIhU6onGj1/0hmd+qxF0jPX4UrlvG56d53Pi
	 1isieH9VUF04T8d60Dg0fNC1X5d1cyn4p8kJr6aYDNoieEK+hVHTP8ZBy31qQXEc3V
	 xaYmr63q+TqTnREtNFaA2E3pTv2+VJRL60we/WB26DDeb/eVbH9BUSDZTY769cNr9V
	 uAyIX2Z/iORhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FC4CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076119364.12635.3051134234474068434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220c25785a2705a1b42c72a098479ff14e81e35f9db4c2ff083177cb22c5a2e4
Date: Sat, 18 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760761193
