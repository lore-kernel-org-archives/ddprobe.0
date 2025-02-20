Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CCC213248
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740071334; cv=none; b=XHylcpPVNw/DKf8ctGvT2VrJFCgN2/A3RCdYwCKGKvRV6X3IqmTw+gjh80fpZQ7eGUJ2zS6Yl/TbU94idyGunX79Wvx6xLnHwj4h1GcAloxxD0AeQnT9xcUdJ76ZqXTyUjFRntGH/UbNZe3AkfaIImo9nCWSIMIVaJnksx+/ScI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740071334; c=relaxed/simple;
	bh=PVNGOObjvfE6g+NgDM+HVBU3V5/HONzeNMSRWarXhC4=;
	h=To:Subject:From:Message-Id:Date; b=VTtJCotce39vG4mgo672or8T64Th+l1C0C3XHovi4Zt5PYmwJ9Z3uApyH13vLuzhaz93VaD4HZozkq+Syh9/wTrHVAFQs5Osr4a5Mf/h4AZFQ+RQR21QdyyOs9ArxDgLaLXgUmNx6eOdr3KZ0zf6dR/zULpLa/DG9GtydpxvMlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUUs1izl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUUs1izl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A85C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740071333;
	bh=PVNGOObjvfE6g+NgDM+HVBU3V5/HONzeNMSRWarXhC4=;
	h=To:Subject:From:Date:From;
	b=lUUs1izlYNi5Nh7u0VXYGBeMKy85lYWrSO3D8jAVx63AthKExcIleYiXbqYccJgL9
	 q68KKnKiTg+IjLS9NpVsN43eRu4mXidDKEXAsSmndyWsVZzyPdafjg/FoJ2F0OEgZM
	 v2kjNr4iw68B2zGkEQIbb/HPr1w4HcmoM9wRSiD3fsmFVYH+nBZr3aYFafJJYNoDSK
	 pYA5UyexS59Hj/UAr5ueLIPWqMxdBtLun612N7lT92FsNNyDzGKBOa6CKSHGdBhTIk
	 qE3VL2HodGem7g0DRJevYfYyKDEsuTwH8DtRthan0ht9D15pKTk69Gdp10JBAxGnc0
	 w+gvDGpdFaRXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9452AC021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174007133359.5914.5288895439163700986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c158d761c5ca598729b660d38f563e590520cfd9e33cffb909471edf1ae84ed
Date: Thu, 20 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740071333
