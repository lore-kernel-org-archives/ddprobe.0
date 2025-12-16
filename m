Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098C63644D7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765890234; cv=none; b=nV9ACHr/aGgQbUaTSHUd9fbHJlhJmaFku6qKbQCvbBN/8ODVtOqCh3Wgahbk5/lb1WmIoTXvlsRHpdkySgJcB+akuziSg6thUH9fKXOtVfgMcBQ9BzP7ohb648DbfY9XIKZwNMrPhnPxUQfr3Kn65pKfekqtHOCdpAmgB2gfTBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765890234; c=relaxed/simple;
	bh=o6qb8Gammn5aSb/MqknnnQwGE0hWQiK8NOrRuBARiic=;
	h=To:Subject:From:Message-Id:Date; b=aZozpxiqTgghk4kusWaYaSnkXzsxuPA+ZkZI6AOSP9tbwaKC2HMXvG2L5UMeldfAsA/OWdk60T0FQ1H/PK8y/13hI1qSLQ6M0UUF1iS99qjWYIPAHAqJDPSU4WV1VPEoKDvsosn6778hLKkgAbyQyclvIb0iEnbbW5kPsBaxh1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I22JOT7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I22JOT7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765890233;
	bh=o6qb8Gammn5aSb/MqknnnQwGE0hWQiK8NOrRuBARiic=;
	h=To:Subject:From:Date:From;
	b=I22JOT7ozTarCZBxZhcndt4ZNHS3pPR/fjv9qWM+HDb0wQDskidH8HB6opPqehVOo
	 V5caVoJ4gem+X0TUkvOsAS0cJaJQpP/VXC1IAa4BPUHh4XYJPxiFEGPX9QS+s/mFQF
	 I7hsM5mBcoMsSunVN4UGY+jJCMQyulATFL6B5BWKXiqzKszgyJb1NFCP0v5djUogJk
	 UOggVjW+kRZ8GGrN37Zlf1aIkU98c/PY43uGGgfqgqcpnfW3E+Ho2EVJ8nP0xNrrYU
	 dyKdUs/kCA9cjQGQhLSLatz7zfWmds+Y7Zpf8AadKxlxxmKgG9Tw67NvP1PLHmdQQS
	 1GDH42KPfKV3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91806D5E147
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589023358.6711.4848776051839648601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1783c294555542ceed5b003dc6a044022ba81d6fc1664d78a0f7e416c65dfbf8
Date: Tue, 16 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765890233
