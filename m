Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0704D156661
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757642394; cv=none; b=MYtHPletpN3NcK4JST2uHn/3ngyCx3vDB5qtA7CpUrLKP/qgZn2NzQPgsTH5eTENvrtyZ4S2UGuNMl4GG5QfIUWUOQYyH9kqFRht4ia+tZP6tULKLqAdPpPvNPFL2umXWmM4Ti01tA5FpUJaBjebZ1yqwN8bIBvqvo3+whwro9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757642394; c=relaxed/simple;
	bh=O+h/UInSAKCcfZDOA1uuPzPieVxrfWUTDgsvYWG3JZo=;
	h=To:Subject:From:Message-Id:Date; b=i/DJIU9+e7w1opW/TeH7ArCxrK+4aamr13WwqiYDEBVdchZK6SkbWMFkJGyMZXmPPrJok1PwOX9RX1m16Zl0VwS9XWHYvtqYWO17g7LriCnzxkEIu/ktqAi5K94OqC8ktXaJbxgnWN4S/6/G5zXo64jNwSgknpW8MFXsh3pER50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2E8BCmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2E8BCmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D833C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757642393;
	bh=O+h/UInSAKCcfZDOA1uuPzPieVxrfWUTDgsvYWG3JZo=;
	h=To:Subject:From:Date:From;
	b=r2E8BCmLDgtZQngVMcDEL2Tp/HZXLu5BdcO0myArfDM+ytRSXogAfeo/LDyL1RbBI
	 gWOJyvLsClghNJlCblCVWc93kodQ+KmTJsJnBsWfLvSEosgYoD960f2BemKJ5VYeVh
	 W39F7DA5xj8ru2AjPhA/o/OLCT9AZxYFFsl3g6HeOa79g+X4Ve4GH0VO2MHLCcFpOd
	 xU7GghkbBk4XG/0UIWrZbICeEqloxzXXv67CPpa5LX/5JSNyj24ZTYVIRkGnaDpoME
	 extKJSI5Kdr8EhX9T4TDh5EAwMsTfMcyEKFzGzrLZ0SJ2cNqHLkCNPoalAmjsoS7An
	 DTTugBOF+6atA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF1CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764239357.31998.1543242350408942815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355dd820a928ced8b51c32c4d44abd48c1c6cd0945970a0baa83e420709fb699
Date: Fri, 12 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757642393
