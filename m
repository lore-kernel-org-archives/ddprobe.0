Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1069D1684A4
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765141974; cv=none; b=KPTB0A0WX/3Xl8AuyDq+3/rJ5YLbxcaO6DPWVh2zJy3PmPfTSUyntoOdYh3TRV9eWrKntPxq+hj1P6m3ihHWYRQ/qFa6mfKXC9XpVrvCDYb3lPklibwa+Aca3WndFKmpcAm9HBqaxpccR7YnXAnY+13PCMlDyyyM7IAOa3o54Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765141974; c=relaxed/simple;
	bh=DZ4t0JErbo6nWPHqXMShEzLqMu70vMQgwS/MROX8g0M=;
	h=To:Subject:From:Message-Id:Date; b=qTs7wWjC15CNFpw5LIgprh82vkkNvnlTACnU+02JJAZyf3JifQwZFB9950RCW6h8xPzT6FzkdRhiXaIylNDKrKIpW3p+ahY7QYf/winBNjcKWGKjX3z/wG0GU5EIwYKanxS71JX/d9kKHiAVv9CEvVyoz6cNAvAJOwrl4BzUdmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc5i8SOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc5i8SOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A123DC19421
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765141973;
	bh=DZ4t0JErbo6nWPHqXMShEzLqMu70vMQgwS/MROX8g0M=;
	h=To:Subject:From:Date:From;
	b=bc5i8SOfsLvWpzItAaVFFmjstMlxm1VMCID3UNZ5EPpGLbkppzJ8AZGi0CnxwNGe4
	 7yBGPhql9ah7hx/M/ATsCcyCu4gCJ1uKisiAaSildYPuzbIJeyv0zijeTIeYPRZ4IX
	 8ho44TJBHyi4evaKxqiivS/4ffZwOH7kIuXVZUVIq7PUT3WZoGLJQ66e8fgp/uE+ek
	 fCo7tiYa4ukYJHvB69V2uWNVvLPWDR5cBASRLrSNz+dinlng8Jcnt3gu2YJ34HiOEf
	 UPUxgzJUQ4k2gR9Oz+Lkj3lsYL6nSrQTrwf3jArkIODJlVg2ma4OrR5yqs3GaQbhGG
	 VGQmcMq/s1AwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91842D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514197358.27492.1097119310363165320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84929209a4cde61cb21ffe088546d84410a4cf4f3fab344ee55272ba8f881034
Date: Sun, 07 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765141973
