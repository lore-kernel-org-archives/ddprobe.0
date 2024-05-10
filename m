Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BBB23C9
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715304143; cv=none; b=DkgOO38Dk+LPiBdw3yJVYFoXa2h1shPFF99IKzxRZKfX+ks+S4KVEsiV9EprDwc5O9aqILsArWwV4emd4dH21kJfPOQDBp2QdSf34eeRPn8502FuKFSFw+ccYbyu/VcpKEzCRUgv7OskZvoi1Ez/UdJMskQi1vKirtU8bwsK5f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715304143; c=relaxed/simple;
	bh=gxPtWSyJdlfTnmRnoULFrcJnCUh//XTrUkbncxWyCDI=;
	h=To:Subject:From:Message-Id:Date; b=soNR373/ITYZjmJqt8kP5UfdsPwPbmWM0hjw2Qut1Jzxb2S9JM6urKmpAgc/jvcSBsdsfKI6sZ5Fif2ao8pSXmJh7bR9KihwWS2TabTK4i5KFJI+2upe8KLEz4n3ZOgr6tbRuAJfxrUskzYglNuZwu9GB1nvp7l12VC1e+JvJPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E45qnSgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E45qnSgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4672C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715304142;
	bh=gxPtWSyJdlfTnmRnoULFrcJnCUh//XTrUkbncxWyCDI=;
	h=To:Subject:From:Date:From;
	b=E45qnSgYvZXogLiCODC3mWsskpbEOZBe/1HJ8ZGy/X/dlqwPy4ONeuZ25Mh80Hxk+
	 ErDwGH3UEKweUcVsiBSuFohhqAPlvcSCOt+I07s0mm0CAp6xmAZmkr6v6d+ytznK47
	 mdb+TTEiwjdGZqUmJ17Se1G0PEwJNAsKA862Hc2HstO0ONqdAMVVUqBRFJPLx2e/iV
	 asP3Qz6gFzCiIwPdoB9vOLVJcpbOoYTcHwKm1bn84R8AB0UAsTgOOmN51va1uCpHhU
	 cE4c98TcJUUAJYHq03rT9CFOX/WQcpvxdKOn/wnqaYhgWJmISmNNzswd2zm6Cvi/JL
	 XwF7VxqjwnArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE00C10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530414277.8366.3971506333565241911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7038bea78d69eb2f4a94efa6bf8070b00c34124dfcf865bad2cda4dcfcde1a
Date: Fri, 10 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715304142
