Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2710326290
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775594734; cv=none; b=PmPLajVzmCecGCjy8HyTVU7zTxYa1576S4dhJdiXBbMfgstHFLJ2mYKJ6cLenkH80WLinqBjs+ytuKhWMjjAWFab/Yx14mN1t8eZXf11Fk2rtLgYjcScTHUZjM8+mREuZz2CxDIsjjYUCQRGKeA/CgEHCq1xHjOSUnjSijS99Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775594734; c=relaxed/simple;
	bh=d3G9U7h52YgJUCDDnibUBTR8Xfq4urHdpprduRHewnE=;
	h=To:Subject:From:Message-Id:Date; b=cdKO3ZljwIt/bQh9MM5kihxutDevJv7nlJ50FIhtlFv3F0MbkRRijwiWqQjpZC29j0760wWyDkMDDfpfDryceqDUZ1/OneBJiCSl1ZOlJ8K3UU2HZ5bQjgcaZPqs8zSds+wR1FTNQP0nv/yTClWx2S6DaAizXwqntfqcMLhmQ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsLk3Sx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsLk3Sx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775594733;
	bh=d3G9U7h52YgJUCDDnibUBTR8Xfq4urHdpprduRHewnE=;
	h=To:Subject:From:Date:From;
	b=WsLk3Sx1yLxdmkfKKBv3MyFGzwdGN6nMJ+HBXJGDUBYeKpN2zjTCi4MVbkFOdlgFX
	 vxUL1noiZ8PDVFCviOay96vmB44o7UxqJE1LZp/0RdJ1BRco8EmgwPTm2kDbkyoeiE
	 j5wqauX8G7cGvM6/kn8LEQh0RS0O4mgTaMmANwJC5JBq8ES1Tw4/EONgUOUHoY/np1
	 aj+5jEGK+dZOUnkUPabWIMN10DM060/pU7fOaeiaORh0Old3SNoxi7+JDMhMeCC+X0
	 NE9ABdEzU6EmjGOy2Jqiszt7neDzrE5Bn8jMfAePubcofbeJT7v4MqVte4/KzpZN4D
	 G+dz+hZumPhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB220FF513E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559473369.24377.15966275599529420440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b454921b0370d0f250d3cbf0dcaaf6e439f68f76debdda160ec33c1eddb127b2
Date: Tue, 07 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775594733
