Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E61DE8AD
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765984434; cv=none; b=uWwbf88jH+iM3zJ/IL0Ck1aP2mQYnolos5C/RwTbLT3j0rJRq+dO2qvt3upInXVn5dCznWZ2jpvtwuzhqKndKY44+R0CvXswsw8WkJgwtn+H/8yRKMQDAHM1sdBF99jSiNSrWaeFSXL+Vi9t743OJR8KvWqH0B4LwTbF+c+AhiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765984434; c=relaxed/simple;
	bh=W9imcfaL2erdSIR8ystr8bxMhWrb6oXtMq4q02PyjMI=;
	h=To:Subject:From:Message-Id:Date; b=neSF/vA6teJpC2MSbLv+EUAUN1dPCJz9AVHo4bMqKWQmXtSB44+etcBPIboAUPQ8pzy+SAQI8B5rnnYxYyOzRoj9D2aErsgPsHdaVc6bYy6RrPObO7DVpM2Fvl+GxmA9NnVJ/VcHWq5pA3U0EeDlVVaS/bWrrjRgXfQbjprTlaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlNzyHUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlNzyHUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7E0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765984433;
	bh=W9imcfaL2erdSIR8ystr8bxMhWrb6oXtMq4q02PyjMI=;
	h=To:Subject:From:Date:From;
	b=rlNzyHUrz5FqA92WKZ6UslC6aPdK8t1mElWJzYosdP46YBYYkaA43YOSs67B4gF3R
	 B6vV5taVfUzjTUdc6dRfwbsqQq5vuNjaAR0wBOLNNXsKs0JqDMmcm6CM+1CNHvMZ06
	 AJPgq2F2Lo9vzP0LplNMsIcJAnclG6Ii7hZUkaFi7iLCZGEF/D2Bay1jO0XVxmAkfz
	 CPB6Gfsajb4s1z9rTqxz3uetIydfGmmrIMfysVIRSr6hQos8che92iydldqLwZ20o5
	 FtvVL4WZ4cUEx1lNsQovzsfIjU2uKSgzUvQ9V4fXmTKac7MjrASXdMR/e8QmDu/Ysy
	 67bczsIOKgWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAFAD65C62
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598443362.25684.17383786093839146960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be00ce61ddde6957b444f9a7792dffdde09c097b96dfd6e1505e2eff7fd7aed
Date: Wed, 17 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765984433
