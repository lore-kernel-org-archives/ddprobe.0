Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A3D2820A0
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747275594; cv=none; b=CkUYTu0qanqdVu8s2R6FCldwVYbcyUukgxWBVfL1fcUn3zryQvMcEAhj8WeIUgoQxHulOmwDUWElCdZ8Nq0HmDU1TBtzXsltC2K5R6t49BAu3eB8XhydrzCeDBH0diWeBSkv2xZFqJ0rpRomJyj0iDgWAHWHW09Ubn6ZxrMq9mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747275594; c=relaxed/simple;
	bh=LEyqXxKDEfbIWieRpE/+iUjInmbBFDXb9QgxddAmh6Q=;
	h=To:Subject:From:Message-Id:Date; b=RLWyrzpXfItCuFNKYXJV/hKsRvnBiQBcBuetWPhBtbzwOh2vevM1+XM4w6PE/Y5gbGO/Bwifu9Z5U/CuBQd6B6YLdAcTYtSOiuJXneL+wOE4kbCq0NulfDPTcr2kCb53fvvoHpEkbOEAy+npTrkiPBMiVS08HTyDwnvwTN8mydE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ/wCfjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ/wCfjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747275593;
	bh=LEyqXxKDEfbIWieRpE/+iUjInmbBFDXb9QgxddAmh6Q=;
	h=To:Subject:From:Date:From;
	b=LZ/wCfjmsF4wsYiwY6eSoBp0xA/ZOz2gy/kXnI9J3ZXnFGbTq3bWheKoo4MmBQR7j
	 ND/FVaDmoIncPqboqx/YSlszA5Uf7l4OL0VvJJx4pbsvQ+uRiwDu+zQGD9kVT0R83p
	 D1FmRR4xiUWZT1G11kiUSH77Po9fBjnCrcfQVOb+p6JXV03Amv7Q7ni2UtiPWhVK3O
	 lec+pw4Msh1yZeVwzcU65dSwQNIXdewTjyQ4f86IGeXytkfPBnY642SkGxZSfArJRm
	 NVYrRvTrnfcsAlirTDoPsXsJkqRhVhVR3G5iX/Br/f+aY15/wABNg0aHRoifiILcb0
	 hKsW9DoBiYzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042BC3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727559358.3141.16180431364958318353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887c84c198ec21e1014cea9b365a18b443632ce74e1f41c1679722d2bd2ebafb
Date: Thu, 15 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747275593
