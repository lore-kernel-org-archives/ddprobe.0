Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DA7171A1
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745258394; cv=none; b=KLVE1xLHFKHMYfGPyaLK2MzcT63yVDsYfmGqsbl0pGOmfJg3FyUgbW2CMrUYxcC2StyA9c8g95olZ9kd6qdpvxg2vqeXa+UrFf8MuI4yxBOYWsG8FGJ5e+JMbGLclSmdoSrTiBc9YxpuJfZB6GTing6KXtjveruUC/lKYxrW3b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745258394; c=relaxed/simple;
	bh=XLg6hPGd51RA8pMHwU1OGKxiDG8PKfcA6w8hiqfER5E=;
	h=To:Subject:From:Message-Id:Date; b=sGzELsm1vpT1hlreeXvH/mrKWejWys4iQIu31yyfrVy0oc/gCLODm2Zb4HBNfl/6bsLYBwwI8G9AAN4MAEx8PWve1JJntgwLm6+44oxRW6FjQGo44eFN6QzskK5GUSXd4Nkh4fwJtQm7yGH0Y/arZC+RavkRz9jLNOyTQrsEqtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbVOdmty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbVOdmty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B60C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745258393;
	bh=XLg6hPGd51RA8pMHwU1OGKxiDG8PKfcA6w8hiqfER5E=;
	h=To:Subject:From:Date:From;
	b=ZbVOdmtyV3dkoljTQtxuZkszRzo7BdmrUcLl7UhAwgC1t766sagzRg3857ci03zF+
	 o0lurU7+3i2U95cMo/bFtoaI7p0n+FI6MVyewNjPmghDteDBq6k0+SU1fJzw4lH1gf
	 +7LKwiVCtwNAAEYHy34qa6EDH2VFA7RKZkyJvGZIdYTfViMeAvLn/l/m4+rjWL0j0Z
	 9GZeE6/PcN2JPtzH05YUC63ESI2F8YrPwf96nKtzMjxlll4/1of59A6N0TLSB1OvwK
	 27atUeQekDZH+6C6EQBmnkLPlN1xskTr/Ysd0qT+dml2n2TTp5uk895Ye/kmbQ4cgF
	 FUgVHaxA3bSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93371C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525839359.7170.10821802304049999110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aab4becc3532d4fb3daedcaf7690b5936134e05cac84cc4e5954d149e43cc1b
Date: Mon, 21 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745258393
