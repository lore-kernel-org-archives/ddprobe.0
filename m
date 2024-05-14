Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5309F2AD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715709143; cv=none; b=ZKRbQTqlSOPoqI0qS4EE8AyFgvDgQY1gUgNO2kPihlFdmRX5iuB5nK9tlcTp1OdBwGGFBrqsmgC6oxmsow6/j/P0lT+o3uV5W+WWElzIQsRnt7K7CckaqpZ4cuPbVuqVVABwoU6c2N6g6/M4GhjaR2XmjBzoiMfbaR/iclF2YcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715709143; c=relaxed/simple;
	bh=wnqcwflRpbr8dF1/5W0lrfd2zpMfeKOZgGUH2UPbaA4=;
	h=To:Subject:From:Message-Id:Date; b=rtt904rU5lZMTjk2eyk5KlNbwd94fgz64JOa4Oop3VBEnmq0EsWnKmOrFTrWMkJBsXE+LwB1sb5V+5QquhYrTmA/OrDNAIHUg/1OPpzYYys8/G/pyrDnsDurJOe/FwZDFO9k1Zt2P37CH7g/faXn3AGymBOAI0V8K7XIqRoZLqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnJSCeGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnJSCeGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96D7C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715709142;
	bh=wnqcwflRpbr8dF1/5W0lrfd2zpMfeKOZgGUH2UPbaA4=;
	h=To:Subject:From:Date:From;
	b=NnJSCeGwopGYKrRXlkiiAjUMUIAUGnkWA0Z+I6lk69xx6HdWum5VRQKQO47dzvToN
	 KuxvQsuF80snIkLl8e23cie/JaJVyjDFLaYcBZAw22Ek/L0+L/pWQqPZHY501zvuCB
	 E/o1mXO6lM56oEXm5uRSUfJUeKQonY8OT2SsuzpAWDX03At0cpKExMDXOjeE85hd30
	 3718HNukN9UYfZdLyJcqa+zH3yNXtsElfP5LD21RmbywVyFQ8AqnfiOjKeqyG+CPJX
	 KrEeorDaIEcZNB+HIuS30fn4zRExmV+e9QL9BecWLm1igZd38uFprzloQcBldmUuQw
	 4QzM7EF3K1UOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6999C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570914279.13998.15840275373539241792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebf22ba79506218ed60ae25912f58b39aa389c883f35f487b378b02a171b93c
Date: Tue, 14 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715709142
