Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ACA1D618A
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753751994; cv=none; b=aA28/SdHP1+euRSk7nd1MnUhFT3Gg9DTIOhPWiSLrr+c8d5Q3jjyFKK2sb5YRcp5/Ww2aqTZJtUOpeypmSZnxt2QQsuVEg+XpbtgNMUDcZFsnKAXZUak7na33WC0FJidQy0jMOI76NLYGS9IpoUBG8maxSadbh/GgAxrrgmGowY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753751994; c=relaxed/simple;
	bh=fNlqyUxea/jjgeov26laAJeyh0ERocnkGhOtTD1xX2k=;
	h=To:Subject:From:Message-Id:Date; b=pdji5K7YY5LMZ3X5tdNeCByHZOA4VJCWdeIMozAcB/cMrTPcT96l98MU8dzy7OLRdZ4TA32B2MZL31e6XekF2lCq4hVGUMHNKBWBFnLThHFGOpI0vFL4rRTNWPHkW1XeBBVqdyabEPuTBEMWLuf+fbS9tNtBybSQSNOdS1COGRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug+b3k6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug+b3k6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B0C4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753751993;
	bh=fNlqyUxea/jjgeov26laAJeyh0ERocnkGhOtTD1xX2k=;
	h=To:Subject:From:Date:From;
	b=Ug+b3k6qGllqkNQMgTDO0d4ma12DYxy7jEt+cTnBUN67mcdQWikUfSVsMOJPFQPKh
	 VmegyLZ8XmZJjdZaRgiZ8qbZvOifumzvgkYdfb4pZhYlQpFQuMoOSsabaByrewFijT
	 X/3hF9hpkG9BR9nPDmtsuFQH2DxsWCID4O5bPGyB0c+CyQnHtWJyBvEQ7aETlzEEY3
	 0jRYAnHapZB3dwj/qDSlO6RFQrJn3lFxhc3DaX25juxwNUE61y+BQfOaX/2p3jZNOs
	 RhBsUAjrkcQEzdykSahk7uJ9m9w4Y5/HPOtuOj9/AkIQKGAM9ZYwVw46PvggiBGvWA
	 pMMNqqkKXiI8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F1C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375199357.30571.16179950258134029771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03bb2319841ffcb08c082f9fb74f536d6fbd409d3d704cbb0cbc1ef4bc77625
Date: Tue, 29 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753751993
