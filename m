Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E2126C10
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730854554; cv=none; b=R5VL3aReQQcM3XFNNmAvK1nZ/upBXnfZKHF0Y+IwCoGKNT3Qo+WhsNFNFgj0KisC0Mw1LNo6Hb+jOXqvreioDBJuROkYpkOuNo1AiH+PUUt6wqLa5Lwrv3Kj2+aNx314yg+pKzovZQYbAL4obRY9g29oqh/sw5FE4nQFJu/+rCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730854554; c=relaxed/simple;
	bh=OVJNFkfst2947JI9NncsmVJWJIUCfRj1+SS6NrufkyI=;
	h=To:Subject:From:Message-Id:Date; b=dyWEwsuSMVBLBJ1nmHOC0K66qDzHYiENk6i4/IKkWmKTZSYY2So2+hSMDWnZRXc2qbsno0FBEVZCyw7Aawi+eOsrVm+su+WB+0i/Ogz2N/6I2JKDaJf9Xy4q7bvyRuRSv9pe1Q2f4rT1rA2mHVULX8gECbBgfHVL8phVOU2B7Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4jxdTu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4jxdTu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4405C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730854553;
	bh=OVJNFkfst2947JI9NncsmVJWJIUCfRj1+SS6NrufkyI=;
	h=To:Subject:From:Date:From;
	b=q4jxdTu375HXJcz/0skyIadr+/7avMCuuRRBuNC7H5n5PsFoLf7nzKnpS/T9dhkGO
	 djBSPGjhUMPaJUPODze4zITOys4BZGQ+c3ZznSKJMgV2eiiHRTRMnjORoh/mYolWST
	 T6F7xKPFUs31o44TaJjuwLv2Rwo2AufUONxDp11GHKLlTvaJ5JsQFcKk6Gi5KAbQsj
	 /yH9w57VMrT1aelK1JLPjnUBauExtz4ifB13oq9VQPp6D9aBOZITx3SniJKbBAxULE
	 cQDeOQ5gk9v3o4jXLUHjv1lBxDn9At//t7Lyo/H2HtAYwfcS4JcxDjr0fZpj5A8503
	 nrJekiPtU7gtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9229ED40D13
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173085455358.11043.5706680868604038999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1beba8746101167c10a716a38472e11f56a5d223f83d92ecddb1b374bdcb7cb7
Date: Wed, 06 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730854553
