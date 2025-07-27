Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344473B7A8
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753598394; cv=none; b=U+FbG+xTC17obano3fluqq5jAzv4O2Pe4Y+yA1gAoRZb/1ude2M1bYDLD0KsuJSHa/UYDu4KRxRItyI9bDK6Mc/5E6+UePOP8CnB62HhE47mU5EPCqV6wy7UQSJtCwUv+2AGERTLorqvoTEr9h0gpamknV357WMfcBVni3yM+sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753598394; c=relaxed/simple;
	bh=vag2B5Zft0R6nFxiW48+MPLbGDdJ7I5K68GwC8E9PPw=;
	h=To:Subject:From:Message-Id:Date; b=PuG2+7qbrtzuiI/pBFcMpBX6VY4g5q5cOhT1Z191M8EoJDcxySqn/KOltPM9PSCq0VnnRjclQyhxa4LBsKL5Uj83/mOUeBOnCAtqlF7+W4HrcKsi8DMX9ImBjblo+jdrANxn7xeuicLOxkYPrFUHd2NcNXogq1i2YS1+hcjRav0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jES2J/t3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jES2J/t3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BD4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753598393;
	bh=vag2B5Zft0R6nFxiW48+MPLbGDdJ7I5K68GwC8E9PPw=;
	h=To:Subject:From:Date:From;
	b=jES2J/t3Ey1GYT+JdQonwETn6EbJYXnIRrRN1Scsj5kKh/gCn5Fe+FguQ+bgkzhdS
	 hAXEdtGj7UgXwjeXUS+Z60vhNRZRH4cRUVGm2IiUrfby6c1spWSWnEC+64p2XcMRrL
	 5P33tVIg/S3vuXZpDaAXOUb1EIWU/K6LfYIzgRB4ruixrtw/taQ7cPa3pTOLjOsTHq
	 uVXu0dqQguIVVZ3IjdEXlYVpQd8c0f5IeTwC/6RoA6sN+4Ra+s3ihH+GqN8YlZvJPm
	 0arMYmkMZfef2Cnoc4wXo+bOtp2aB3bpHF5OQLBXSegljSkhcUPE0iKJK5mBNnqsna
	 1mmW1PkRlbp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244AC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359839358.29517.540390292199810517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03eb5213ece98f192900022603c83f2b2126bab0f93d50aac9cfb7b096dcb26a
Date: Sun, 27 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753598393
