Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1388019CCF5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769695434; cv=none; b=N9CayATERx0jvtnISsJbBnU3oxLPJ96LvfN0k2Yit81uwR5HAK1o+FJiJZyotqozeoyoV7qMGEv/IEFxRo62DCGOxhpg+SK7wf61oqxxZBbaTz2YScuQfCNMETo6kURsZSbu/9M8FUYuf+HjMU++B/J8Zk6yZ4LEhpy3e66PPY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769695434; c=relaxed/simple;
	bh=2/A6VcGwZfk49NrggE0MThXvKvgz35tR9647PF3ebjc=;
	h=To:Subject:From:Message-Id:Date; b=TuGXO9SvliYdJmZLsh9208G4PSzxb051s3Js8wRWt8LIhvZ5ZhuMzzlsd+7eZNesRZpE3vPPtfFbdz+u3r581+AJRkD4T1UId30FV8t+UjOPZj6VMRlW2Fs5xWiEAF3JRbw617Tym5Tt/q8b0oUs+CE3I2rayMvK+wvanWem+A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpSmNM3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpSmNM3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F75C19425
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769695433;
	bh=2/A6VcGwZfk49NrggE0MThXvKvgz35tR9647PF3ebjc=;
	h=To:Subject:From:Date:From;
	b=kpSmNM3ap3vlEcIgk+JmJfxJvZk47E7CswBZhfJf2FvfusiOj31ds81VKKgEx6PpZ
	 ZReB1KI9v0ARFeFtCxNjTDSr6NrmsR+x1po0s93BKeyXmRo9kjGg9qbC4nwlYd+kxJ
	 Iexn7FjR0XuYJ/CXpEeQjw/xWZ6vPsRXblyOHMNI+j5aoVBSL8xAooIqiftw7jXsh0
	 KjlD0fMiyLUEaglgWmBjkb+m78v8/EPSDuZrNRtyXQcPNPj/Us8IWwv2EQMkkheBEH
	 imuipWJIRjQSbVPe7SjFXfEDymDtPUWG2IvJc/DlK2LmAV3aDbAqXbAqHuNodyyacB
	 CIRg068uaLZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6AFD6101A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969543360.23096.15415806505437835969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efde6f4b7b0ef743f31cc494b5a02ae80ed946b18e2c1b763402332d757d6707
Date: Thu, 29 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769695433
