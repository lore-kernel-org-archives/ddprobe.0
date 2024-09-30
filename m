Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C84CB65C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727693154; cv=none; b=gztrh1vOTLRbk1gLLxcqc7Mkgd0R2ymByCce2+AORGv3HPjNL/CLciwhr9hbusiAq6m8qxrJV+phpvcpNvczlZELBN0yw3hi3m+134erCQTy+DcN84NU/ftXyZwAURTFFpjOndOkzrLA1iTspf9D4M7peWZaDjlci5sL5virQ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727693154; c=relaxed/simple;
	bh=bERF4UdQn9hZe/KAwynWxXkguhQvdmL7sOev7gqcbj4=;
	h=To:Subject:From:Message-Id:Date; b=X49BfIfO0wEbmRtRue05N70Q5fDJ2zXPmgA+xHXbOePY61hkM36SZMOF3CpMxfK1O3e0f42kbjqipCiUDeeYdS0e2Z1IxIC87C8i6pSQHFCqINCICtNpvjRvU3ScaAgtQ+Q/Loh3hN8N2YyT7PyPsut90FvTA+5LYS9EFZZsqAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rF2G46Is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rF2G46Is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4421C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727693153;
	bh=bERF4UdQn9hZe/KAwynWxXkguhQvdmL7sOev7gqcbj4=;
	h=To:Subject:From:Date:From;
	b=rF2G46Is3/73vZgbg6p+RQ68X4ePM6bVuB+Vro6I6AbC5g3hSduzgbgJju+FEzefp
	 xVK/bD0IW/X0SIoxHYkSDLh93EHf2wK7s06rJushORnEv1YQnijbQsBWeVs7/0IYuH
	 fe3TOPTz/GMLARzJ7lmsMeoRgUCktkXyKNd9NJ6OhoVLyO6gmwBnU1XTWCwfcexBAu
	 XBgjo5xBnY04EiEl+VClLG4ufJdiMDd97wtW/22rnDivnOojpc1E/jgWJKmxLas6ra
	 eu0UQ4LN2V9Ewe4mDzhfVzqWfX+VhcLaqngEYfi2JeTuFNb4/51fuK3KSPVsYHKMcy
	 jYRheAds+vFXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92685CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769315359.29728.2072378770593583013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56a8b4c699104b459fb39a38048c37f1ccb8648f67a7cf04435f442d5bfccee
Date: Mon, 30 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727693153
