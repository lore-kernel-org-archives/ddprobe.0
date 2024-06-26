Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A30B18E76B
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416603; cv=none; b=jk7XryaLkijthjJbWwjKjR9bmfFBkh3k4Jb/BqpGR/3CxpAJh+Zt7dU2w8XNRajE7j8/Hef5IPAO6IfI7HSCRy0/JqH49PX7bjglnuPO6EOuHiOjV4J0ThhYqGCMcqDN1fRGxio3Kk1kJSx50YD/IrpBI1LOhmL12enlJQZvZGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416603; c=relaxed/simple;
	bh=DbjIVlo3OLxwk95hfQxmkQ0mbl6V82FBJsWHE57Hns4=;
	h=To:Subject:From:Message-Id:Date; b=lm5WpZjYib1hiSLYOnk8b6pw4C4BlyoSyptW6H66plRN56aml140b4PXILcf57p4PKwkQ/GfwKSPrM23fWy8zyNqP58323BzyyNiggpk3oGtWTbLAVHuDXCvG+zz8Q5mNLAJjMXxDVaxsxq6LxfZrTI4ztdbLz1IKrKrtestETM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cijhrqbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cijhrqbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2759C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719416602;
	bh=DbjIVlo3OLxwk95hfQxmkQ0mbl6V82FBJsWHE57Hns4=;
	h=To:Subject:From:Date:From;
	b=cijhrqbzjm2mitRZ8U4K0ofbXrNgSMOoCPrjsYjP4ubvQ/eaWRp0TKz5QGO19i2f5
	 nrjC3IkluPFStI5sq17Dm8xwLQL4zdoRsS2lZrDtrn2Ecfgi/V96i0Q1vxCLAHSCoF
	 Be5ftqnRESNdUkk3KgEX9JiInPPtfM8i1E3o9axwaSUUEsgoOa1OTnSbNKRpaMVgR4
	 9dsPmSs99J+tdqMcHHt4au1QxKKw9LANSKB14eNIiiNYrczSTLIwj15ryknbdcQQPh
	 4HO+5Vb7C85iVuaaMQQnFaMbKWC9RWNZ8AxXyJPeyXI5Pm26oHCo9fxUki705W+7N6
	 7w4xNidb8A4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA72C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941660283.14058.6117733703459029954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e402199c22f2351e4dd3be96b09ff53dac427f974c8af9f0fb2e03569ddad6c
Date: Wed, 26 Jun 2024 15:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719416602
