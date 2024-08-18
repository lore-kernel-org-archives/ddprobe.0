Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3417555
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724024155; cv=none; b=P+vaYADTeqp/W+7OmojeU+MM/HJK+OaX383pp6lIDpuIBfOasSPCKVRixRzo8V0X1kq/mToA+P/bTAOEF9uBBPDiLCAQTFBYSRghs/GfQIh2q9dhVxlTqtEFbJIIrWYkWJGONmTSPNRPiwIz6XFD0ETbK68tMRFWXAMkFQIP7sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724024155; c=relaxed/simple;
	bh=9QKBFL2CdxWGaYSDULkBDudAXj5pyHLouMynNTslB/g=;
	h=To:Subject:From:Message-Id:Date; b=Tm4wlxTeBh3R6n4CCzZ+IdcTUZjHcLxlRwJotlcCx6+ZyHq4XV7PAob8TcLOZVmpHLZe/C3/2H7ZClS9aOHQWOJXuaOlogTznysOLvBtkyi68sDGVBH8imU/GCBDPc5XyfPz8aZGNgH60hxtmV8vFRaKvyN9fiSLTr7u619hi7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+cyPdOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+cyPdOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19DCC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724024154;
	bh=9QKBFL2CdxWGaYSDULkBDudAXj5pyHLouMynNTslB/g=;
	h=To:Subject:From:Date:From;
	b=t+cyPdOH0TA3myKHfCEkscechyfM1MkPRcG1/D7+Rxk16tnKFBdHUR12tPnTQGmE3
	 XF2FqLs5pF2lTJBTHYAdBHG4PKTT0vcQHcd09giH7+xBdptk5877oNF+sg4m02Ojwo
	 x9H6Dt/lUP0o//gKjOOUzVgrZyiGSRia0Xq4UfXtkKIq7KK2nod4rkXCJb5Kz2hq2D
	 kg00Scj1a+T/f17CXY4Z7aDIQoHIZhuRj8ZBOPcxRFTY1oANGjmF+20L0BmfITRrML
	 t7eETwSFnyDBoB5dvQt5MtY/b6k5Ke2RAbdpAEWFHwp79xazZTmVsRQ/5cgkXTeW+9
	 dKJh7DWpmSbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B106C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402415361.29004.13600008489955826199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1469e0c220ea959dd2735c36b2337c83478d225946b0363541868034768564b7
Date: Sun, 18 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724024153
