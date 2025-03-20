Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37C21C1F22
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742443194; cv=none; b=QrIoWGJJDBVFp69XRdNJzWa6dlVzWJGwFrWklzXwhob/T6xewKcXXhrzwHL/E47VmecivQIf1DOqEfsjbgwc0p31qgmez755CGWnNuSrE6BTs7rm/z0pPc0G8Sd3FEzjAew/gOvJARkwA1FQF8BtjHKbljINlRQM6aDeaTggmSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742443194; c=relaxed/simple;
	bh=WRCpm/uQDcuOO9NMoxzs8JyljkpxxxMh6qnkj2HmJEA=;
	h=To:Subject:From:Message-Id:Date; b=T+o48iOx0tnGMtwGyH3XLeyflub0kmRsyEpIluk2ilssej7XXoBfeo4fg4NDu2FvpLOj0R4BjeQsCgxYUDJh1uqG/hsK7giiwVgrP2b+7Vl4ptRW8nV6qOOvrVNMzGRi//iWaFuz6/zTAS9z6WzK+RXftnTrk86nwAyvebOMqe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHkueWsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHkueWsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6666C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742443193;
	bh=WRCpm/uQDcuOO9NMoxzs8JyljkpxxxMh6qnkj2HmJEA=;
	h=To:Subject:From:Date:From;
	b=oHkueWsiHCg1Gk1cFfB3hgmOdvZs6ojX/2n+vHQH1ihkNvSf2EFXS9S8KOfpItutq
	 Z39gJhvTBF2sqiZSL9yuBy6uV4+FLOQEcLMneKbINDoazTMc6/0UnB/7YfppFZNXqb
	 CSEXPopGVgF66DIPr8WYnFqQb0k+qaX6VsBECgKmdh47MWSlEF1nSmq4WMshHmQWEm
	 dlnKW3RqCHnnldJpMTq2vmjcwRZwNU44FKPv6yfNIQxIEiY8aUwnOzTq6rOpcB4uPf
	 OTH4kQAcGF/bXRzTKy9xdF4ao0OCxVfQVEjkEXZ+DgtWkT0GstXmy61uEMWG4kQ3VP
	 lU4jm9vmPXrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E5CC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244319364.8275.13977473651580793004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e938f452a6a84e75c3b176c3512ecb7dc26facdb85f61a62e4c030e1e66f1b
Date: Thu, 20 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742443193
