Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1554732142A
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757512794; cv=none; b=aq0WySGVLtZkpzwKXG85lIZpvDcR/XJEO93pNJsPHBTiI2agD78ZbzgHAHQ3MjmHKPQQ/3KVe5/YamSziTVb+JAkNe7PHF/2AA9Ytn3P7yFxVknV+8mmkBYpWo9+oJMaMZPkGiuVf6+W9nKvJmnU8ue2R7m7tZXOv4rLlTdTbrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757512794; c=relaxed/simple;
	bh=+sb/mmGodAiG/mw9ChszEwO4wYPG4arL/e8PmpmNDAk=;
	h=To:Subject:From:Message-Id:Date; b=AlmPoF1PHNfB9/wgNEBL3PrSYgdFt2GTxYqqPqYWboXIRk8/08X2FGJ+HJWGZoClKkCgAD/L3ZTrUI6wCTriaVU91n7S2mUboaDLh92d4XEf7342CCFYtmhSOFM52Ts+9SVh1QAGyNFPCJBDqLZDxPLxgCBgHazfBMxAwAjwNoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4f6LWFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4f6LWFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB52FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757512793;
	bh=+sb/mmGodAiG/mw9ChszEwO4wYPG4arL/e8PmpmNDAk=;
	h=To:Subject:From:Date:From;
	b=h4f6LWFS5gsTaOtiGr3Zn/eH9Ud3Gf42LjVZcuPvx8Yj++lCvse1uRBH8dPVzgCSZ
	 q8eYzqbgxDlaVonMZP/01leyNctTK29ZRGQaQg+ibtopJaZTcUgvDVuCrdbjYq3QAa
	 UcDK/VKt+/J08O/WhD350WYPrfDDDaU6tHal+wgooLn9SL/b+cbBHk9frRe/ogDHQW
	 fjGT3/iCCR/2x1frQ9azX3wlwcY2ceKMBJ+kgRjZCnGHtb+k8wDt/L7RjPjoTCE8zT
	 YXAdR1KwySvY00zxlv6uX1EjITOaExgDaUGie96FIm+LkgZtIzaxwrxbXrn6np1NV9
	 E2FBzqG2j/atg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B13ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751279362.9157.7546099318791099799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb490b1ea2ba272ce3769fba44f7b591a4c85428a2476af4e0bd3ba989390e0
Date: Wed, 10 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757512793
