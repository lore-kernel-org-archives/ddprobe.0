Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F075DF72
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764614575; cv=none; b=WsVOZeScj7m0Uqw2K32pZPmg/8MveiUAalX98VoxJ6fOgtePrkjclp8IW5LBU3OrwHenVVgfeB+bqzwqUpbE4/frNpEJPztHLvZ8ZLuAW3mxEZm3e1dzc3otr9vuAwb510V6b4kNhFNH7jkdRIawU9rUuMqHEpC8OLKlhhOUH90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764614575; c=relaxed/simple;
	bh=U5nHZR8ZlJbDPKC/cV0XHDGNM/jO/UzWLM2EgggyVt8=;
	h=To:Subject:From:Message-Id:Date; b=F5yPqsab68N+vNR1FxxhXu41shznwk3WJOSmxrnJoKpLUtjDLBCtC6w0/EJFODFeQx3yAuNjpB6tWLk4xp+yO6tHtn3iA6mrWf/UcBzM/asdWB6jFBgCe4CwCTmEYIN286ie1+jrLpbd5OFoHEnjiEAokNF7lwCtXIFgQH1zPXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av6fwk+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av6fwk+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3333C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764614573;
	bh=U5nHZR8ZlJbDPKC/cV0XHDGNM/jO/UzWLM2EgggyVt8=;
	h=To:Subject:From:Date:From;
	b=av6fwk+1ztwXVInJA2gIwdHegzAoG/842chZFjlfatZQhg56Ud9AbbWI2qk9vxNBD
	 FvvBYmTr7s+gZQMsG4B+GQoeDdwkIjHNJm5PvZ/I/MC4F9C1ByQ3/3BrrYaHTf5vys
	 plONLZ006ZFFa9ZafS2BD6qzHcMoQwnfCgr7ufJJ1nA3iY7aRAjoJK4zE2bz0Y+Vec
	 otoOeYrwYN+h3a+vsDcVV0oQByuEQ/R9gIPE3YM4sUd2qzvamVLlBir8APZUFnCARv
	 WrHAvHdj/v8ZUWyCV1nJXTStesKMOp1v0u7liqxW+0YRAYbItFt+u/Zwyy6ncCT8lp
	 jNpD178FOgQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B7D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461457358.11099.2246093290699731860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d369ef284040526ce1db4a6007cd7c788a18b9eb5b1b0e72722044d779b5b347
Date: Mon, 01 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764614573
