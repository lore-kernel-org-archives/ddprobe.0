Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B82192E4
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751950794; cv=none; b=HxeBqDAVsXJXUw89eDkoI6TDb53A2xEfPu4byN3lMQaYzHlCCO4KjJuXSlEuvNRPVi4Pj5gez+nLMZGjNXmLxOKpALf8h+33O+VjtVgGz1mufqlyhQt5bm62dWvBy1st4Bip7QtTDVVcjeVMydIdNIPM1J37mAlHotBpRyoqdhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751950794; c=relaxed/simple;
	bh=MBrXeyueot2GifNhcsQvZFDHWY6BTu60+7fy6BQ23tk=;
	h=To:Subject:From:Message-Id:Date; b=lB6tZJz4Ga/n56+21N0t2sk/jT+dNGXmPg0bQHFoIwhFBcsJTGft8ehjQWueEhamiY1p+87OIXN8j8bH4YPr+tc0UWxKN4Vm9II72PUihFH3vtDtB9Sk6ToXHVKl5uk6mmGoXyDX4DRSj6k1X/bqXG3lck1FbVXGhW2XSlhjyTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roBWVfrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roBWVfrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D367C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751950793;
	bh=MBrXeyueot2GifNhcsQvZFDHWY6BTu60+7fy6BQ23tk=;
	h=To:Subject:From:Date:From;
	b=roBWVfrHAZ0/jEomEhHBIw/CKVXbG+iGpPK2LBdEpx5a3VWV2sbAdFXSdWuo2WSIj
	 +fws9/Rm5gldkSSEjkcKxMvdArwc22O4gWd/XfyrieNDioKKrjOk1H/uX9kNIaL0Pf
	 Rh6WqdzSwon/6vGXQ9bRVh9uFcg/gSj65ufANJlnzq4o85KTY9SVLCJLRJ8C2dHML9
	 ZsM9cph/j28jHE1IaU4P1xykdAQr5e0vQ6o3StaiyAf5R2y2keXJ484sNUva+zCOGd
	 OFBj8zDNZMTvq4CGKEy6Zj+xMhrWDqh1eQKWcAKQf96pxnIs4RrAGC7jH0lC7st7Lq
	 SnaEoNeA28Tkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F028C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195079357.30078.10251375335921575624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25dd24b09983546942304e3ce1067166e2ab917173f86aa33e063900870296b1
Date: Tue, 08 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751950793
