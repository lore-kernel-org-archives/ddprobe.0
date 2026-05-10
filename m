Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F19348898
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778407834; cv=none; b=qTshysGppIJkmXXDJf2xy49jLr27e8t5T5oEh5fXNMQEy1mymJkWKa5Kn4xgMF2X8e7eXbV1V6t5hikv7IDu/v6NtpwCO37V3n8NiO75tmeyJNJuWUb0ovFBxV/JBsNnpTUyfqMMm1kZjA8O3Ed2DGwXR+pnmdqoH8fQQMTT6Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778407834; c=relaxed/simple;
	bh=4ufAPIBtozUof7WaP1jk/swY0YEZTRgL+uZlqOmyuCQ=;
	h=To:Subject:From:Message-Id:Date; b=nJqARfzqp9LDx5RgXG8uQLnQ0crCwOpWvB1+xVYZAB4Oo/tFGzUgxrdhU5aa6KX6NvAw3X/dAnv3/gmU2aco+s60nquUVYqpQJ6Pyt62A4FsT6/kE8rmUGWtvi35oLm/PFT1n9A/xmV9Q90cwklC7gnzk6KU4m24AC5UZODO3SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvrZUMva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvrZUMva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27EAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778407833;
	bh=4ufAPIBtozUof7WaP1jk/swY0YEZTRgL+uZlqOmyuCQ=;
	h=To:Subject:From:Date:From;
	b=FvrZUMvaT5giUtK7libZdk8Tlpudk7fST2FuqMGBy+HL6LQQFh7kw66d4K1kV6kxZ
	 LuYM5MErxRfM2azkyx84EGCpJcCHmhz8Bbfmo6bHjJ5nqzerRA0715UAoXc6PLjOP6
	 TylHdzHMy8czO1l4QG5I1sH8s+kgC+8O+fXs7O+zhUoNx+zorXhuDTA3T0B56Np0OQ
	 t0HHPf+P1hDxYBMaJxCxcpI4oqpvDLMEXWhKLOqSeLIi3YLppJn077R2Uqou7waKz6
	 uIgNW12qmFPQ/y8aB09WWX87Ab1VTDQMIZ1WmMVkOttUJD+1YcyxRpuTRUYPO+2n15
	 G9DVVBhB6lAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1085CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840783368.19050.15795475916259242226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f87279c2125a2420b8738e161dd40b5fa45d4b165a350fdbdd1f22b20cde808
Date: Sun, 10 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778407833
