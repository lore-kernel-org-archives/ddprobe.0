Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A8D185B48
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763843514; cv=none; b=a7jFJy/H8TrHSgNtefQN0ZtLO9zCcr4OT+blrlDars5fQbI/bazwfbGlpd8P+8OyidCFP3WvODITSOsNif3UfoktMZSzuCvwLVXvll7G7qYPaIlmR95ykrAZ8govPpIkmfeEamfCfOsbWfr9/HqoAzHeNeF1Aib30BA+3dq0POo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763843514; c=relaxed/simple;
	bh=S5EsDd8DVDJmNUbZ1zzX0lE4cJ2cHEqplfXOI207jzA=;
	h=To:Subject:From:Message-Id:Date; b=GYrowxeb4Fs/gMbwZEVICD13xkVPZxF40Uygv1hMs7oycriyhvYo8DgYUQQtCiGpYVxKSxFo/GjaCXzb7qaCX0P6ZSSD7/94db43LCmxCQ/6BUyrGzrmzIOAUaxUHjPV0xqw/p/rQB/VRU1nSFL/OVqQiBqpNpm/uC4/Z2MdKDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWm8ga8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWm8ga8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8449C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763843513;
	bh=S5EsDd8DVDJmNUbZ1zzX0lE4cJ2cHEqplfXOI207jzA=;
	h=To:Subject:From:Date:From;
	b=rWm8ga8R6zsdHNdH7fqJ84qzHajZp3IoH844cEAZe7nw97N7exmZB5t+jEab+s/2r
	 I7XxsedVle47uAJWa++7CWi5SMWpHr3r9vdhkMkNtWFZbeMp3Y2aQ7hU/0z/AEbLzH
	 /0ZDX5DCBbHQYpLHxwMvH8iTpxFdaoJpUF36tzH89Fwo88oWzL/Lw9yHcCVyf2yuS5
	 Xy08wWXoOt63LAkgDbFjmOJw+mG47tO8SQcoGVkbg2xzDSx2e8RtPphCL0dEl8PLvU
	 McxsaEGvZtyjF7cIP9HxB88JbV6mVoVwZUr7Gj7/kBAZ/4hvrT1IkaYQKBt7ePe68c
	 mv6Zz3WezoJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D6CFD2EB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384351358.31637.17233318177880817316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea3cf318f6fcaf215147b5b078219ce4482dfefad4bb5a406d8dc89fa3cc586
Date: Sat, 22 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763843513
