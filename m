Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE75199FB0
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753504194; cv=none; b=HiJ3hrXnr40642qvcR2Pui8CDHdLDoYbQ1EbLEftcXcf16FycD118OOTvwlAXNHi9h+qjWXR/e4vCrmAaeeZTJO1agMkqAV3rmTvStt19i/0FK8zh6jVAHYu3XsuQWq7RI0zJ+OfDeiQ0w/n8rOBH5PQJzytIQT35xyooMR6Ing=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753504194; c=relaxed/simple;
	bh=aabjLSHuy8qnjegL6VpeLF+6dVdF2IugLqCPDDQ0j3k=;
	h=To:Subject:From:Message-Id:Date; b=TM/3WUK104n2YJMPuCt1uayp6QJQ5r3YLaqJJ36AmRUTwEEEUbLZe6ygua+i54xtvqioUlQIOHIRU4jfi1HP/cmUGxFQrxVWeJt048kz3zp9XlGDkSKxIhia53QeAJCz1e2ZMP6BcvMSM/phwCpcjaLHR1qHadmyl3PPW+U4j/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIECPhuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIECPhuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7968C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753504193;
	bh=aabjLSHuy8qnjegL6VpeLF+6dVdF2IugLqCPDDQ0j3k=;
	h=To:Subject:From:Date:From;
	b=nIECPhuOWHlUBUWg0a49Vn70s6jOb4ERealqCQrGqd0VfWPMBOvDZzYx3sfyfU4xM
	 JwrSuXSzd5l+q93BbYnvPobo40US6E92UbWgP3JOM2lF4cC8Z+SVcTBW23yKo19X1n
	 2cNrh5g96k8+bPot0uYYgtjCqZMFjEXP8MaMLw0znJ42n2RBs2iF1VhDb+g4pDV2Kv
	 tim/nUGKEfCTUU/BVCECOxZn45MMHQzSNG0jRezFTB6yNwX/HvJUHsmBBnquC//gLu
	 fTCJvy4FciSb9/Lt1RSjg7vpS8LHHAEhHdC7d//VIwMOlTgNMoI41lB22UCS+oTliL
	 kd22i9eL5lQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3FAC87FD4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350419361.5002.5720492763608470933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09075e422b8c8bc1538c863cf9c87b5fbf8619cb4df80283bea343078c03d586
Date: Sat, 26 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753504193
