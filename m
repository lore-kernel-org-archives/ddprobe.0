Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E31AA782
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745828994; cv=none; b=u/EH6Tl3MtIBdgTNTXNK+vyGEN0tdmOe17WxTVc1djT6XtizY7UlskP1cgU59qZ+8IajvPTjNEissSI/np6G1cstKU9SFieXU/kbXqyzURPergjPrLrvoYuwRTjGI/fe9FcpKVFUeumT1wuLpmJcY1X/hPNdmJT14Al6X0KMX4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745828994; c=relaxed/simple;
	bh=rO19IBpEChheM119/olNMdMILirMjAcqMmnkm6d0xTc=;
	h=To:Subject:From:Message-Id:Date; b=bcxz5nvueJ0avBcPGezjA8OspiX6wv50145qTwGiWPSZWTs6HiONpls1nFPc659NTPAww76iJKHn+MPcXHtE1rEIYRiDpng1GT9U/l/MtGY8kvqJ+3qqWiBvA7pym11hyJLaH6JucUhY7F3+08REICjB/EqYTq6+kpGNaBzi7uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8UBXwkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8UBXwkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745828993;
	bh=rO19IBpEChheM119/olNMdMILirMjAcqMmnkm6d0xTc=;
	h=To:Subject:From:Date:From;
	b=X8UBXwklL89Gnwu+baCUgR1DOtNDdFaooSt0vzcI89RIYobbRiJEP0R5ayRYV3439
	 tew6Nv/zKUhqGplACWcXz+ZnUixy/4t1qXAlIRcsdSm7PFTcKj9UeZsCasdBDj3ue2
	 TMhiMI+793GNRdlF19/u+L00dm6WOn19P27NbiIPseL2PO2yfNmi3+8/UrU6flXWsB
	 UB7RXOqOsXlZmrhlJRYSWSHz6VGqyzlBl5iQh0ioDPcRus7jCCnAwtSbOcNoeHY8JI
	 wZWB5pWlXKSpCsTddb7EXsGJU0uzVMLWRxAEgDYBTwVqj7//64ZVllBuRu4BfW1GaO
	 nexAJR2UgwtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB66C369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582899357.29474.3031612863206683105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c7129bb993b6dea0350b0ef8dce8922207a1404369ef6e6e58c7f171e88732
Date: Mon, 28 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745828993
