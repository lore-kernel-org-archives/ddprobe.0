Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1861FC7C5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751453994; cv=none; b=cSBI8SSLQFTQyPC6WE22IOdtIDK78y8KIQhs5o036rRLoB53eRmswGgizPKNlWUc4PraRZkxCirv/5MLfsyi24gtegHmmVs93gu5awESO1Sw2vsBxcVssbMsVxctbAK2+d882zGsZFUHUbf9WttsXva0XSa04Kgv3bj+JNHxzt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751453994; c=relaxed/simple;
	bh=MKwUKAslDayFS+Ofb4BRkC4UWkRZ6Xy0fW+vnovXVuw=;
	h=To:Subject:From:Message-Id:Date; b=YlefYRFJxrqQ4PxxqvRfRVuvqlw3uW1DKTSP1dBkPhAI67PB0W7XM7sAc3w3+4XZAPL6aTePL/FOFNmt+ppYXagekn/oX53xFur75UUgWKeS4ORu7vAJ4pIMU7tGByc4ooou5ZtKKzyV9+tSPSbaGWIKBKD36NuRu++rwjQBKac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKT+e3rR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKT+e3rR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F42C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751453993;
	bh=MKwUKAslDayFS+Ofb4BRkC4UWkRZ6Xy0fW+vnovXVuw=;
	h=To:Subject:From:Date:From;
	b=TKT+e3rRsAQV+JzzUAC2Ab5XGAPA6vnMJzMWWPl1MqyiQ39FIW4PntJEglz8hNT2a
	 rl1MrZ/6MyBg0QGUzUoyldiaBPftEb7cOMOGvCDETCU6h4i2B7X6FPzz/zwlJO20Lw
	 6Fn13O1ueEdPE0V6ZSubbS7aegJS0lNC57aQHtuhz95oS7HGzxScCEceqJjG93flRO
	 jkN8BBnMJ9fvcOwnEY15MD3nWSC5/zlIHD95mEk6oX7MjNeuWt47UR+Hl1hKHTzp8c
	 F9EB17oN3sgS/ruL6j41HKC9hiiMZ+VeB2ODsKrsetE1n6sV4782QqwtKfScog2OhC
	 P14Nd8IZ4hW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA7C8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145399362.28639.410200756857259104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b770c6edd5d5032093981b9b880fac0df7cabe93309c8904febf520ade0a9505
Date: Wed, 02 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751453993
