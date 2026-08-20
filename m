Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F720377A82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787243434; cv=none; b=d1m9/s2KX5AQZUPvI0akLp4wASsaeyCxrwbsEwzuujW/vNx+m9LpRFJlt3zbbeD46EGfXrwX3KgEIsHkzh8LF1D6C6mwBnfhdLlAiYvu/R6aJbW2135fCDejKweawht8FpmYMJoqp9oiPU8XReNecqXd7lhyLOnNBB0Q7dMkKgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787243434; c=relaxed/simple;
	bh=ZML2Z3lSquUO3HdRPesf+mXKuvW5igmPFDPS0Nhoe6Y=;
	h=To:Subject:From:Message-Id:Date; b=Hc6TWBa4ccQxYWCBKph4Ag+/xoSOplNHtm2WxTz2F6yxZLHG7FpI+yM90J5j5w6qdCAA55gJkJoO5/+cWhfSoFwuZSK39O9aj8/ZyPUH4CRCv6U/zYjpCTzHa6EYDDq3V2vbKDwE7/w7Ff+odSqwEneSJwhp0sPAKkrovTcusnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUm/ODu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUm/ODu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E101BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787243433;
	bh=ZML2Z3lSquUO3HdRPesf+mXKuvW5igmPFDPS0Nhoe6Y=;
	h=To:Subject:From:Date:From;
	b=VUm/ODu3E5wfCvokFYVRHjKRYoTjGAAPmIntjfCkvYbDcyGa8j/9RrG66mSgSeB3I
	 1kjc9oZVrdMbfBFiDMJufeU5TuepbokJId44zDPW9HxEzwac3Zl9ccBwcHlrODnVYk
	 irNer6ztu1PoGqbi0vGsKUHKvbsFFoOtYeXFzyJG9zZoy7R9sXvzwizjnROodaIuqZ
	 Oq1x5pvBGr2AeinO8WIh4znPGuL0oFedHwyBTpXzvrjRRFh2oQpcJJNKvLBeaZ9Vuc
	 vvzeV0ye1Q4WbJ9THraksQ6xqLAbusjih4FQ1eG4c2JuX4fVXXb3ZP437/mdx6Szs8
	 OUGQDnqoey5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B1DC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724343374.22097.12100539654493608464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6a22e7a06e0108c9103e2deb1ad65b7361bf029ea25426db05896ab5bd508b
Date: Thu, 20 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787243433
