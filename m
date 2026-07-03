Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C6E3D25BC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783092514; cv=none; b=py3xAviXvAIEwbt3mcoDIKcX27PIk7hRz/cbd41ZsfLxu98tdX9y6XMbfPqsUu1ecE/yzXnnRUMIg5YsOT2uxAOY9IOBlqTAN1Zpt1FyesnCYJu2m1YKqf+mz2hWS8123SNgfOITFoqjFOMrsGUYfDVjwjo8qvP6jDvc4jJODm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783092514; c=relaxed/simple;
	bh=sjn3et+F3L4NL94iWq4nMw7sARaCxigjwWTE8urWpeo=;
	h=To:Subject:From:Message-Id:Date; b=EspGA/wtnganJT3zw00dgX38ca2GP30cazAeQ2+/9TjYXzs+L0qdjOIshjfisxxneHoHfuFfunRMqhDaWnISjcuo5QFeIpIepV4xNTwaQFL8/JyJ1q3ei2KJkHuz+2sN99J2lPdtKgqxrJsn7cJNuorEAmaQu7ysK4GXh3A266o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzliIjQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzliIjQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAF9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783092513;
	bh=sjn3et+F3L4NL94iWq4nMw7sARaCxigjwWTE8urWpeo=;
	h=To:Subject:From:Date:From;
	b=bzliIjQ5mPl7Jni9aoVrjZzDCg2xdE+blO1Hx8K/+P5idbs4fwEynEgYQ0pNLvgOr
	 PMeo2P1vudZuCoi+Kc5mBHKyopii2MeBdtPr7pYDFVtvS5/t3i4z+uZoSkU076ZDeD
	 1RRlOx/sajKI+dqYkCUI/mJAu7269oq+0YC8w/r45goXRC/N0xBCOR5Ry6NzMJiafq
	 j5wXuAaPvP9heYAYy/I1J4Ug6XZMbNVCfcQ76ygGAUpJPc3kD8JOqm3WFcFlworkyf
	 LTui3VHvpo0ji5yRGl2fA2e2h3zjrufc6hnnBvjefzHNjW/98owySdq0cP0rwUaepB
	 f1txk9tvVfScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD3C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309251368.20741.13441721196104518490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31af19d58973bbb236fb27f88dce770ed298165f83a107a634e6e6044f27ec66
Date: Fri, 03 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783092513
