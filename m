Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5945E353A69
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789887634; cv=none; b=i2QzhiQfbVSScMDehnDefCJQcM32mZRwaLhQQ+G0XrhgXVbXSBWENCuLOJO4vYlf+JfdPJWZbNaU65E+kUInEsatxEg3eS8tiZ+0I6ZHJeCYe4W27ZTTpxCwyCxnvl5rtqBE1OzxNIufslgQcN2rPsTPgQyHPhHUOlXJLc81Ipk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789887634; c=relaxed/simple;
	bh=Sb34DMjosWASjlQfVrzI2ZGlxUVeYdKdi5hldqPiMEM=;
	h=To:Subject:From:Message-Id:Date; b=kK7kCGTm4E+25TC+EtsiP9eFRbVA9G+KaeApQUROdNQ5gtNRmuN6S0TeO8S9xxbTOXPWOkMb0fS63srqhnkPC95O7z1SHmS5SKg93JG8rJFsQIyrW+SvUpbt6R5jFp+sAWi94c3BmO9v0CKCYOn4FMXWw1IfSysYUimM1ZbKReI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvAji/dR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvAji/dR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E6BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789887633;
	bh=Sb34DMjosWASjlQfVrzI2ZGlxUVeYdKdi5hldqPiMEM=;
	h=To:Subject:From:Date:From;
	b=GvAji/dRRaCUycKTdOfM7//JMn30+SZVXMOi+ayG6CsHkzZETjum6qsWy4P/MALRd
	 zO6/GKmrBZW2Fc+zrtkYwZsQlE7KIn+gJ7P/qyF2bhJ2Tf2xBxJIOt+8OWnsBDFrle
	 MVED6M8zKNBphiiss4XR4+GVwfK/WIbv4yXKoERmIgBfEtt0lStHppg24YI/GQvaiy
	 4nUV0xjVa0TEn3s/yvCeFJD9vDXvn9rr7yHn8nikGCZgGu+i1EJpwLza21hS2PTSeS
	 UclPfWgIgipbxXzdgPIZzrFcc6ZbgBzyvOAZ6H0TS1BpYFGdhEWnuf6zaf9lg2DobD
	 YORZnjaB6WFCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A17C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988763368.26034.13370642045441112831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa500da5758626d195e8a74e930e52cba4bb9c5dbca31b1bd917d8a0fc37b622
Date: Sun, 20 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789887633
