Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C19A94B
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722833754; cv=none; b=s01DKNiwjrhifcQpr/Gxq0FFC6JJ7I9KspcUX8IgQHuGVztdm1Gz6GTLqbqLHy/XdV5dcpJxLpEgT5yFfo4hIIkE9YFjEr+rvRl9G/b67ph57O7OasR8EEiey17HS0N3uYJdE9eiV/WHf1hgw/O8zh7EoZgSjAVcO7sY6PLmWws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722833754; c=relaxed/simple;
	bh=vFtaNzp36P5EGNpsDu48x7QkCQTDteQigZEnd3Dywb8=;
	h=To:Subject:From:Message-Id:Date; b=TAVSWlNAJblPXNWrpybjjuoRQPEJBXHKpQV5OF5AWhGP6cCFDJS/YekfQpr2B1Kv4VJj6FQfR9Ho9m3hyK9n9ZVn2nX4Ao642sluJMJTpU67O3nH/jFwC42vMKH28kS8mshmCStTppsDehNsj4jYdU7nlJmwDVVIzRNpjg3q0LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLmtfgu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLmtfgu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4C1C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722833753;
	bh=vFtaNzp36P5EGNpsDu48x7QkCQTDteQigZEnd3Dywb8=;
	h=To:Subject:From:Date:From;
	b=QLmtfgu1lGi4xlaR0zE8YIuwXAH0hVTjnol4LDfzDLVXNMybCeuSqvflJniZMiOO9
	 BgpRW7d+iI7gs5EoeoRg39A7EsIhFppAL5oeLKvF9jJ6K4N/Uj1G0Np4oDvNkMz6sg
	 r0gdWorEBW5WPBZeku4svDnEiRX34yNJdXd9S+BZuP58u7mYIO7f1lFRdMnd9heQXd
	 OXW/zrTyXzxC1tPT2q+Nsu7UIPDzdmKPY8w5WfBvYMDzeQ4rNnmHIf5Q6vRrW2ftt+
	 xHV85MZ1xK/AuW9Lj6tHhWmtqDLd4IW4bIsW+QFyfxfw9Xr0+sbokYeejDtt7l0XIK
	 nRxoIsoZTrjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC0C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172283375359.25089.15754993889266212306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8430937a5b10421f91de27c69530da0621c1882a48ef14e32b8fb535dc1dab
Date: Mon, 05 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722833753
