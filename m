Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73150238C16
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784726914; cv=none; b=j7eo0ilTd0mRHRVMMPUYwWTxHrjM35SwOnr2KC/4g/+aS16xsECUTqR+kl25NDfCHG1XqUf5ynY++0z1N7W1aJjuU7/lnJBE7qIughes78x3N14s9MDZqhBGYazqCxolor3kMU1McSsm5+nYgV3OXGJeyaMIg6f3cp0QuMN7zAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784726914; c=relaxed/simple;
	bh=7pl3A5SKKPpsY4YXQ/DflODsy7HEoTZIEQcIqabrkOw=;
	h=To:Subject:From:Message-Id:Date; b=kD1XUv+8pECeWqBBC6miweSUI9ikTvOerr/f36LnJMoJk3dAtkN0Vf6lKTQXrkS4vp0Q/bM4QjyYRUS+Z7+/Um8ufLzN2SUm5My2d+57S6d8FIShsjFPKznpm60L959NV4wd4riLRoc+2pW/L0D96fz5CvjsRCZrFQ2snvedMQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMqo/sVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMqo/sVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D962AC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784726913;
	bh=7pl3A5SKKPpsY4YXQ/DflODsy7HEoTZIEQcIqabrkOw=;
	h=To:Subject:From:Date:From;
	b=SMqo/sVK7C7868Y2e8MsK+dKOFiXk7Rbw41DM7+nAtCvJ/J2mSwY1TmFPTV4rc4sH
	 sRUpxFAL8Z5gWBNqT5K6cGAgOpZ6kn0wW5A512Wn1dx0UFM6FBZSdszg/OAynee76t
	 vhT59BAruL+idH+NBO3/9UE0+2jEdxDnwzwdNIv+BGiJk3HUtBj6lYtoVSiKZmNTkJ
	 NhrFcbUZVMq8hJURSh4pzY2MMC8IUTZ+RLroCfKY5OuatMbQaJTgbtvGaL020I8hXa
	 IBnj5lbu7MFxRfG38bNG48dBr7Oq0qiYa0ghx0S5lQqWVtKy1vkymVQG45gCFaCijo
	 QwowagPjARoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3014C4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472691372.28655.1550465160793558556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe2eface661153c15c75ba93d576dc791e0a89647a476c693e0ed5974e3ac5c
Date: Wed, 22 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784726913
