Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD123185E
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751353195; cv=none; b=Ely69iO1M06XEgCJhbHIV+b33jddiPSodKteyD2fOFpbX+smOWWjZoPrPLBFllmrw4q1O4tgSQJBPVYcgxPu9IzDTgfAQRfnhq+efiqnFWFxStlyJYMXYS9Hvyt2qwt87Ipy+pTkTXQ4yIhQOAVVsM603f8xlrnJYvkz4MWevOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751353195; c=relaxed/simple;
	bh=3zf5ECxFYbDVV9F/E/zyQVdTR3isyU7KHjwHcS7TiIk=;
	h=To:Subject:From:Message-Id:Date; b=HCUjw5rvkyZUqN9jbldYsmeyZUUM84e3zQM4NyE1WKOwHJiiMVGHHkNH+4lcx2tfCaWupYpmQre7CEnhCDkYNZj8burs1OiQ1srFMQsYD/1DOsqnttdMSVKvj6n+DSNjUoC8Fo47U89SXqncv1kyB0d1yiQdg7QBpTAV9xoLHUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVZD2Zsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVZD2Zsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751353193;
	bh=3zf5ECxFYbDVV9F/E/zyQVdTR3isyU7KHjwHcS7TiIk=;
	h=To:Subject:From:Date:From;
	b=QVZD2Zsxl5qt/GVLY6Ju3lxFPo6jn23suw1uFZbwIttYjqE9N3N+OlQ9vGuE0UaIK
	 2xP0UV8nlCKEsEesMEspZvjIQhkVI1TwRrCx25+r75OzavQY5cdgHldvVHtPRIM05Z
	 8gCAmh8XC13Fau9D9jcNSD+bjYPRJBVVKq+t1MUDhliJlEE7CbDGXtzSM88Hwrd/sf
	 YmCJCzi+yHzrsYSrMc7p8VTEdojRasgfxko1dr1kqAAVCM8EG0KrAEpGmzd1WXc2Li
	 m7cAS9aOidK92YLedEWpRmDyEJw1bLYDA3VvOycXE8O+ssUEoGpw5XWnwk68DTnZz9
	 27XOINybrH/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF7C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135319360.20806.7924258809659120980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c273b3b7705a1bfd2643d939923d5e0d31808a5159ff84dd7ab9334f177b702
Date: Tue, 01 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751353193
