Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E0170826
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750796394; cv=none; b=b1CyX3iGzNH7jGUMs21XbKNndDdk+EmdVKDxM62fGT1VYMSgL+j2SySG1wTXxDmh3dlixRsPxUSgquhrrd306kYUYTi0Q+f47bElt08lG+fLvR/q4Tt8+zOfUkLtjbsZb8Y8rnPH/IiJCOgxqu96XqLLyNwzuUa6zXCtmxfBQi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750796394; c=relaxed/simple;
	bh=b0CEEoZBT4AIF1ick05j65ufAbIwmhg3SYeyWhINorY=;
	h=To:Subject:From:Message-Id:Date; b=QvSXRim9NwHJtBx5qBLJjStAxWVowTc1BGAM+WsIF7buBh6cgZa3avM6xqmYMdmDSIi2uelZMu/NFhOzeHnzvnXbYL/AZnKn44MEueH40Qjp8sFZuS9Gp+23n4AcrNSHsGn1cJ6Xln8gsCe5BGRmo9Le8Iqf5GFl2bR6rTEBhBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHIu1rC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHIu1rC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1928C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750796393;
	bh=b0CEEoZBT4AIF1ick05j65ufAbIwmhg3SYeyWhINorY=;
	h=To:Subject:From:Date:From;
	b=UHIu1rC3LR9k7LgVIZHoRzvyrbFjjn4cWg7jJga8vm1go8FPwqFHRiQx6ILeUIKA6
	 FeXSXThR3oKPQ4Od8pjcMFXeKEGngUmhFtP5FadxEWLf1EMNLlTSc2y34xFM6Lgl9K
	 mT+2uuw8yPsysIwY3+W93JJn6X/NrbTn81OVTlrx0Z61pMCge8Ecye19dbimpcf0sz
	 5F1ZvQqU58NPbJizHksNAYNh/cN2cGSHu8XRygNaA3l4jr51U9HiFpTMyCgFBbx+mo
	 b3WyujqQK1hSP5afj6rB9v/WMgTYDAO3HDHOZCknz9rNKJtbk6My6mJPvkeM97hcYk
	 zwQdeWgxypD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5AC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079639358.2125.6314350937507090731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fb0df2713fd0d093b543ae2b039b7eb192c93de997d9fd49c67bc4acb80e86
Date: Tue, 24 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750796393
