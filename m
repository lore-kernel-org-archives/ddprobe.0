Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2002A2264C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769598234; cv=none; b=HbNioRbAbyyLyp6GgpcAFqLowGY+DALZ9BAuBGTVa2wFL8E8ci6tOMYLIpT0pYaf2MDhj41L+jPKRHIg2zHT6LSsOoqcCQiwpRZ4b0atsXo2C9/wlMcvQWSVDqauaw++ruLh1QAtQG8YyuFYNoVc30kF6eDqn3gmyQWD9FzMSpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769598234; c=relaxed/simple;
	bh=kQ4TWrvNvWTGR4wqUtb7ojbNVS8FupfpMZdPRBt02oo=;
	h=To:Subject:From:Message-Id:Date; b=fmRJDG0h0P2SI8MEapfVBXHswgWQNV+0oaVdtSDLCa+L7Fd7N0jQY96b9xOYQOPEdVlJ3aYWD+9yTatwGVWRpoxi3sftCRcSjNV5qNoZXIoXpnkQ/4c2DSQl2barjlNoSCZiWTSBjlaFBRpBwtT2Ot+7Jop2uTO7AEHv3ndgBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnW8fI0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnW8fI0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E35C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769598233;
	bh=kQ4TWrvNvWTGR4wqUtb7ojbNVS8FupfpMZdPRBt02oo=;
	h=To:Subject:From:Date:From;
	b=FnW8fI0d7YSvfJH7hOQFuTfEfY/tnn9znG2BmY5q5mQ2YqFvEhyuIL7MVRtbiCTJx
	 JqF+CGbxbOkK5bf81bOttzllQHX1Rd7ZrMqic72RqKeOFGNBhNYmazzYcSVqRc0tNn
	 rf0p+bzMIRM0/2ZdX2iLSXVIcTmrJkSw0ncTAoGN5n1SWdyQ66L0fJzuSAdNHcb7ip
	 QlkD5bBlXp+7oCj9fTeQtzvkKBzz7GWRzJsrBLEp3GPVQmsfXtdLD5APtBArxlvVU5
	 xhjHg2ZG6gYhb4AWYs8Ms6KPjHNr8BHioFuAq3TNrWS/3AdHTZJN/9sZwRKDh5TW0/
	 4JWnbNBSXxZYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97455D35693
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959823358.10195.10268196038429432384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e5985ef6eeb6c4e901a895f9b495038bd5450fb4622a945cbe196d6d577ce9
Date: Wed, 28 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769598233
