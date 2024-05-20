Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECA36CDA3
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716208343; cv=none; b=gHmJzE8SLnIPC2XXQR8HCN+jsf1b73/sKY95bt8KIZ1j7/oSf68+ZgYG1F36ORMGI3XX5kzQWQ4ZhN1Tr5vbpCYPPoqEXWTDHdUfTdYot0tXm97tRTGOpowmyPzfYwo89Cp6/J1IVFYwfm7es0rY1CXXaeVollic+DtGpyWj9hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716208343; c=relaxed/simple;
	bh=ijanKygQfsWdf4vq2BSTTw1NoSjsC5sZy3ifWRKGGgA=;
	h=To:Subject:From:Message-Id:Date; b=L2jUxxWqyOK2JR7iheRybmAtZhbsRin4zen6mAHmS7JNdJ+wfqchHHlv24EhkrUiMVnnSvRHEZ8Z0dhhbmDERdXT2cPITT0qBMyp3Zyior3EeD9IS4SbhmAPz4FMHSfdwWLH4KMcnfhyly4Z8K/7MtyYuc+xtgBUpTwGMkv9EJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjXbqlcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjXbqlcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ED9C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716208342;
	bh=ijanKygQfsWdf4vq2BSTTw1NoSjsC5sZy3ifWRKGGgA=;
	h=To:Subject:From:Date:From;
	b=LjXbqlcYeRuGuuE8yJXYbb1dvEQ4dj7FXC5ijFjdbUEW55w2MRsVeh4/A/bVvSrvC
	 mXKYbv0Umy7tZstSfvm4Asi0wKUXNdzBLA/k97Ki9mdX2R4OOw5Gs9cg580xdUphnl
	 dMvmSR28LizInVGbzmXjXG6qLk0lqqkRmwhfrBXZFGfQWTWzFWmE1l0QTJwZOhIe9n
	 M5lez11FzRgnEctTv1oPDuT76brwffy8RhlqtvUbth1J3Fca5dv1qsPZBe11AP230c
	 nuVwFPevHTVhSce9H5nA++1ep+hMewx1IasOsrJVQYPG84Dx4weIEmKNnY/KcaV2H6
	 XRiax5MbipV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F3EC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620834279.913.12880002991678337098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a86a27712622669419dfd1947c5b089a08cd7c3fd98194c40094f2fdd996b8
Date: Mon, 20 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716208342
