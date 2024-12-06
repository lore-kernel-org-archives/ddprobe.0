Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA4BE46
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733468754; cv=none; b=QyYHxCi64NleCD9i439vo4O3xeBGYGne33n8FBVTSBUYtCMg0wft3GA+UDIyJZ5ivsARFfku/N/ONcBa592Ui+WvcmKjpZ8ZzOeRluHgINh1KQJeev8Uwjv1R/tz9w+ToY59Vjl1xpj7Wixt/mlUoIkUIvpUrLQT5C/RpJx/JYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733468754; c=relaxed/simple;
	bh=0Z2/ho0x2lMxWXHMkr/uKBCctclSe5hjwLJTLdZPMdY=;
	h=To:Subject:From:Message-Id:Date; b=uwyaeRWpO5YKp3gANqEgp9fjHZg651qmJMh8YPI4mvPCPFkgYPP2ZDbbj+ldVruzoWaW3SunfttGTDm7lSSugHAHFhDTUaQNd/UtotRmK97NED8hO/R2O+o0JPcsjeDuPwXAb9LFxbYDg/z0Bh1AFRF2jCe8zhTvNSeg+gqZcA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBM26f0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBM26f0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC599C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733468753;
	bh=0Z2/ho0x2lMxWXHMkr/uKBCctclSe5hjwLJTLdZPMdY=;
	h=To:Subject:From:Date:From;
	b=LBM26f0wiSLxIjbYHD605nPUY4ghjtt46MCUcqe0r5+B4TUOToHpH093d5DHK5Fm0
	 9QvnnnVR1H7npHqWm7NuVvM2iOqonrsYkWzllmrQitcHnRPdkQe+BsQ4Jgv+iJr1Jh
	 bRM5ucCW+nNAQ76Baeean6/ZD82n70h8P1PIyL15l8tKTCNWV/rtWyDR8C21JxH5Y2
	 dqfnncoeveanbRe1DcKtc1nWcpjPw37tlj4n2AvF+QpXmNYlvatFgA1XieNRVRg1E4
	 n4Z8z2Lql3Vw8X2ahI3oIUkY/13WaUiUzR0cUriFQISngH/Pikr1xMYZmT/xbf+DgA
	 D8CR7gG/dlulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9879BE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173346875361.30690.8733700943989263144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcda926e679840bff56b6d14895bea064618ad7d380e62fb332223e031ec6077
Date: Fri, 06 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733468753
