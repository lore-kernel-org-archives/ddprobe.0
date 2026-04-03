Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52522346795
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775180734; cv=none; b=ZGZikEmNO+4TUwTlyssx3QUtOL6pQtz9iGY/LnUhFefBVcBJEvJVj8Hc91F4SZlFwRxKMHA9dnrX9aDWoflXPw7Dc4oBp/Ldbe3LtmOzo1g5EzKd6+EiqhdS5uh4JNN2hgZtjNVA4BP/u0VeLWrlAz9SDSCkGs0e9i7Lv3Joiw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775180734; c=relaxed/simple;
	bh=GEOWS0MVXbTY5f0UewcThSY+7/NN9uE9e5VEjxSX8Y8=;
	h=To:Subject:From:Message-Id:Date; b=pkT2KKdG3aSmA69ztrJw3bVlYu057RCFv7wxjFnU1uBQaXpCl/PdL7kyo7rn7qKMbAwZMM9TFXHe3+IxPB+hG2SFA7h2ihFAStm8RMns0MqYjPKTI4FGGk5T+MAk8Z/EXd+Z+syuh0BSDuhWxfOCFoZujPnV3T3XwJpHqxdb/fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAClpHd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAClpHd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD32C2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775180733;
	bh=GEOWS0MVXbTY5f0UewcThSY+7/NN9uE9e5VEjxSX8Y8=;
	h=To:Subject:From:Date:From;
	b=BAClpHd+rnpPlzIlnDH85DKQruYrC5wJktutqs+5xOrU+CpjUzsPZ4ppoKaanTVPE
	 wYSZWMrXaIiuLl6tg62JqvFFr1fcawoAK1stBJQd04w+KWvBOTH8bWsZJeC1lrv5/l
	 CptdggsILDq3DfWyzQPoxONb/RQQoiPNJUZ2jg89o0LBbw0lt4HGknG9eKPF4yTsvc
	 au4p1yjw9dG5VxQ7Z2LxCPOKaYPTGRfjKm/aStl0Wx+Jf52Nw4rBS+xAslUzuX9tJO
	 Nq+Nhd6McGdejSSix8TM5vapL7BzurrnXIIb+EJmPCY2fIwQuNH/rNafOD3bkmkc4B
	 /eCgGo11oLxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB51ACC6B1D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518073369.23459.1766492294512695796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f85553fdcc1563a0a35aa078b7bbd0856a8aa6a50681aa3d9973207089ac672
Date: Fri, 03 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775180733
