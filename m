Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E2F10F4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728099954; cv=none; b=C5aE9Jt1M8Fb/e8vfqLPtF0TYN5hzqhRPEayjGH6m/kPXyxltZFwu5GbnC1xC/VHCJF+GB6Q/p8GbU0hCj6yD2VI16xPV8ZEjIDV6waaJZJsLIy+jPbY7+xcIo/UnkEj11UpcAlurosut9D8YIB0GrAtcpw0wgYkZ6pbcOvw1cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728099954; c=relaxed/simple;
	bh=lGRPqRrn51MSfxONSo4VgH78Cnb6HhTuRKSC2PBnhYg=;
	h=To:Subject:From:Message-Id:Date; b=JPqjYsLs8VogY3JGW6Eb3Zya0Vvruw7agz4DfgnM1+YuCv9ymbJbZ/4mdvDg7JJm/wrNvuE5zDQs9K7o3ozFQ3pJzpbmTn0S4bTRnLcAq3upLhkFyCpztwuvHF6KGStXw1M9I94DUynHDcFlaC5F0KQNXfM8PHUuVTNG4IIaOmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLXTJSAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLXTJSAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AF5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728099953;
	bh=lGRPqRrn51MSfxONSo4VgH78Cnb6HhTuRKSC2PBnhYg=;
	h=To:Subject:From:Date:From;
	b=kLXTJSAFwF/4Wut6EQhPnns8InK+yYwDjpf4eFTipArXGH9gssYsmJyHMq7r6HAz6
	 q9tMmzeBSNtsf9Fo+ymln7NJt0BcYaSQdvpKnLF5LYnXfHcM98cM1fxrq44SB4L4E2
	 ozZfGzWpUqQv/goGdsxBkTxmBuWlGeeJYO9f6qc7p0t8olERnDZPOqa1QNj82ocR6t
	 9ik8LUGh4n2RW8n4fnsO74ZwbvsVaa236517OArP/mLdTr+yBPAuPTlqra76dCak8v
	 gLfvfY/i01H4iTseZmqexEB0Yakv2CEcexfO/fTZL9QmW3m7NBnke1fMdbnQdBVV5Q
	 Nrc0JF9xcPRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FD7CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809995359.31894.13142500403631745460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657faf314e42492eb2fb17292c0ae5185b502b90b054b7d10799059d8fb3e54d
Date: Sat, 05 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728099953
