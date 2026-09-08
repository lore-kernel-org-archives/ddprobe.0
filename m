Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437D647989A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788856834; cv=none; b=RpLIMc9EVTpsJillQwqxwc9HZFHK3j5xDjBEcFi6SQtgcetiZLBViFyuwizJRh7SbdLtPUq5lmZunBzYoK1bdKqE23nu8J7LNGySEOHtNs0sLYomhN2AegcngRjCr2cTg3apBzWg5RJhmPBgb1qG03CQAwJ+l1gNPWG5Q3HiqZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788856834; c=relaxed/simple;
	bh=/rk6iRvbPvHebLnV8jFnUOUltJ8WPfcwaEjRzoSAiCU=;
	h=To:Subject:From:Message-Id:Date; b=PSkAnXiyRl13yN9wpyKhHNWPS8MFS0rlvd92qvJ83u+yC860OTPLKzqjFFD1K4a9N8+7roOxu7gsaurg3y97iYQctoNMpG82tZj4YI1PI1Uf7C6XYZ8wSG5H4+dVUzUdrJcR8alqiKDS37ZRGOUJ7xfwFCPSJtpJHXMQuop2GV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9WImK+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9WImK+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0714C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788856833;
	bh=/rk6iRvbPvHebLnV8jFnUOUltJ8WPfcwaEjRzoSAiCU=;
	h=To:Subject:From:Date:From;
	b=E9WImK+VbGzcrNdEyEGAU0uE70W6NU2AMmtuAIUAMGC0/GfH6jKGzXuF67NB6nHc3
	 TKSPymecwuQun5IH0wiLmwjYBcpHe11cGpmEUYyRiMs19dtEFHJnQpcmJLDQi6XnDz
	 WSbgaj4mRjXCk2z6Wz6+Pe7bKZ4jlv2JQ/pLoSfgtiiSWzDCXeWIsZk/qy5YPFbG7l
	 LojuRQEtEW3jL3ghAeqV13Lo+vSJhU0Kd/swI34mmx8LJVZ0DCyAwKAufhO0PC9vmP
	 uhHJhlaKr1cyRd0kVqJK2Jxn0IGVFTk7KEVWBcMzHio9rmEzeQ7sjIwcXI7dnl//fS
	 r+I9X4wzTPTVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE86C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885683369.5274.11080841606921125506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf93897fbe635a9ce90bc2ab4d620fe8bf293546aef9523ac66fdd2ce39dd4f
Date: Tue, 08 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788856833
