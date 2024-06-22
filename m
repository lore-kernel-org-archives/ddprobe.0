Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3A58F66
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719036143; cv=none; b=hW1dH1dtlFPKfmq8DwWInHM4N62K2D4XoNRIoRIfZe6NFWTUjyTR0O4PTZLSvlkPC/KonOysumD9G6LGsJ2zRXAzYevQdz3QyT1Xoj6Gq9aNYFWAkkvpKwa68A/g2rfmtrPcGlx8iJuhp415ydX9mT+dbyqydI8Ca1rnltY95fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719036143; c=relaxed/simple;
	bh=g1FCDiSyQ4MRNwcfH1klnU5c+MJI5+KzD0E79B2J2ho=;
	h=To:Subject:From:Message-Id:Date; b=kuG5qOZE4W985G8kJ5yrkHYmfRTjajtp/mdAv+KAC8f+MPV5InD3sBrTDhCrl0u0nWo73XuSny0YNawXvlD33r+tDJEVnJ55rUdmtvJ7M6lUFelQhGORwEKKdC4ZJcWKW88EAqNwSRlwcTPICmQ47W17Pih22sfsYUYq/y7nxc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvreA7mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvreA7mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01AFC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719036142;
	bh=g1FCDiSyQ4MRNwcfH1klnU5c+MJI5+KzD0E79B2J2ho=;
	h=To:Subject:From:Date:From;
	b=OvreA7mjm/SYe4n2NkHWES4zTtD2hS1TVtq2xC9yMrJIaiDkS3uGpl8ktkYdvJTLx
	 arWQ2lNuJZqHOqkBJIqBAjtGtETv/mEquwNFdQpsLOIdGf2uj8pP4fNAbbZdVkALXZ
	 muhnUEjPUdJDtIwSoI1tpUsqvqDipr22p1OcpKn3EH4WY04Vc22nmyKBJW9KnHCclV
	 InZ4t3Sb7+E8o/9Ymh3VUN13PqVvEZEY5iuGKH1wQw41vZSxDYGG7Q9YQwOIrpdHt1
	 FjGlSfuSSSfTzzaVVaL+FrbNX3uH1KD1so4GeXd9VyPk21xRtuQEM3nJla3NGPfVsl
	 sUG79QzX4UfoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73B5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903614279.16363.11550872636672344677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5ddf1c2796d20ff352f8f6cce5f114bf45fbbdfbff76ccb1b4923d0b09f54f
Date: Sat, 22 Jun 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719036142
