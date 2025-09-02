Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DB220C038
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756840793; cv=none; b=thnerQ109ukLL1Ee9s8rbdT2Z4bGY6hFUsTRrF4mdQQ0NjO4OXCx0YeyZtpJyCTNFgPjVd6CAtEgEnXhzMTVkiqcYrjQPkdnXnzjUuQfzNWzsu52fmFtQbZHWHKkCWtX+dD3NN1v6O9bXR/Q14Y6i61eKbd9qvcHurTz6fHKMeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756840793; c=relaxed/simple;
	bh=wsXAmHpul83TR//rzqWh21grWt2Yck/UePqbqzLaJ9U=;
	h=To:Subject:From:Message-Id:Date; b=VuRVLeI5h6Pa71FwJwiLh/A/xSWFAr87xTQJMgF98vSdsTyDX+eqE1Fkjb3CazME0DzTUKms91Kw5E42sjgM4k+hkB7iMKiIsZzIsRdBK5Z1nGJeLMkU9xdGtKcP0jy8uSYLpyBp5ooZOLxLvWLHq49aGhCH6Q6EZ5CSo40ZbPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8Rx151+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8Rx151+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A58C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756840793;
	bh=wsXAmHpul83TR//rzqWh21grWt2Yck/UePqbqzLaJ9U=;
	h=To:Subject:From:Date:From;
	b=M8Rx151+BYHqm/u5zYZQfM7NFKI1fk68LUnlzh1uJ8/hmrpLFESIDHPpRvyjrqJ6h
	 zN29hawFH3WF4j4EnhHGCxj1s5LesdWD6GbXDnjOKN3dWum+hnf5rn782tzR5FpqFS
	 GxPYuubshHvHRg1uRS51MfxRCD2xy161XdjRwDMmVCWhtUJSyfRjyFqIstitNMq8Qd
	 vCMbzM4o1VaDAUfZ8h1ZEXm4hFCe+VXql7X+BlLg3p5O86/CMJgEaKID261jnqCrJz
	 MLPsZQuZKpLPkXvszIYgUhOHmoBj6Ji7fvzXadmYyFlxabjDemWLnoha/ZuvGw3BSZ
	 rtN4O4pKTl0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1FCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684079357.19070.1402191083526853665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0dc17a88750cdcd91fc89447047076b082d60f0da7fef568b7a8676e8de6e3
Date: Tue, 02 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756840793
