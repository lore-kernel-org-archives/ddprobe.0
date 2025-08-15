Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B4E30C348
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755275994; cv=none; b=gWGbirCzEdqJJNYfWeAdrZd68bfW0BNRrUdQ/c6HTIYZQBGKh1/vZ6v2+udfL24cpC0qk9t2y2mLCQZ5xZ3fRbyZBJu4W4SfdJPyAAl+msoa4hNI5rQ76b2Tf67n42JCPv2bSbSijrhkDv0tqv7A437RqQAdNlZGAkK8WRVnbrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755275994; c=relaxed/simple;
	bh=D/cJ3hmHcB4EP1LsY4UvErTwQkd4ERPxpKdA60VJqj8=;
	h=To:Subject:From:Message-Id:Date; b=phv0TYqX1l2gzVbXX722820D6HttxdUB3ZIDrouhPyjh0kwVOLHsipvwbPYToIugajztsjlGZcjCNNI2IeHA9++wQN4JhUz846JdcLnJfOeqCoeudMfZepI/JprfvWcGyLkrJNlVpd1pf5FQJJy0hVMCiNFY9dOA9CG0nJZUzgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmKeqphy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmKeqphy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C66C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755275993;
	bh=D/cJ3hmHcB4EP1LsY4UvErTwQkd4ERPxpKdA60VJqj8=;
	h=To:Subject:From:Date:From;
	b=jmKeqphyH/L/wa20pPzZKvMxcD1odRjxR4Jly3gXknn4wmXOPUf84+0uNaWc21WOp
	 JUrAd5Eu/xMXJKihfzMmc/V2GSqJOfwegKst2i2HfuVWB+L1sIzV3/A0hoiv7sco4m
	 qvz6vk9qaeXl9ahK1u7SyPwuV0Sg9RmxbApUQz/ADnAjKWFuuKE7gJmFtE3ZFog9U4
	 VUsiqhjbgGZ92YmVGYG3s/weMc8CMxtF3XzM6/e9o1ztjGg90vEfK6hVjUqtnx8pyk
	 yJ5vVRJ4IJa1RRHAooUcao5wRMUEFOfTY8jAxXfgMGGpoTC/clCgvXsAo4VNUYLNKN
	 JJGURuxeg8jVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B6CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527599357.14585.8953415871316484243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328470fdecbc723f9318a7c964b187bd144b6b582da4948be8cca8b96ba22e7f
Date: Fri, 15 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755275993
