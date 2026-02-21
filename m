Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AD24414
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771652694; cv=none; b=N7bLAtP5On724xHn6sKJTeTOiSWyq9m8Lbwr7Th4zZ5Pg2jdonCHMMr0U/bAwuhruWJo07xeXyMlzJBDuNwhhvX2DNoygBKHYLDLcxSNqFw/ZwIdoKXKxPfhokGm3tfABtZ1uAlpfF0q5EFFg0tYP5K2Cad8gCjBdqAooG410Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771652694; c=relaxed/simple;
	bh=KvhGekkq1ulM/J9pCgSPyLHXbwvhebOylEZRfvI3Ly4=;
	h=To:Subject:From:Message-Id:Date; b=WCIc/2+iYFqdSz89eGb9r5XImYDNKDskPmbaDymaYEyO5s8v4/GJNpMY0E9HdEYakAUW8tQKjqfWYKdU1UFOHIXxXrP0sPQKqn6tF5ICyLoQic04ZdwSvdidDMsP5lIbAZW2pQS4SioOfjrDmGO5jEFwEcj6WvxCnj9ln1wir4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWIL4VMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWIL4VMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A311DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771652693;
	bh=KvhGekkq1ulM/J9pCgSPyLHXbwvhebOylEZRfvI3Ly4=;
	h=To:Subject:From:Date:From;
	b=mWIL4VMslFF+FmWBWoAgk82UuRPkP8qXelEReMRqb3EBmSPsnCUzTRRRdraeMdSCO
	 feJvpU5lBBob6XnxO6lubkAg2CpxDS+YuSw9Bzw4eyQDyOJe2iCWpKqtBOBCi8slno
	 nywPuLdU6WKvtXn7xOCrestNLg/4WpE2u2EGQdbUKbaCvWXinoDqwP4ExtLwZ3COLN
	 Fo/454Sp4HjZXtGDH5PucgbLIQEsQNE8h1wpx4AzV1FOYQT4W7rRPE+wTct1aNL1SF
	 4QFm0ody8IFOADN3ENmCafY+MjBDYcpauv2NSjSe7eHj3wxwm2G2RmIHcJBuk6apce
	 6191lC4S7zLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932ABC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165269359.4101.14051203378007189666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b140d339f6ba5f2cb102ad30b0e3699ae3b4f412b2f4da6037117cf1b3038ce1
Date: Sat, 21 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771652693
