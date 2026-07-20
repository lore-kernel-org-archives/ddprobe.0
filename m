Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500111FD4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784506714; cv=none; b=eznMCTmuAL6O9GbAKsVQlvNYhZ02mYLu5zqzWJxkdj8yvz0J/JgBhulfbQ9eOn4nYFrfDpfQiFIud+LvYcno8hraGaITai4WefzK+wXJo6AUbnlsv7stV2/GV+oASkR1J1W86FQjK+bAu+LzDdGWVB/EYLf5IKqeiJ/Nk7JHOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784506714; c=relaxed/simple;
	bh=1umHfE0yL8LA4tFcSBnqTGFdnGT7g6frvw3PMNpdBOE=;
	h=To:Subject:From:Message-Id:Date; b=Q5phWLRmlmTRP4xgHCZ0V8t+evQg8lg1po+dMM/4t5w6PanYyJuDvjYq9iPunS1Rexz7gwR682/JRUUl8cJpGbMnBnKR2fqlqpxpH43UigaQb9NRX32FMp2qGHmAFUJUsCqEZlNgkgpb4h1Yme7h+WPuuG4+qTRF1aOhPjasR4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ribolZVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ribolZVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A4DC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784506713;
	bh=1umHfE0yL8LA4tFcSBnqTGFdnGT7g6frvw3PMNpdBOE=;
	h=To:Subject:From:Date:From;
	b=ribolZVIA+V6rYINucMlfbK/dT9MYnUXqxfGWl8lxniwC5An25tnkjrYcn1KhcAjK
	 Vr9FLOuBG8BZH4pShwDXsKZjtcRasVv2Ijoa0Sr0w9LoQJvBETFk5B0bAkQAekIVXf
	 /8j2Lv0dBvacmBJpfPMYXgy1ZyZi7Nu1c2Yt7G64W0qwaLFXAwIOVWB/SBLoslMIUf
	 DWmrl1T8xlnXUzqWZai1sqZGHpNpLDf2AVwG0dNGH/YSrRxaTFdOK4jtsA66+/F/Gn
	 WWCb99Qh2PmgV+J1xa9x4xp+6rfj/PQYjXPpykSKHbaNbmyuNsAuZ4FCOFrHD9GZYz
	 MYAA8xlkD2tPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E8CC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450671369.14248.3463433920133993947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148cfc88d911b32c937713d4a725bd0f41ccb206e05ceaf024fd5015f6fcd004
Date: Mon, 20 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784506713
