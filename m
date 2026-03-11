Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1859822126C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773189294; cv=none; b=KzJuTRw67sa2Zk5hhN95QkXhMNLAm0SRju1R1b4lyxb6Aq6hIed77s+xVYepdyPrxVybHNy9A9YTYX5R6tiKWjVVQKph9+R4T0JR9ROZm25sXs4qyPFT2vxNaCDPi1eqgsRxBU0aw+1mgMo9J/Jgti31n4VBNEIxTa5XAjL6TIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773189294; c=relaxed/simple;
	bh=K7XPSShYsOmKQS801ufcA0WshjpLZ2LiVUjDrIMXH64=;
	h=To:Subject:From:Message-Id:Date; b=WaidNjz/KfOmgxPMV637sDGAJdLBDnSijc0Y4tJFZcZDlONN1Uu/yZzDQj9uEYsiiiMDxpdW4JmGH6dursyq+M9OHF6afzunxlKQAgHoGmxOGoBaEwas7rhmAJaSzjrAgZGFNLs1dHggMBqUGytwsIMp/glMXwH51/o+FBoMNvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAv/heg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAv/heg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB5CC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773189293;
	bh=K7XPSShYsOmKQS801ufcA0WshjpLZ2LiVUjDrIMXH64=;
	h=To:Subject:From:Date:From;
	b=OAv/heg8rRL2jiwl1Q3uS4fJrmB/p0fc2TMO8Cwp2K6yMXmmpxBld4yb3aD/f2Ie9
	 F+5ugfn0yG7kSCu01YuCTonOVFMhxe7fSg85cMuZ2s8ssMcA0JvrnNmkZBptbRZ/PY
	 zv4MhAJAV/uHWqFpUR0NTD1EBp06ox4BSTctqKuk2XI24cgs1gDzxm/UrVy1Mw4Tux
	 b7N6tZnm7/gGS/jSr6AIbdtU1pWQjSsxy+Mg3ZnILtQtBIWlyyrII/RieiVhHDV7ES
	 /2NR64lFmq3NSzYMwr8ArS/2EJhp+SOE+SghLA7MpZadIWDwh9jarWAzlhdz129A5i
	 gPPOmQ75MHQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A08FD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318929361.21814.4757342642396404391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8083030531f41cf0f437140803bedd143564b8fdfa595e47f172cc7afe96adf
Date: Wed, 11 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773189293
