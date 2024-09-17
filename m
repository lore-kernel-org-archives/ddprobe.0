Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3763AC36
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726614354; cv=none; b=I5Iv0D60f/MlkV8O+4dPSYfeyxM+umYITHETBzbochW2nJJXbPa1hteTETFcm3XzX+p16siYera8iF6IIWN86LrkOyQLX3EDwUazNs8pAwiOISpcd/7bh5Zc2DXX3oAeBUqk9I+ZLFZRV8GtPmi2DQWTcyX83vicpY7ER1Po5bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726614354; c=relaxed/simple;
	bh=OWTSj1SAKQDd0d6T0Z1aEmch1UmrgrDgBngZ5teECBc=;
	h=To:Subject:From:Message-Id:Date; b=JG+keEde22sHHIYWkJmNxEPxzzruemimVxzJXqGE1WGAF3KUx3SIwcjQl5XcLIGnsrbW8T+eQE5s0Av14aHP4hGLSund1cDOJob6R4eqlQ1wsZP5rUOPgON3tpxElHYVSUeeDtIXPnRcoGxrp0A0q9ZRbrz6U+Zpr09c4GKdlHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwFWVkI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwFWVkI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0176C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726614353;
	bh=OWTSj1SAKQDd0d6T0Z1aEmch1UmrgrDgBngZ5teECBc=;
	h=To:Subject:From:Date:From;
	b=bwFWVkI3T6zddfHZFUeC5Mv/9GXfXT7/4xqPknS/K2qAfIppR/eL4DcXkdi8J6GY2
	 DR2dbpFezsS1fiHcBTSCgsDZvzxZnB9NQODtYUXKlWsp6/Yb1upzKU0n4zBVCwYS4T
	 vzYKLVv8NUt0cFaX9Ra/Wvo2oVyg0IkeRxjSY/jm047nIJH06XEN2U5ecmmUY4PezB
	 fftD4saYFsBp96VHY3q17GivOTHmmhrcoiustPWhhp2Y57QSPkBUatC38netvJ1mW3
	 iiyYVaUR0CBkVDg5Jd6B/6SeH0y/bHOdLKEzMDXdVJwJJ476DCsJcX13YVOSvC1ti6
	 r4fplLogKf5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99574CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661435358.400.6857126057772825755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6c2bc7b4a6896e5c71496a7ecd0a5236e3fc50c90c087a3b425df67b8b0d13
Date: Tue, 17 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726614353
