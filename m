Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240BB2594
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752377394; cv=none; b=AjHvVCYuYhvvXbM/jZOFK6xDMwXIpsyGqCLspAQs+cZX7HUKMpaoSNmYXCkyA0634lcqlZGlLaAtKX554TUoApEKRkTJR6OOzZ2imYBRncTzZzY13LqDKFP0SPTkTI7JAXnDvq7LiUFKa11u1sCB5zJqFFupK+eT8bE/2aWZ2UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752377394; c=relaxed/simple;
	bh=mRXTIorMWDEXPUATPYU3Uwmou3uuOhgrTSeDuj2pUJ0=;
	h=To:Subject:From:Message-Id:Date; b=f15ACBYi84FDB2QlEve1mlNhq7pv40ZqRX91NYpKLCZHSyNTiJ89ZEGcIa05WOIs4rAtIQ+9Ui2OWFNmXeomCr817dMZLtcWLLX2M/nta1y9XWVzHvt/NwHgPXEd5omGwpje6ffe3pAYTavKii8W2iPZDiVmmq/S8ditbFT3H5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4Cx7pIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4Cx7pIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C7C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752377393;
	bh=mRXTIorMWDEXPUATPYU3Uwmou3uuOhgrTSeDuj2pUJ0=;
	h=To:Subject:From:Date:From;
	b=J4Cx7pIbHAsiw5PtiGq6tQKv7+/ZF/ANZUAAkdZ2feHRehzg/sgCurM1jWytR5Cwn
	 7eGThcKY8RLIj/fSkfPyUdX2sqVkbboe65aR2CXZspTDQkZ7A9yAE0wG2FCz0fUwDu
	 C2kpEzvSpw4gZNkWpLmA84x2AFxP8G7iGUw8xeeL3ftv0CUz5aN0nuR9TYJVqKYmPt
	 o+62Ele+NIKJ8VZwgsYBh2p1zdZKuip7nrnc9AnkmMdkM2Zenx5k4IoSbJdAiE8fIE
	 OuXdhmL4PIJMmSrvtO1Wg6iTIEa7pq7mZZtXQqj2n+l/KzB7+V2qQ2wXbzG88I2PgR
	 ZgrUNeWIAcG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EDC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237739357.29756.10378417723344708210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca0c2e3b99f7c892d94ae8d67c5561f1baff4b2a46f2a4f59dc1a0988af67ca
Date: Sun, 13 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752377393
