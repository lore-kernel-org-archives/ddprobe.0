Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0F23B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741929534; cv=none; b=WhA0U/D/BY7s+HWGT8XIN6fZczwOtdU6skYU7Y2hQStYpFnU2G5vIODVNxX0zfX3u9QnanR1L8rBQU5XdTcxNjz0FD3EPaMzaBNtDEk9BfFYZh7W49cRgrpfcp0cI8LEICqDPmynE6dAGd0tBJmjaDj7uf7/Luj2THoiFiTYO8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741929534; c=relaxed/simple;
	bh=MdEUiKXjpImxF5JOesblG0MrGQJCBcphFYV1AsrNXKE=;
	h=To:Subject:From:Message-Id:Date; b=V/QCD9mJQ49g/3BNa7ocpPD+zaTlNRfp6fg+cYUgKDGs12SkEOSmjbio312e2jKsHJHGFUpXTzkahiVn6+F6EupwaCHwcrxKxLjsSGHZ5VuoaACvjKUcFC8FN3XOpCGUxOliljNWymzsuC7WB6eEj4wj5hAR79XUURftjp74srU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2vhBIxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2vhBIxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA33EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741929533;
	bh=MdEUiKXjpImxF5JOesblG0MrGQJCBcphFYV1AsrNXKE=;
	h=To:Subject:From:Date:From;
	b=b2vhBIxJXq8xsimS12vkmXatY+6dGgttpPmQm91kCCOby16gJEL761ZEazHzkfdFE
	 ZrKUAM91Uj8O+PnbQNNyeRPnfPwJXm1TaPJ1oSNF4bauN+CDCI2JBvIxz8ORNceunY
	 Cit6FdMqC1RROkNRVB8Df+fbraKi/WULohOKiboLJGfY61pMy3jA+hNvTXBzJGCrN5
	 fWiGqlSRkEoKPgIIwmQg/TIplOtXoSJmWOI1FFmoFgbgDibWuPFGmcp28Z1alLIMkc
	 GU+zwhWJXFBpyi1xz3sg0SfBOt6jzAaSTGOaFp7rN5eDv6FdDL0pTvp5+Z5b6JkKFX
	 b+LwBtsGKR0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EBC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192953360.26416.16283051744411623153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c42d24e21c85f05f7126fafaacd916f7d2b31ac118a7f098f4af510b40d598
Date: Fri, 14 Mar 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741929533
