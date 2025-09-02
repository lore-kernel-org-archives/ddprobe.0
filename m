Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2327922301
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756787994; cv=none; b=egu0vNMGdRl4CiWQ5/1ptLX651shvyx7rud3DwvKkOjStZszz0tW9IDEjiQ7YO7omPRVNoU978hyWEBa7whHf3H4kh8lHkdmb6XUEQ2wDJU9Pmhv59t56SqkS+dy3Notgk8G9ZIdw06Fs7j5aeCUMohwqP9Izv4TxpPIuwFi8Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756787994; c=relaxed/simple;
	bh=toidqfrJQ2dxPLvW23JXNP8kkjJ4DBRht25Um7Rnnis=;
	h=To:Subject:From:Message-Id:Date; b=VPmXlUqQ+h2ElwCjRybdK7dszYqS1n+i9n6CXLA02gRl0LfKR/LwHREv0TiwmwmTsgvS+QGp4TXAN2MOgUezuq23ebKhMt+DZC0P3swDgOrdwO3eR7utVr0HQoyfabs+zruJl+kUgn5R+BJRChSJvrmeFSdRAZ7Nr6x/ylZJkh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuXCnxP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuXCnxP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A9DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756787993;
	bh=toidqfrJQ2dxPLvW23JXNP8kkjJ4DBRht25Um7Rnnis=;
	h=To:Subject:From:Date:From;
	b=IuXCnxP8jnmi+eSaNZnLOEVq73hSSzGMebGB6V5h5VzwYTl2hw2KaWXN1T9F3Mjfx
	 3rxtcTv2XtaFBSXixoplP7MtXjjbB5QrG51u6F+OxwQ6ceVW8xziR6uGAueke8OgTx
	 BFo1uEtTkARsqwd4Cep7mr5LyX2R99GYR8SSUlIZ8nTXUh/n3WgwW0eMZ5u6hZP//b
	 r1JxyNoXRBk2UWHrMZTKCnVWU2uSI9R5gVOJ0CNj2GFVVZVwz2QoPC/qLT2fYs7ycW
	 y9HKWEL8mgOqUBWo246qaPyxDbASWa48sgRNlqceGmkfhugtFlG+anMB5xEFAMOx78
	 4rS23ICEo1+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E988CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678799357.16625.3760922432734975496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe203b233b2bfc2059ad12af80c1da1a990b24982c36b0ab94d63aab10184a9
Date: Tue, 02 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756787993
