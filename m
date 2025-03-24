Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533E726AFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742829594; cv=none; b=Rn/VIDL+oCv1M7DkTIGefcdt+3ePwugYkgw9e22AbX3qBqtcsYi1H2ms71AtS7TE4fG+SYQZpnffBW+faPZSj2Lt3TTeEu42GYF5QxesE256QFlFsSfn4WTvZXsTKyUnIvM4lSyRDamQY2mfei1qSev3l2Rricrn+/Lrl2uOqd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742829594; c=relaxed/simple;
	bh=2ZSL8eQUOz8zBGY7+18f27+2kJKDhoP6vI3vcsxHM3o=;
	h=To:Subject:From:Message-Id:Date; b=EfgylUL0bncZ5GlnnZr+H6P65dTdkqCjGB/YYq1Elgw3PcXmhRSFvC7g0M0THXge5qLX/Ogz07QgeZEgUkODpMG5ESQ5lMxplhu2jC5TPrSSeaO2jsck94mhhVcrW7hgwDaNOLyuFHabEfX5cLdzUaa/FtXWM2/SBkX1kWgsc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddUN/Ooc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddUN/Ooc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D2FC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742829593;
	bh=2ZSL8eQUOz8zBGY7+18f27+2kJKDhoP6vI3vcsxHM3o=;
	h=To:Subject:From:Date:From;
	b=ddUN/OocpYr8zQF/9WVW1bIpyjHILsQoyg7ZTi32yaGPTVisgtQNo6OjU0aq2d2vr
	 nqecVV5tM1rgrKLJeBbwxqUdHwnmmbOZCwrwt0icnMCP6a5D5yWHuwzTpx152TMAvY
	 YUjftgLxVJQg1rgMCnGHPQp+K2JClCcTyIwUOxyolTSkjji4uMk8vJwfFf8fqWJsoo
	 ErdbVg1HfgldBUa+XiJznCXUCPgbY6q0+BlZtkBeRpOAsAT9uaH9nYycAMFiuDDjqG
	 AxckSzC3MMek7CkEXsXdrF5HT1HF/5E6zSfT5iJAAgWyYeaOxwZSe6pM5z7nUNCOjJ
	 aAYdsNU04jlNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB4C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282959367.31431.9296995278658119049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1211545a38f1b8b2136ba0caf7d4824942c92f32fe2597bee349b22e3421156
Date: Mon, 24 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742829593
