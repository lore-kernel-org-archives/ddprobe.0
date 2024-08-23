Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB9C1885AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724427954; cv=none; b=qvVnW4zMqlD5W62jhvhBgAis7SLGzGieiIz2kFKONi5Ro6yLbjzrEYdgJSykkmukLPmK/2LYUPv6y1ZiOfQR/w+TGT7TWxGBCHaiUOv4N2MHNWr5lpHp9LYmY5fgx6JAiejTQAeOPWLdvkytSFaD91O/GWRs/Wb+dCZ9C0lPxEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724427954; c=relaxed/simple;
	bh=wa2dwGtSuXzWkmhpmnk6OzpDxsb79t5TbDc7zlbKMWQ=;
	h=To:Subject:From:Message-Id:Date; b=j39+KI4U/pYQzwa9znmqpFIDgbLNVHaT4fKjaqr1rMJLexox91Q2Ml7y5tWdbjxSDiVcqpcHuaK3S8ZJRPzAtRkvLk0DlIg+9VWutCyfzc1j3+gy1uMsGMAziE6C0WZmhWsGKSP2lJdUOsLZiK2fC6q8uhGRciCBT787+0h/H0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtRtUeQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtRtUeQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EA9C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724427953;
	bh=wa2dwGtSuXzWkmhpmnk6OzpDxsb79t5TbDc7zlbKMWQ=;
	h=To:Subject:From:Date:From;
	b=jtRtUeQfl0HLvbIxGjn/InnqbiTVkYYYYzOcmyAO4fTqRiQVQnyK9W1ABHQQrHjkG
	 QFfW0kgfOtoKSQbZKb9CBGlt+NiNDXw0gsimgkPwkKWoUchwUsuv5C0u4gUAG6rN6W
	 iGP4DnbyBY7d0KX5hdWRvpSnipydLy2UPka/WQ0B9qG6jPDs4xEAPhxO1m3rCpwnSd
	 HfU+1E+mvTwbn9Ier3UahSEWzAtHegE2rWVejl+EwsbjQcnIeBsQMxsNPziqz4/u0h
	 1d4gZh5nISGWOcD3NUUeN7unLn0nBZ4Z+W5Jz8DLC9mg3UGlrBhpnzFQ6jsLSdbm0i
	 LF0zEoh9U6yBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DF3C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442795366.20225.9505203830151579661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d276ed6b7aa6b6bf761a1be4761acbea7f7d266cf0fa4109138d916b07573dd
Date: Fri, 23 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724427953
