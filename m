Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B59EACE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763259654; cv=none; b=mSM7eVPvSHXw4UFopAcDgothbE7yTwcc3/kXjgo9lzVItdDr6UkdceK0op4cPt6cIThgaIokpXGR0edVg5pw6dDLe46b3NGfUfxhk1pCV7fsqbYwtzJvoYuL9pnXX2YLUbizzz5BgZEvMq5/ErwM1sUvddNKahTxwFEl+dm6Az0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763259654; c=relaxed/simple;
	bh=uFv3x/kWS4/4emi6TU/xkLVBIOsxNg2I8lq4UfmBSFY=;
	h=To:Subject:From:Message-Id:Date; b=q2hWrJID5gRWWETsiLk6+TjwZLEsyb6x+ERozyiEj0lZh6ygt8c9E+A6Qqd9BCesd5RsyCPFJlJyLqWLMcasOYHtIov+K+hzbrOyKIxlzdbWjP30Z4uiCywb1eRpC1uIC7GyH++owiSgJ2P+mV5ytgX0fMA1xb5Hf/maS3Rcaoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUnYHRjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUnYHRjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71AFC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763259653;
	bh=uFv3x/kWS4/4emi6TU/xkLVBIOsxNg2I8lq4UfmBSFY=;
	h=To:Subject:From:Date:From;
	b=mUnYHRjlukA73yYr476wczjgGKf+gDczeIOny2Vm3PjfxG3BQWw5CvE/Ub7TJJxRh
	 7sJhd7/IhMZA4nA7RQkLqt81YAKL19/FK82l0bi/TV/siiZtAJuGLDx865BInWItkv
	 kfpH9HhvRQ7EoReXJr71fwJArSXDqhlrB554DvR4NzSetFJhGhoyNJ/qg9/KduEOj4
	 aKJAyECzmAKfbTmovq1X6wLz0LOxAAlpNY4oS/X343tUoAc7ct58FRWFiv13kGeVVe
	 F4v8wcwSX/zJoySWMIFnDBWvLHqvcI1QD+EBgI56vTJLwVjbIUiMdQvJMDrKfEZOkC
	 g+LD2+ncWeXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A8CEBF88
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325965358.21023.13120088175092415980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b8a01c1c5bb3659dd8ae9f2e8791aef57f81dc9a4836a96321c80c3e798fc2
Date: Sun, 16 Nov 2025 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763259653
