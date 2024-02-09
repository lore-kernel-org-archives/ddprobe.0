Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28501CD2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707475098; cv=none; b=mViUXhogybiTtTQYrrRlbDMW7/5uqc9J0k3UD9UF9+UcsG4X9/Xljg1mRH5vQwSx9n4Sz564EDI+c8e04mOB8/3DUTq3ErNl+frxvtFMUKgNplJKc5+ypisZJbWhFSpDkRX4kT6NsXww34AOZEE8ED5ecMJCmBkGMEkVkuYiyfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707475098; c=relaxed/simple;
	bh=c4GWMkx6/2srRgQhs6eTKFl2grwur+QWaraMjIjOSsk=;
	h=To:Subject:From:Message-Id:Date; b=sCUsm26PLyiEXQme9rOPJL4OZqItzfgg/1Q0EHhett1w/Qmzb4euCbPlZEWB4mLfOv+ubExky/Kcd4TdtFidZ5gKgjS9cb/gVcxnHbvur3a6KTGrgQNzRzJWcmcxrnRPGWb9yE6SictgcL3fG1JN20A7QNyh15f+HXq4zkOdbR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Ttj61M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Ttj61M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E68C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707475096;
	bh=c4GWMkx6/2srRgQhs6eTKFl2grwur+QWaraMjIjOSsk=;
	h=To:Subject:From:Date:From;
	b=C8Ttj61MDB8XIxmcgchpuziKhq87bz11U/Jx7+dbBHtXsMAQJozNkxvrd28Ff/EFi
	 hYDsE4zO9kU9SsunMt0HtvCMzopKRicry8um6nvCRTB2zBm8wIL/gkFhQQbZRSNH9V
	 rCKEDF4XcVKIWn54JTbuDeZVel6d2nuGlCUzl3LM47qlzKNK4snCMVfLYfQeR9jJMU
	 HAre44PlQ5d6nhoTIrMYYsKpKrzkRE1x6/+b30xXmrAD0VUhqiU2K7WgJWQPEOpTZZ
	 2E4nAADyFuXum3y3Dl4ZVqDmpW0a/lpIeDUrgTSexHKvmKquaAaLXoVfMlfjOfB0rK
	 i6W9kz4I1G+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B439C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170747509636.27136.1518291307142572006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74741ad0d5e637f2885a758a46b64f7d0935a97e6596ee9049fc69334692415
Date: Fri, 09 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707475096
