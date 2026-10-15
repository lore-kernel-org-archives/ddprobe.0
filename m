Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56931531614
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792076434; cv=none; b=GUTim3Rz+wXc9IU46JEDMXljTZ0CBg0LryhqL3gOYtGBtb5AQymsuaCi8+7VoeNjESy1Ttu2ikSWv/44ot/IGNS98y83GCWhQ194bb0DdpiK944COSQP9+Wz87WS1OzwgGjisiTq2q9wMqpW6H0vQn7XaLv3EYg6cb31SKGIpzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792076434; c=relaxed/simple;
	bh=FZueRf23Qxc1uI9BT+Pi744sJDrygkOaAgaE4vBTSLc=;
	h=To:Subject:From:Message-Id:Date; b=KGtsXfM3TGlNxgV3/YFsGYcfdRljI1wQv9nwT6vC6U29chcr6s4DSni9OgxC1nYZmuQ0ouKcahO1NpW1CFdKhz1ClZKsjgPx+8V9xYSD/kMaLuqXYvyi2l5w2Cl6cLKkUu+Cx3ZqFhA71oV719hH7nx9gyWRKQte0QzYt3pViCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9YIBRFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9YIBRFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0DDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792076433;
	bh=FZueRf23Qxc1uI9BT+Pi744sJDrygkOaAgaE4vBTSLc=;
	h=To:Subject:From:Date:From;
	b=R9YIBRFO4epKVKb69NdpgKz6QbHEzkJgje7A557wAvQf7EUObvixR7tQTcAI5mG7Z
	 jvpjxEQYIKRCWCC4iCS+Z7KWEDB678al+TP3aWv32PjD2F7EPUXCb/GLhpjtgSk0y8
	 YB+fJzjIv7/z0KQnH0x1mbgKwQf27l6PlI5ID/t2dKVBZiceldSlrac24o2akOtJcf
	 fUbvaR0GUfz9yiBL9ViCkTn4XHHzU9P85VlqFlFF/ljNjlwhC+vt5FE0pAG7Gjdhyj
	 Y0HkIRzy7cBGt2cvZcHU43HHGkbA2BKk/M+qs/4OimlIKSbE5aIwnF+0ya5kk71Mb6
	 wyK/kQKHxl27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9765CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207643368.21407.15250623439600166180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928eb0ff819bb171189dc88e126e289249054fc715aa0e232b548f91b4d0aa98
Date: Thu, 15 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792076433
