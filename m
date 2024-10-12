Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3093E2F870
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728776754; cv=none; b=sB1NXSZecwdxt1ejkaqNlvRz7uk1B2zpvfmip9gNlPby4KaUrbbICHhddmfV/I2iu5wvzfeSqGxJMU+vyR7te3NY1h7s4qArByS/nTIlDbzJYK1/937WMlZvBwaY7zqilWE7CQCaCwfwnZd6RHKGAGCTWVbabFkFaxxZ73v45X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728776754; c=relaxed/simple;
	bh=yqXjNM4yDiFVCYNI/vppmV/xce9KagKxwCQFR+8G/Wk=;
	h=To:Subject:From:Message-Id:Date; b=VycPWct08Of0Se0XE0TCOdDHcEjFSl6FgItR3t6B7i2qQPhKS15gPpvzobtIK+FvMQs92zuWK7dnnvT8KSIUyoMaaKSI1yesYvIbVwPdRF3RulK2rv/w6AHAK0Rn4SLvABcAkU+jeMPJ4tsZ4m0DTDS5GLRB4tJU4oKVoFh8hrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buksZPHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buksZPHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C9BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728776753;
	bh=yqXjNM4yDiFVCYNI/vppmV/xce9KagKxwCQFR+8G/Wk=;
	h=To:Subject:From:Date:From;
	b=buksZPHAXrU+ptLXFwg57lu1wZFUSoGYjEzzp13BJg3og4ApMICMs7aSb6sKcx9Ir
	 XWDv5vbn82xwos/NSNynB8ggfP8gQKzStTzcaL3X2CE6HhudZC/g0yerLdDIBt+rJ2
	 y6tJfFqZOIPcvd/i0ZGPe7ER42/PdMc0YQ0gfdj3Cf3e96qZcJ2mQEAcRNpsh1TU/w
	 uhD0zRvBMe/tgwZxhn6U8FG1/zovrRtKqtgWjQ3tvoaO2GitRR8a626ZRI2u5M7AJr
	 ZeUl0TEhP5odcHqGulc5HkcNjVZMRXnfB0Lgu3B/HHk5nka2IWQ+EJBej9SWnbXMtn
	 MVG5BRC2azK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983BBCF2588
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877675360.10264.5118177575167053129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f3d9c2bd2491f84a597245f7d8778db4af2ab51ab103e7f93184d062b43ae3
Date: Sat, 12 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728776753
