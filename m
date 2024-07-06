Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB4310953
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720295183; cv=none; b=Us/45SwnZk/Wo1ALUWavWbLuj6Mj82zIghxGRPr31/iv4MpvjklBr2rEIVHW0LAM5ndvXhsWyhp/gNBkry/gJBTRsWgXy5V1b6B+S/TMgc8/4oqTUTbJHlbFkK8pub99f9drSSECYzub3iAsVqii4jnHZfahC9zPWLU8AzzcMhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720295183; c=relaxed/simple;
	bh=E7qdqc8lTq/OfladpxK7ZjSoF2XZ2ltDPfgQJQfafVQ=;
	h=To:Subject:From:Message-Id:Date; b=ZMKuWN3ELBJOdUpKW+BKHDfU96eaAPWwMe+E9LiHjHKSV677Q0CseBO/3ni7txIXIrcxEIT2KQOT1TedVN4VT7C3VqsA2Xgq2bMqr4PJJG8/IxwmemrJkb6lEtsMSJnhD01vXMBfS8YkCvl8XdLF+QJMiSzdwbjazlLvReAPS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4Y5tlVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4Y5tlVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9479C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720295182;
	bh=E7qdqc8lTq/OfladpxK7ZjSoF2XZ2ltDPfgQJQfafVQ=;
	h=To:Subject:From:Date:From;
	b=R4Y5tlVdRbh90Rz1vw7nbr69Dgvri/s1+80Rr/mI9fpOvybcNJwsMqxeM64HZ5ryh
	 OxpOSzY/G1u4ZCCxbgHLu6a39YtSImL6foH8KViCqiuu2+ugKwhzoW7/xfDYC38e3m
	 oYrWjPuJpcdWw+FKWXDEWeD1y9nZDt59wX/X2h484vfjBGztMd++P5Lol8mGSzvWgX
	 pFw1fbXtC7/v6he4aeDCpLA6C2KWD2daYR08V+xTybmYso5u2ju53V3++9fIHmul+t
	 MjJjxBh+wz5rdkqm0A6LQeHj2TUu3+nJYS4dkUVUMSZKjedQ4qdPLIQiRzr41qe9jY
	 jrYsbvqogw5xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E13C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029518283.28081.10590427694660371586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df346a4d543d310e4db53b50733895035e05490b8c06eceb9ada5a8d9ae2703f
Date: Sat, 06 Jul 2024 19:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720295182
