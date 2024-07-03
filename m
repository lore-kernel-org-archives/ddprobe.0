Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D94282FA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719983123; cv=none; b=uQrF9P+9yDP4IYduZ1m9MYxb+7c4r4deaeK+W0wC00s/0l9Hdm2cDd4aize9lAXH4Ip2ErDqQ38B8uAhjtLCk0yqAoZXKg1zzvur38SCyUazo/1hshxxSqtVZS7g+n4N2hM0Xn6LceyBeFr0undqkRYQ5lF5KMQvy8kOU0eI6VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719983123; c=relaxed/simple;
	bh=C5Y6yRNOnmLEFwB/34VnYta47lWttA0gnestIZMA1xM=;
	h=To:Subject:From:Message-Id:Date; b=pjd83LkxUMpBwacRm6TtA83ZQYS7dQfbwV8sOKka5IWcft2TNRgAJ2axyYkQ8OYqpueWzUbzVMuvpEGtas602XtUqfM1EKjtKalZuhJMGY+KcP31J9Z4E8TWkynq/a7r61vlbU2PiSlfQA2j1xMTjyWFwArEPxxNwuxV7cUPPs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sksF2lYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sksF2lYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00FDC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719983122;
	bh=C5Y6yRNOnmLEFwB/34VnYta47lWttA0gnestIZMA1xM=;
	h=To:Subject:From:Date:From;
	b=sksF2lYtGh9TdAvopr9n+TSbx2APsgFijxjDEYvx8QucDseGKu6IqwBOOWCJKXk6O
	 E5tkq1M6hiZ+5x7Ixuyt7+oXaPlt/EjS1DRNozXZTf84JMq8z/1HxA0ibsfg7SRIiu
	 n2dmgeZ9iDzyTHtsl+W0LI3Vs7ak8gi2a3VqVAYnmszRFuZVPLjY7/GZmjjTusVP7l
	 lGf42eB3ghufhFpEamzApOsoAeN3fO8M7kMIgz3s5ioh8YZ1vX4Q1Jo4FgTyCGaSPv
	 ATipO9eWPM82QnphzvJTn3hp6Y2YhO+3vJxuL7mmSyGWhBVE5ptv2v12bmG5nbKYMt
	 V3bJocIl8jmiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20A7C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998312276.3809.11514388452782761277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffaa54fa55937bad7e147203b708874baea401f5ae1d885b03ccc017a51dd04
Date: Wed, 03 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719983122
