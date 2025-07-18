Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA00A930
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752818396; cv=none; b=kbpKMCkYmeHIaNPmQshcSQeLEYWr6Z74ghGjAAkyDoYga6kmkQQStrW5zWZ2D2vpKoOzTu5LWYJTHvA1b5gRMY5fxDsATMnRLbWjJBOmefojBvv1MHASm1G2JPIOaigLbK1COBl7pKHuHz0gevSUeme5AlICykLDH3PGxC85O6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752818396; c=relaxed/simple;
	bh=k+IRGLSSyeAt+yjXxQ3pR1GqqRQmAhtnRaMuMtuABjM=;
	h=To:Subject:From:Message-Id:Date; b=jppx1shwm8jC/ZenbHRepMkmIjqJonTGH34qt+WD++C79QGaQZ5l3/Oj50WCyp2/c12+emkTfl6Jnn6cTiWdj9CZTbWV5wog2B5Ex5QxrCJzuTochEZnb80bBliSMoQP/4h4qvz5zKgcrBCcRJufHOYXNkHittFJ1oV+OdGrYUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnVFOOtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnVFOOtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C65FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752818393;
	bh=k+IRGLSSyeAt+yjXxQ3pR1GqqRQmAhtnRaMuMtuABjM=;
	h=To:Subject:From:Date:From;
	b=NnVFOOtcumrUFzTgbSjdIrAiCQMTr3iKuLZLHDw7hTG4kHb3XWj9LlYpTW9OiJPaj
	 5NSD/nnOD6H1wUN2p1g6dJv5YvQzQjHhBiFU7z/+iK1a+cCgsqRvaQVLE2HDYR+6Zv
	 C6V2CMOtzTAMgb4BX2xKf1BjbiolWjiSzGKOgTgylYWyDvGNEOrErrnzlrw9EhhvXW
	 DuEfo9HZ/8ZDhrYA4OcE5ngf74gBIgZbZE+kyqLwoO9OIqEXq58HWTiMhNf93/MnPC
	 Y52yfr2lMGZou2GcRCSUgDmzkVnIwtxbA09CPHZAgtFqUm73RdKf8/YgOJ+dIQtQEE
	 GwRwqLXzrjbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBC1C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281839357.1181.17494726929201715140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f540608698ce882d97d55901944f24416413b4b6ba49d196c9d845da2809f3
Date: Fri, 18 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752818393
