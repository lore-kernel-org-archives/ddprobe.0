Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CA813D306
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709164697; cv=none; b=MSodrpNL4RdK/n2YQLfqF2M8gl258rNcF2sR+K8795F7d21iuzHdq2m496qxw5vqsGK1HPGYGHDPvnPNL7yXi9p2ptO82Ivc7TgdZO02cgrfiMu5/x6cK73/naAwI51BSItVUyfqwp6uJ9ov/8tbnYcmnVQvS+tXLPyNrOLIiSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709164697; c=relaxed/simple;
	bh=8zEXY/d6/xzbW43dSm38XsteX/eO2yAtvpvgYWxjrlc=;
	h=To:Subject:From:Message-Id:Date; b=WbqLeJcOCb1hmlR+E8dJD8rUKDEwIgn8PwiEakZINhFVa+DIs+gGitV61WMuagl8r6Hymq/dJ4l/MS92T6H2ANF/VlgwTBVtlVI06MnkpSPR4RWO45fPqLRcKOk1tm7P4xhD5hbRP24LCX69TltrlBczjy+lmxuVFnvFsIfAxpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFURzed0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFURzed0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC20C433F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709164696;
	bh=8zEXY/d6/xzbW43dSm38XsteX/eO2yAtvpvgYWxjrlc=;
	h=To:Subject:From:Date:From;
	b=AFURzed0ygibQle4+JTy+qu6DhRuSC+TC6OyOoryq2NH6V5TWFk91s333DGrOrKHL
	 1J7V2y5DHmj1DFEAFxIefrgjENFd3/w+xJzPicZTLPuC3JyFdOVvTzHkkLi1/Zv8ef
	 g/Xrv4y1jxFoCg0f985LNcbCfhTpzELirc/GzwMI0msM1CTFNRk5IxQYrvNRlhUe0c
	 T5gAnCKuxyNKvk+103j9tIUHdfpOOWfEXpPNvwS7u+nvQ8jZ55qjPlh9wNSNk6Rj5a
	 88NRDCM2355ioVuw7pxPVBAktjFeHcQ+Y2k1+i+c/xyPS4seYgTYNgH37v+FEWq4f+
	 gpV3wsC5UOaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E264C5475B
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170916469637.1586.15366365512203692125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862ad828b37e168d5236544db57233ceaf88c4513022ce33f686a3589e59e2ae
Date: Wed, 28 Feb 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709164696
