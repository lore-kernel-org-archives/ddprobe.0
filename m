Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E02842464E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783361914; cv=none; b=qu39BpSeBXjSPc5lY47eute2qyT5MMIzhP17PuyVvUU3tYDR5gJYU1MxVGXkxEUX9EPuu4DYNUeO5V96wkDHulYuEywxPqAafl1dwWtb2JWrvUGgRkJXNnBx3qGkLBBA3P8rDG9CQ9wzFatQj6Us3r5Md6oYFVRQPgs2LjbIP4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783361914; c=relaxed/simple;
	bh=ZD/6TZpxNjz/nN6aQPeZAh6teLteYVx4nZ3pLWDsr4s=;
	h=To:Subject:From:Message-Id:Date; b=XaZpSWtR3oZ/fl0JpUcwTI9WvVLqV7DitDc28Xnh4sU1wdbs5zuxvv+djMnXVLVQ+fLGyvWMgN6kMA3Em0nisw0JcyEsj8fZ0kqi4EGrKXLjUsRWIgFWZMh6m0DBIR1KGYVSTzN5f3EJf6f8oeRsyN2zIXRwusT1ziPz34gLUNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enA2cob+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enA2cob+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEC9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783361913;
	bh=ZD/6TZpxNjz/nN6aQPeZAh6teLteYVx4nZ3pLWDsr4s=;
	h=To:Subject:From:Date:From;
	b=enA2cob+hd5oacEctinUhQYyaRer8yrjP2X8qAsrKuaC/hTS3GgHK+6XHViJlXC38
	 avr1IkP1mR2F8sjjeNVVf41JQXTIS5CIwCHeDya+qvRkgN+vYIan66YX7e+tqPigWf
	 w5G1QabKZMkER5Yr5Y6Xotwq+tApE4/bZ5vh1qY6KWQ4V+VsndNQ706vmUKKXsM/sQ
	 s56fohnTcHz5eoWv7lkfFjGzA0gLY6tIHSrhRzY3w1HA5WSgTNKmTor0ITQloSaIHm
	 iDW0AOzL5/o0rQiMygOetn8XgZangw/73XSvPDRUo7/12UQo5bdFmWxSkF/m54oRlJ
	 eNGxsaNErajAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A92C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336191368.11427.17463003726447350272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd87fe520dc62f78daf31b9bd159379e5731d3814346bb32d7fccc355bf2080
Date: Mon, 06 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783361913
