Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EA53C4562
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788415834; cv=none; b=EriAKib8c5Z76X119GjfW/nqIK7ZjoC5Kd9v77rYJu9eHpN/Oq8Aa07bmOlTXYvQpLSnsHpOXd31q6R031NgWKsDRzNB6ImZGjOLuwX+hFU2hwdHUUpU3C+Cu++sXor0hA0wrBr7wSE1Jb0Rzs4z64PR6laPKiE0HKBnUyYerFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788415834; c=relaxed/simple;
	bh=OvmFYdCtlfGHjvdNSVBqwu/HlkogPPWZFdR9/qmsFa0=;
	h=To:Subject:From:Message-Id:Date; b=QHExQey8DKRIXvoIafSiWWsV0SZXakZWVeX09UYlw+/xxKasKudBW7xL5XlKUHd07RfkHgxI3zSZjpauMOkgpbRjB0vFcaGywRyVZTH7rcHt07vCwikJZB/BKLkANnXZUIz0ZcE0FbFxg2mEACpZZ+qf+4sEDWumYEUIgncyFns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5XofE5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5XofE5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA858C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788415833;
	bh=OvmFYdCtlfGHjvdNSVBqwu/HlkogPPWZFdR9/qmsFa0=;
	h=To:Subject:From:Date:From;
	b=u5XofE5wepcYPninEYMrZWQkOx4bSqZii1WGLsEOKyePu/JVyZiUnVdOMXnyV44pV
	 bKzbQbpl5KS9F8UqnMwtJWcXk8LrmWxWY/CDjGJxemE5bkgar45v6TszjrGEVdsZmi
	 gyfwEotpAAIyjNs05E/7j5MgzEXVXLNOyrRdd071Kx08CYfTIhvnfairKqhtyUJX/P
	 4j9X6LytE9Cxsj114NY2orKi8s1PjefmMzBPn8L7vmXZRo6McwjuidNooLlQ+Y38Uv
	 8xo3sAys2B0Gf2OyuvzeCFEuzGbohWHq8D2EKW/LUAr0/lTExpa1H9Vhq+8JMSFD19
	 1DhgHVCZqOPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3323C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841583370.8524.3561784059827025958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ac028445f9df3b2a8501d08691c74aba073236955ce073d6af06aadfc2240a
Date: Thu, 03 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788415833
