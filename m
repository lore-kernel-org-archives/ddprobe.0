Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6EE847A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720247723; cv=none; b=F9Pez3F5xvbT0mcaPQ010lIE7YMgaih9gOPyrKiftrKR6be9L67UN8gOT9PvWSF/5GkKG1Bb/esd9b+fgv70Xoya26FVmSFjaTNd9IOWB8KahS0+PGX2XiCmpeenZWJP4nE2aOX7XP4yZo9SmTm6S7GQ6/bZOJbYg9BKIF9GeyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720247723; c=relaxed/simple;
	bh=jO9i8FOEOMEuPwUNWjwU/tc5za59fPlIXhg69Ts89B8=;
	h=To:Subject:From:Message-Id:Date; b=MTonaQ545iVsao2SAYMz2KttRBhVIg4gr5c1aT1d/xW7cyASqzxV/yt2PTO/THxckyqYwqGg4kb39vdaRUGroX6gHysxKdwzdNSqkbx82yntMby1eq7RuV4b2G2XpdMQjn663t2TxchM/JrRVryRBoc92P57BHtL1NLbL5xG6zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH3UNzrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH3UNzrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB13C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720247722;
	bh=jO9i8FOEOMEuPwUNWjwU/tc5za59fPlIXhg69Ts89B8=;
	h=To:Subject:From:Date:From;
	b=oH3UNzrcT4MoIqJItPFkbVrtOvxQzGTdeidYNA19PqgzBJeFuVo57S63Zpnw97ClE
	 kNSy1zbkj9PGI/zvQegDlJVygWf0GEvrNTUF+nyTqmdHAF2tMwgaTpaqhZLb18NKh9
	 7jyR6R1htOHJ8e1jhh/SLFQXBG1dI6R1A0OSMWSTnhG0RcZhHiKEnVta9/BKtxEZG5
	 AU3l6zFgerVVdblVQJbc28iI5ZSZ3O4gawmA9uIYjZ3CAbui1/rkr5wFpiKdObWG8L
	 qYgQDUArAAnr3N27ZQEvlmYuWo2jzYhvcv3OI54UieOtuO8SxQEZH34Xam1cN13VLM
	 E9Ux0Ceyb+GEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93F9C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024772277.4279.2942400713998327224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae5a2b9108cf3335384290d402c1cc3a4cdb4885940369cb1a83c893783626d
Date: Sat, 06 Jul 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720247722
