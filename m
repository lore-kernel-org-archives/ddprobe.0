Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0A434105D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768584834; cv=none; b=s3pNtm50IONj5rKAw7+1f67Eoju6IDyoO5X91mPyoq40WCY57NO9EycFmNSeNS7LUTH3EuorlmaNBHdSXIzn6zgjdzsQZ4d+W2D/0StmNC/Hr8NR4VwdSEfueolINk32kfQ2mOJ8aI8VPg4ECLmUucG46dnEAZwZhqsIgG7JCT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768584834; c=relaxed/simple;
	bh=53e1ukIL38lxXJgjuTasU0RkgqryNqoRgZBzB7aGAkU=;
	h=To:Subject:From:Message-Id:Date; b=jwbwCssXwafBs+0CWRxgPoYfw6tLu+mU6e0NFf1hFdtQPxz5IYoP7cuJyyr/0TqOfTqlKbD8dCSo6h3F4qI7uVD+VZEXQHJu8NDvJgJinGD2aIu10i9sHC+4xiD2/KOdQ3Ydju5OLdcKIjmLB2NgEXNm5XXR0CFm2iZEyl4H7z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bmvpzklo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bmvpzklo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768584833;
	bh=53e1ukIL38lxXJgjuTasU0RkgqryNqoRgZBzB7aGAkU=;
	h=To:Subject:From:Date:From;
	b=BmvpzkloFq7BMLM46uW6fULfayVgmhECRYP6AkB0llw8L+MMxM28qqFqApdDRkB8N
	 w3gKqi2bC8dqxMJF3uEtqT+tXGuo72Jwk4tg9Hx+cJ87T3pH0s1AX2zrYuJKZQRc6O
	 y39fdZf/dpW6X8MFLqrYGGVrvjn7tpqUgibq8c/0kfRSxDjEWDk6WVSs7sKPKlQOKj
	 l4I8CSaWzC/jTRpeG76aefuXykWDE1v0VDxaD0apHgl0B8B09XpnJtGfoJjU/Ml7q4
	 4Ulca4HS0rHFWzJ7S7xSfUuUupjDYeS5tykmyeZhYoSFrFTBaQIRyGMssOI1SftT/W
	 BR1t/PZOOkl+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91692C982DB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858483358.14083.15680941870177791891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761c9ca9c46394eb4cc7126e01d81f2a505210c2a556823f5b95babf5618d3dd
Date: Fri, 16 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768584833
