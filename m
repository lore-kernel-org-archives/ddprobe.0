Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAFE421257
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784747974; cv=none; b=TyTpcADuMuM05ZHYMlk6N1PtVmOFNT6iNYaEKdBI+o6LcsJIyH5z9lPN1XcEItoSsszOg6vpDiRsH0J8g2y6xvApCP6nC3ckDjo16im0KkL25K/atdILfARg4hjqPq8S/9c9L6lhSTEx1s2LE+umvOtPHmD3vFv+rYmBSS3ZyWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784747974; c=relaxed/simple;
	bh=TZazwZAWCeXzE9FGlyaPH73aiU40BaLjDKOMS582cCM=;
	h=To:Subject:From:Message-Id:Date; b=KJtMG54E6kF2GfePjgmsQkQBykv0BuB1ejiKPzkZmJSbbJbyLrmXNUqcB5IK8rSioKS1ShcRPJQ+AIxgUj9QmXjk/fIdFnNKqdfxt+kV5jg+MyHQ0LA8vuGWBG9OZpE/P53SbKLuXmvUPHiXMPbq+Nv1/Spmcj7B09AIz6vo1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2hjVCTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2hjVCTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD93EC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784747973;
	bh=TZazwZAWCeXzE9FGlyaPH73aiU40BaLjDKOMS582cCM=;
	h=To:Subject:From:Date:From;
	b=m2hjVCTsNBr7QOhl291fjgPMDNDeTnKrP70CNtT2yj7lAlBTHhg1BPAgtrBfe9oyz
	 4MYFRtkfrLGpFjgShEvsKbGbJ+uVg94njOOI4sd1rU/3xMLdtnQDWJ8XpjHFiGNvgl
	 rAy9vL8XtEIwCnUG9It6QOozNmwv6BgZjby/wecVboDYlGo3WtGl8TRSQkOkM9ZkoZ
	 6EJjaKaGTVetolh4EZoDoviGbNMK4upX6iXa6zvdiAvdiEKcvY4IqNqOsb+z5N6DpV
	 IQs8mV8k7J6KRxGwLTRWQ53v72wF4gcM4V6kDZpHymkqh5FG0ZjsSAa9oMwp6kNXFS
	 chhjRTgH5Ms1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E77C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474797368.8961.1824010512544875937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a286fbda27508d086c52445fd339b41ad1f51fb53db6dc2a240cd5883b11cf
Date: Wed, 22 Jul 2026 19:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784747973
