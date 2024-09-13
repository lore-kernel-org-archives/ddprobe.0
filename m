Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3DE184558
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726209354; cv=none; b=BCZrkxHEfaCbGz5TNp5h4AZ0Try09mA++MiXnTPEoXRTcJu50mHU1KF1Q4lUPaUyeyYMptsadNcDph8wsApJZNTsnci7c0r/JK7Y6wk/DSZooAgh6iP7KDg1wxfSxu9WQvqs62tmz1MRieZtW/5oKlDGlgY/Z1p9avM8FU8RMnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726209354; c=relaxed/simple;
	bh=lAFrnnBBoexijSPELsP9EvA3EMg6rglZ94U/Dy6tR2Y=;
	h=To:Subject:From:Message-Id:Date; b=jT+yjIfHN4NiqHBTrUQzN6aDAjrw+6ZrsHsxCBMoQNKYglmOlty3IzsVsPvuRqWOa0ijU3V13kJcMIPHXOuQZJfRtoGPtfDeIUKrriM14hMvzZ8djN4RaoSWk4ynEAQiBOoJr9HsEoHC6YLHMvVC4WEV+3vjl6VoCvexmPFni1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeTScHAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeTScHAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35D3C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726209353;
	bh=lAFrnnBBoexijSPELsP9EvA3EMg6rglZ94U/Dy6tR2Y=;
	h=To:Subject:From:Date:From;
	b=PeTScHANKq4vmcUelsrTQ9L41Q7Vy5vW9skG4odPkpIjJO7N0r7wgQdSCmbu/vc8a
	 xBG0UrEOu27jq7R1K0iWEMc89Ym42E08YyGTCw2udqS4mwTkTqJZCkrCLIlNpZDTtg
	 nhN2zEBGo0+9bfJy524hJSON0b4EG4WOFunbkLUgbIibdfbHOZ6QOoSjDWZ3fbIuYh
	 VmcKW6MOjE6bOsYswQaZvQUpdI/2cewmeWExr/Cy8y6mIeBS33dbQOAj/feUynEtmh
	 YZblFMcFb+clQy+KT8V/ydViQnl7+k1o1VmrKsMmberQ9L9WIV22n0prXMRq/H24Xt
	 gFd6NRNDpzNBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9884AEEE272
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172620935361.11256.11464214928781604808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e37e820200cec33299ea5b75c4316eb29159349202ecc4b269ec0ecbe2f2bc2
Date: Fri, 13 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726209353
