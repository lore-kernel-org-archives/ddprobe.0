Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EC21E517
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726850154; cv=none; b=VmFTHXM310i2J8/ey9H11IUK49WxC9UyhH+LPTnCXW4Tck3iF4VP7DcsaiddjLG9dMBB2Dnp5zgzVCSlVtG3+bCN0gRQbJRE1RW88eCHnC15Uv+PM1HkLz2PylQiXxrEiOgrdirE45QiAekGco0e5zTkyGy9oFhCL9lvyxoE9mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726850154; c=relaxed/simple;
	bh=jokOzl4pwJpU2sFkxmtRbsgTPR2Ce9bJ6kMIi8Y3k5k=;
	h=To:Subject:From:Message-Id:Date; b=lhbk7ZHoKfbGkOZQk38XIuhehrQR6PzpTM+851SwKgmTRrRev2xB112VwBQUn40QCbEFwUQGiKfMA+e/u5wAF2rpNHP9oLqrQMfE0xsZrsC9jWsU4WnZj012ACWjDu8GExXbh8S+LHC3RfkaufDP+63/xQqSuZkpFVNFoGoA1Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0ngPjgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0ngPjgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1677C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726850153;
	bh=jokOzl4pwJpU2sFkxmtRbsgTPR2Ce9bJ6kMIi8Y3k5k=;
	h=To:Subject:From:Date:From;
	b=H0ngPjgPL59YMGoDdXA0xa+T7WDd3jiqy7QQPDSWrnt4s7UzJBUPH6MA1TLQeuWya
	 UMhgziXRiWA67a2dz2sB62ssbXHitg2M7FIrGXvmAyH7lyEhr723e2HGRUwFVs6T0U
	 JErus8NT1reompgukyPWM3sKlApRJbJ1h2c7NeQAE7pSBhl1hUTTWH79x+HEt3xPVX
	 nPGLhPhB6RK5D4Y4n23bEpREL7NKUHLK3lZVLT8S96SCxSISnTGAnuagCIX7/MMXa7
	 2YdytWU3pVdW8aKYoDoeLpr9KGfsMw2OH2qFMO42V0fcBRq3hrTwtrK9Ap5EIcGDFo
	 /9Gg7Pc2pdKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C28CF9C5A
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685015358.31905.4243603066609532649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f1cb0e0930f91be26457ba146c45c24d36ccbe8291c1d0547bd8f61b602494
Date: Fri, 20 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726850153
