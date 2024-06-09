Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5A41CA89
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717953443; cv=none; b=eZPF3VY7W0DN320J1HZEgtU9ZFrCwSyBvllibiilipDBakAIEW0Eda1O55l/h6Yq7J5p1+md7cSi2AVBT5OAlyFUDKYdincg/Ugh/CloT3b6erqjZ0jvhU//GTEs4hB967idmunoAxGPczt+TWy7qM5EWh/EigrvtVKzhiI8+N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717953443; c=relaxed/simple;
	bh=RnCaohTjxRKnfyLRZ+QrY+BmyY7JVqY1xu8ZsRja2v8=;
	h=To:Subject:From:Message-Id:Date; b=k6e43FYutmUBa3zwLJkeKmsHnD/hWS67z6sLzH9I9k7B1I2TVN+TT3HnoayPd9CQSuyRB6Kz752iR1bdlfDYr3qpejq0GAdyMrkJdiO4zt9UptfLHo8uSPkrkKZPcEq30ZCR3ee2frdxesNF81NPR1hb/5zEUwQ1yDqVQP4gZTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcVc2rUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcVc2rUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F4EC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717953442;
	bh=RnCaohTjxRKnfyLRZ+QrY+BmyY7JVqY1xu8ZsRja2v8=;
	h=To:Subject:From:Date:From;
	b=QcVc2rUi/y9yqljyJl2s6XqBbGXGdsGvKRH0ep4qEmmorWXee0Vw+8TKUZ03xgUes
	 yNw264fg6d6lu55RSowtNhy5wJ7VGfq1kmGyEsTzAEuuR1BNNKFY1IJ839MyC8x3HE
	 6jDgtpIFc6sQBiKjjBvVKjJpqPV+ZQ0NMtHNCLvW152leky+zCYKG3/Koxozuaj3Wo
	 Zd1kj2w93TRg4VCg1v7LOssiopZcTLy1dsDifilEC9H/b0duv29n/QDe1AsHeYRQGR
	 u+dfGtcfpJ4OOxHDQHaL0mOdKlxEzi3L/Q4l0y+/WcnJUKypKRSMbF9RWC5kuYh56X
	 uFuAliGTMr2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ED9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795344276.19055.2645229473552568565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30219c39045a7ee1a36804121f720651d32d2357a60f86650d981a051a35464
Date: Sun, 09 Jun 2024 17:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717953442
