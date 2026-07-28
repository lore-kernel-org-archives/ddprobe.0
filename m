Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D3D418A30
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785244834; cv=none; b=aTh26ImQ2Mw+8Ak3k0Wzr42LzTqmnfsd7em+u1ifl3Cfl8veS91N+fzbErMv1907Yj6spxJYlfH8wUkUvAAW0+zyG1jzlhmfwb7fVozzur0w8qrapt/2P9zANfuWVsBEYGZ3Y4LNkLyHW37WNfQOHmw8zqmLN9Uer+q0azSVMxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785244834; c=relaxed/simple;
	bh=d9y7Vup/WjE7lmkg4LDavDzotJ7CC+/MnN1aa5e6ypk=;
	h=To:Subject:From:Message-Id:Date; b=b1iJe+LPrHJ1WGg+d1lc8ou31ZbBXvLfL42hLBKDPQo0hWd40XGHTlFQ6zQKCDfpEyfov7Xef9jzhho2mCvXapjonvxrGYPvaBgEu5LAfgz7iHyXGeASGnpigNMqL4sDgEcEZnVCcLO1XXmLAMs1YhjUnK+6e/vfa2yBw7on0Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVoza7Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVoza7Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B6C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785244833;
	bh=d9y7Vup/WjE7lmkg4LDavDzotJ7CC+/MnN1aa5e6ypk=;
	h=To:Subject:From:Date:From;
	b=NVoza7AqGz0ROQTvh7B47z0cRXxjLLO2cPo9ODxr0wOTNVyBhw/hFAUXJmglFdBCE
	 J5xrWM4/8kJCewez4vqJebDBGe2TsGYp+cVJZM84L9BPTw6s48s/qFffgdw4S1UhSy
	 d0Kfd5mX2w+GhXDJoLQFZ3HpSpXb/GJopdDB7ptvTH5BTD2HUHWtncN4RKUUkvzRKc
	 ystHmcsr+vmo7H1h5faTP2U69ONI9tqrygIU8mOKOmtSGxURjbZjA+LrjCKKUu3reb
	 RnlsMQ/q/J7AIjBQABfAJnSRzgSBpy49f6v7wWhi+Q3EGLdtecNkfIk2aB+F1N8yPE
	 vOcu6p9nwZ6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7AC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524483369.12192.7643456058474228094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25acc19f783cb2b7996aa20d9d5f0450e0cec66df0c141e120aee19cdf55574d
Date: Tue, 28 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785244833
