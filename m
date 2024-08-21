Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB7013A3E8
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724274954; cv=none; b=f3DcOobexMy/y5KQiBjP4XhHNnYyg8zdDUrx58oXbvicSN65cXoWLKz1wbX8BfAzOWZXgx4O8Ef4OVPvk6opAb6EVLS4cf3GFqIr1i/34/PyHbJPS9742H5oCafGCxn3JsBpUO6OCAfYS5LGIJWX6h7pfeu1pY0AHmuQKu3FAYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724274954; c=relaxed/simple;
	bh=CPNa9LLfNJULGbAWyEUenmtviRkD30G4plg60oGNKTY=;
	h=To:Subject:From:Message-Id:Date; b=pqcojRKn9QXFRSJ/5Ug4Lsuy5z/oqfrj8M6B2GMrdyWwxGt2pzFYUpQQySjY+/7V2fIBV+wY1Nkdqdhpbc0FA1zBMMjMpuq424BdzOoUAlj0emvsJ8VrVt2GpzJ+ncaEuMtucqxMIZ+mGFG6j0er94tZwf85jqTsoBvNH5/+08I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABGzrP75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABGzrP75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453AC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724274953;
	bh=CPNa9LLfNJULGbAWyEUenmtviRkD30G4plg60oGNKTY=;
	h=To:Subject:From:Date:From;
	b=ABGzrP75UWXFmtYkeTn7CtCFgmD4mHbdBHf1TCerXWI3u30W9FO5PC4SUi4bo0JZe
	 VDkPDIlR7fxrVgYfjvksu0cY2c53mt2meQsOxMwDDmPw2hUDwt/X14o0qykro/zUi3
	 AWaz1LZFCxtQMJmnmfZlTeNOI3Bk+CFjE/Wkro4Xg0D2WpiY/r21FLivS9s1ZsJvST
	 YKKAjJg/Eab2DJ6k8clot3xm4mV4fC16wKu5TQZcZdpv3W3eKtazHLoXwm0Iw0fVrM
	 Ca9zCeq6UBjM6jaAiKVo3UeeRZ4gsnl1d1tySDQepyOnbbVPOpByT+mYRMqt/fkGIc
	 BKAZ9LrjRsL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90415C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427495358.18778.628596267546857787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db762604226839e9c5c1c921e400e090b6738135c7048931a7deb2761ce105a
Date: Wed, 21 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724274953
