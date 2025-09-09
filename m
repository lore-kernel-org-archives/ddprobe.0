Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096411459F6
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757432994; cv=none; b=tMYgr8X+HZrTfeBvd/N4WZtd41HKQbddr7J0ald58PaNvyHkGGt4C9JcMsxYBYUiYyIz2s4K5AdVSGN79QG1kYsVh7g+iKI4vJMlsiCyUsXIhl2htS7IcVy11KUdqxMd8V/f7hp2QMJ/HA2PqnQUCAVLmP0y+xyPMV0sXotqmno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757432994; c=relaxed/simple;
	bh=g2paFrGkMtPYKcEafDWs/DlkX5Fxbn1vXXHmFtcDpbw=;
	h=To:Subject:From:Message-Id:Date; b=rtqDuXcGP12V9puvHLF5EqDOucxCjavKttXWuVjOodqKjMEkk/x4zbqX+hmRHOWHLFcF8aIrQIJhY2W48mAVpDKqg7vzY1jtE4h6snAmKUHVoOThQW2e2vnKwDPtS9B0BtWi4rUEHcPiy7RscQrxSNftnpZQUQN+CKyajGt4GHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoplQrnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoplQrnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA3EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757432993;
	bh=g2paFrGkMtPYKcEafDWs/DlkX5Fxbn1vXXHmFtcDpbw=;
	h=To:Subject:From:Date:From;
	b=EoplQrnzkIbQ3x9gFdBOfWmZ/+T9l7E0H3LwxpgqBp2Qpc+nIy3sJ+93H08HYgg5z
	 fmu/qVKYyUf0j76Unq/Pt/YaGkmnoFg2J1SJtSzzkyo3fBM0BhYNSu++/SMk1+/PKF
	 Y88oF84VXd9XhZa6jzTQzjgZjL0aKjVfSD1dE+hgvxQlHwpnojFlFW8awIuXY3aArQ
	 H/cZAOeKj1ylHhV2r0bU9vA1Cbcg8XjwhVspJHcsi6C4k7xjNEQWAnHLs88mN76wba
	 cRRUYSbQEgtVSGsKZBFLhc1ykB4KDR5RppStTmSVkc2qUHRCVUITWz85RqDubAO0As
	 MgvK3q85rjsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDCCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743299358.27563.390328494607006512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115181a691dfabb548ea278a9fac95e8756813ecf9b6adf19ccb17a83b0d8d2b
Date: Tue, 09 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757432993
