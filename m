Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106CB30F93D
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757494195; cv=none; b=f41GiMYc0gyFpldFFlWK/QAQK+O//yxM8HViHAFtyDC/ql70pMyyzdidOjpWQaF0Fvl5PxJQSTAzcwOormpBXUS+357/d2EeaTPMiNqqXYESi94lYNnU/4jZZ62m3/wwQOzxIKHsf+bJYTp/ZR+ep//lz1dczsNmJ78oNyML4RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757494195; c=relaxed/simple;
	bh=MMDVqC86SwMILm+Pke+zBazkEREzu37OcfLAOKX0lFA=;
	h=To:Subject:From:Message-Id:Date; b=qsP9nlEQG4Kxva9tIZfl1fAU5NOzS4SOoO+lmNjZyJpl9NXJFuDpnlK91vN7XFMLlqlNy0XjosxsiChwDi8xBB4bcCij0HJ39AQ2wXefWmlLYSl82n99JGD/mr7yJwfUGo/m7mSVVQ34f2tbArVQrrs42KUgUAZuPk39ROlzHmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDjGqvvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDjGqvvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A375CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757494193;
	bh=MMDVqC86SwMILm+Pke+zBazkEREzu37OcfLAOKX0lFA=;
	h=To:Subject:From:Date:From;
	b=IDjGqvvJzA3F6G9QYm/5izCnEuAlQzxDz4God1TqzzJZl33Er/kwRjaptVDgDNCak
	 wTnYfQQBgZhkzuHyqsDeLcW5XBNbvzwkcsWJWtJ4D84ITlrtd60fVF4QAIRCL7LdZF
	 SBNH+WYvK1+8w9ypXJyfAz7vhE/5RdxPyTVX/OlqNwmCoEv5X892QkkMmRwNFgc9uq
	 mddIWxkrcfKblxVPSRRRplAClifNtmouG2teWEDNDOO2K2UctwpOKEljaVEjLd7fQ3
	 RuMNnOhYjw9Id1PnSjW/7G7kXtZL6IO67d4B2fZ/veduCryRpwsvMSC3FoNHNYs2Lj
	 hiXSFoCJH+eIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91599CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749419358.22852.1627289756272338965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d517be072bb257c28cee65004dfaa6c709975d8fe637d8b5908015846a0177d0
Date: Wed, 10 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757494193
