Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C246F3E5594
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788564634; cv=none; b=JissaSePhXMf/8bBujmNK/XVzZxrVaj22bknX5XnQ7JdORQUQ4XvqT0JyKjqgSmY4aJ+fhQFsY/UIfcpnkM/8Zt9lnLRJX9Ya8hcT66qmA0FSoOaz6KiIasTMmrjd9qKQ5Oaa7c+7vhQnQu4wwEf1CRRAAT+v0lg2dN3ilyjmj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788564634; c=relaxed/simple;
	bh=4/5QiogVAjknN3Q+qTlzusSkMvYhlvUDIAbRLMrFaBo=;
	h=To:Subject:From:Message-Id:Date; b=V+5ByQMmefqmS25MA0M8qK2sjUgwp6Ur7gepylOA5pTlLDTfKQHmJW3eS3OejYOVeaD30N1AKIMrFBRINxQXPfRZEXGXASNX+5xjTnkuN4jffKPDAt9O5w6cIlDoU7TLdVmWbBRoOVWYGekxNRGhzLukP0TImi7rC7rnRPXKdyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSDa+ak+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSDa+ak+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEADAC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788564633;
	bh=4/5QiogVAjknN3Q+qTlzusSkMvYhlvUDIAbRLMrFaBo=;
	h=To:Subject:From:Date:From;
	b=RSDa+ak+0ilOdc9a24Aev1NBvgMaI0PVPTMklepp8uolHMsLSu3HdHpuvmAwk0/8x
	 g/TjLxL3IkaY56/gtEYMlqaMSiJCG+uREKhl72dHwV/uQileumrEIlRRQ+ZmJxosNd
	 hxeXCsL6iykArtao/CRxNJMFmo3FVrUCCF4GH1ROGegHrazLoh5VrwutQ5K/cU/aff
	 mBXwRITDyHMEg7752KRcELGjbTMKswcXnQqtrCAUtKh5Vt5EspIcVxHYi11ifQRxjM
	 DWZhbwyO4H0BFjauyIKVYq8WnrYaxZP7+mIRwHoBCEoi+l7sAdbjpXsnHd+Lg2IstA
	 NSVY61HcRgwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96D8C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856463372.29144.13844188688268768221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9256348402895ffaac9a4d1dd7467b4dbabb0e5e3346d712492179ec0d529975
Date: Fri, 04 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788564633
