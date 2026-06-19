Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033AD35AC07
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781861794; cv=none; b=hqU1O+vOi50ipZwbGsJ9xp0+QRUNqLqeRd5vP8+iZrBjcYOn6FMXySXVCZTswrEeiozpmcjiVwaTarFr9cE56EbmszclYRTxHs6vfQYe+PKa/BrWQ6O006DxpnwqsNkpB802yFTzU4MvAm+WU+sA0XdpSXVtb+F+md3etoj4/BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781861794; c=relaxed/simple;
	bh=jlJ73HpRMK/qdt0Zerh025fLUYZTCfdE32PN7AMOKiw=;
	h=To:Subject:From:Message-Id:Date; b=CkRq37NH+JwA/p6e7tf4C/rP7/uNdD8U3IOz4YeP2qUYrV0x5+ZYDH3FhJyhVihPgsSvGqv+ILbGqim5+iw4Y1uRN2SbQldN5DXhUqxrxX+O19K10rdd+oTeoNQneGhDsCqYIsN0plETPM4sUq8lLK7l5DB4ZNQSfAl40suED+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAT++XTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAT++XTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A65C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781861793;
	bh=jlJ73HpRMK/qdt0Zerh025fLUYZTCfdE32PN7AMOKiw=;
	h=To:Subject:From:Date:From;
	b=pAT++XTDqnPgq4flBrXTHcEiMpKzbpZUyIgm4yuJFrSo34o0pNYmRif5eHQ+mjWWp
	 /IWX3x/uwXEPuY7S+2L2fHXskjsL27pN1gGX7DvO8fOIMLT1ZYX6u1DTUHEYMB3atP
	 2xJNfaL85QAiDbKE6T1/IwM7ucOsYlmdZ5NY3o6dgts/KtI2FPf7XjDVWGFttRzYQs
	 UW/cRo2tFD1vMfyiND8nOHXf79VRl/BKiBFcRejzlnXKU4QERsybGSLsjrVOYxdnsv
	 9zP9w6EnSUe11bJd8cNBIzwSfR4anaVq+p+zdjQUy1WY1+3q9Xba8S/P/LebJG0cq/
	 EHso6v4JKTyxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA276CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186179368.13723.14473790690953200058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578986b2a8d211d2b896e3fe53ca486e268d5158ee0126de53fac68430aa1e88
Date: Fri, 19 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781861793
