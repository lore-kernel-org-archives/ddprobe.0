Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3F919B3FF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728992754; cv=none; b=UyxeLsWNNJfpNrvA1bMYi++ztvf2C8pwTSOXdcQSc6sw6nsWISq4j382TthsjFp06e4Bc45eRYFiAIbD0R6ROpHLi0if4F5vRsE/YUoAUls5ARxgiFfNEspLvJihFgugvPI0e7NDFZVlbzKgvOnYqpXvk1KezK8DbRZPtPxzK70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728992754; c=relaxed/simple;
	bh=2KtehzCHHut6a1UbgJAm/tge4XS/KtNZg959SroxGjQ=;
	h=To:Subject:From:Message-Id:Date; b=p9y2Cq2aI8dQGONmyda1yaGgK8IBonEFZ1kYiG6L8XrzrWta93Sn8rnYr6L/AM9U2Tr5KzHIFJB2qGF64riXMTiJbLuJjpQtqYUvElnjfThV/TaTjEHl5blBMd5FJB68E1DMdKwor3iiKSD9gZhmuy2odta0ahd0xQ3UvWVI/NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlIIdc9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlIIdc9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD916C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728992753;
	bh=2KtehzCHHut6a1UbgJAm/tge4XS/KtNZg959SroxGjQ=;
	h=To:Subject:From:Date:From;
	b=SlIIdc9v8mNGw8WUyos9wkJItPFlmNMh6sM5oUChnYWo3bIkDd2DYFTUAid8s8M0Z
	 s9IwS9Z6Fypo7UUUlXchjdq75OJh0Z4BPIuIn4wZpoU8At5AtmktVwUylKTwvgy1PG
	 B8reuPKzacMkDDm87eTxotBV/ilizkglwFe6OrucMhRxN6Zx4eqDWQekQxWZ5W/ckJ
	 bwEQnCjGO2HpcHG3knMFYIs/nPMY/g8vufBNCLHXPQoo5yJ6cd6DdfNt+P/ABxErQ6
	 /P8RnIZWvI+5/j7qbEqxcFoYfUg8YDVQoT37sBYH8h4iGLXbPhH8pNVP3ywQnOZ25x
	 nX/INAdmxClCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB09CFC296
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899275360.30058.9899254023217534826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11900a95085e1dc2f3463e10132d548f3a25307a4b3ee5fb1ff41603362b272b
Date: Tue, 15 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728992753
