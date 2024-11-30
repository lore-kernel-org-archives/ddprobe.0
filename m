Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3570A1531CB
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733007354; cv=none; b=mX3T59SUcR9bqgLBoByrcq67fk1hFGRJtqnbg1pmZ2sNT75TLMCkiDVeKy6FKbStXGC00W+/Hy8TXtqaGYaxm0aGUKKe5E8iT+m6mZvCzh300DThnW6hRKBv+40veomDO9G0aHGV+6qtUqB1M2nt3ecWkO1QurFbYphXX3OtRRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733007354; c=relaxed/simple;
	bh=mtfBKTUTmcbEQPSl7xjN0GF1br1DnGncXst41LOA7J8=;
	h=To:Subject:From:Message-Id:Date; b=lPRzA3LqbkfP3TfHfQZgwbiyCdLTwXp8RH0cfjTuH0DyZENAJzUOlaNu7fRc5af0Dy++kqSb8+1FjAhbSMKkNcGTAXR2+hwHJk5t4zzb0NIjOu39AvVCRSFGLGp2DbW3SEsa/1HQF6QRyjNGu3nwPDSacqE6wGdnITLwHn0VwoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3XTSJoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3XTSJoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC06EC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733007353;
	bh=mtfBKTUTmcbEQPSl7xjN0GF1br1DnGncXst41LOA7J8=;
	h=To:Subject:From:Date:From;
	b=S3XTSJoXdVgnC+6DEgYWr0dNPy0JvcKOMeUZRMgZob80bOa4Btl9w13PRCOTzLQaZ
	 yWKvzH56EPJGML/HCSPolyOtOBkvBJa19Mvem2yMT6YWecsGXrOxMjOpGVlMFZ5m6y
	 jROOg4ik1/uKnHCZH6ALibuGbO/uYXiOxUwktVZN+1AEN7kYl8baSZEsGLMKYmz5by
	 +ac1LmtV5gDAzrLbTyac1uHWTnADVONE+b93vH8ckgywE475bM6hnU8xKc4snz/2/X
	 oODmBVrW66bs0eZpnk0mKFkbHD0zbfzy2kE5JRyY3W17VGUhWntQ4HapG6VE4il5vO
	 BDLxavoSuPg/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99633D7360E
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300735360.15156.17946741655088767766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e5c0481567b089839f61315c6c49d50daeded65301b22c7d6ca7c4b88c3f43
Date: Sat, 30 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733007353
