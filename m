Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363E935949
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779931954; cv=none; b=LclBFlIjpsrJ42lbijVjj80u+7iWCTbNR0XjjpvT4Hjx/PS6gwflDTR07ddsb6GE7Fl+sKXE8bS4PwVICBWLtGH5xYj9TujAVg9qBVayiqYo+zhN7zSDYx3yh8xTcWo/fL1NKz+/rebEiVSWIlGdhZ7qH17/vrK/XI10/8glBMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779931954; c=relaxed/simple;
	bh=2GM3uck+X3mZFujC+fx6hjxQpRdVbJBv+UkJvnY28uk=;
	h=To:Subject:From:Message-Id:Date; b=ugF67CaYYC74yHPfeAOREV8yKOmBXud20Acpol7f/+XDgWS6Cn/pADySodPTim34vI77bt5RMNaYggFoY8rje3042laJnaGW1/Dz/2Q2CxfBdQpy1w5kdaBKYaAtMZL1+gw/UXvOPe/mtmDmT+5jottU+tw1zPYrKygvQm5UHec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szd1uxGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szd1uxGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3870C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779931953;
	bh=2GM3uck+X3mZFujC+fx6hjxQpRdVbJBv+UkJvnY28uk=;
	h=To:Subject:From:Date:From;
	b=szd1uxGsjdVeHKaTpC+0lTH5s8mNlQn+F/lY+B3vZ6KVdevU/OrfC16y1qFyMWkLF
	 oXcCKOvXY1aftm+CacwytGku2wB/fKi1Kpl3zYQwSeA/ZDSa1z9UePHbZVDnyE6Jn7
	 gl9eEn6KT5RJex+qm+u8+sCmZw9Z/0GgSbu2oprsDoXTTxXmUFSmtshHW32bfcn5G3
	 HfOe9TtpYoiNEuul7v2nZUupB0ZeNINrOQBZFfcvSUR1E0ZzSmZKIQGMfvIMk/U8FR
	 WjDbUMNakX5yMJjg9Etmo8WM7XBlKqucEVkW2d1c30k34Ygj8ZpFmip7OEb0APBy9b
	 2DIDOhbZ1tEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA74ECD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993195368.2440.11315385249265223953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316e306e84cc1ea597128f20d7b868dcf624a6c15d9cb18871dd23913997fc63
Date: Thu, 28 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779931953
