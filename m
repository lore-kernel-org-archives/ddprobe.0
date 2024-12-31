Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E1429415
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735689353; cv=none; b=J/fLiuEH4jK17RCSJApMiUYN984W2f5Ewi2JUrNc3sK1XZFCYNvyXNjORPO1uN8tr7WWfFoS+juCZDFSscw1ozHp5NKZsFBJ920dPKpoBu9k5pFagz9VM9z87+ZIAE1lfzV8j2uABO0v/eH44fbrbuI9zKj99CgnPnqfE3EH0Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735689353; c=relaxed/simple;
	bh=MOCpE7bUzDVVweHBOmHW0E0rt0orNVHDQAZtPFYRqNA=;
	h=To:Subject:From:Message-Id:Date; b=c8it13uRqUTmfIDPORtvY9s0bl87SrjSQmEwfK94Ivrs/gYZURnZBlV00U8e8ZCvLlKwUjOyyVm7hV4BbupleC3RGWoH30SBo/Uie+9xn7PVDOEKLOwhzguc5hrKc4tccG8NCb7IrZiGiU8KrTNI++khG0MRO8DQNIDsA0oP+iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy2FwN9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy2FwN9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9305C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735689353;
	bh=MOCpE7bUzDVVweHBOmHW0E0rt0orNVHDQAZtPFYRqNA=;
	h=To:Subject:From:Date:From;
	b=gy2FwN9rOWSSX/OpxjOJUrdK9lxDVUuSbr1rBcCN3I59eMdKsI1zi3hAStHzgDy4U
	 KN309Tnnh4gBNUBA/Ghtn1Tu+pnZyW2u8jNmAa1ZTF51gNWEgQq/2oIqu6BbmkIPcN
	 Ez60rLPb5FQ4z9ao6q7FKfcoMt+MlEZ//w2CP3QGtiq7fx2bfFqDrpm6Xvm65rJsDp
	 Ete1BQmNk3ijhVKoXJ1PtRZw2Axq5Fa2Gy62H0ZwxSbAKIHrhyEAMIN/yXv/pAUCCR
	 oOylkOhwxaDFZ6XVAcMMFyVsYb8w8ACgzM+/7JbPloO3hxsSNuYTNxwCpnKxiKjLVM
	 lDxyNW36oLC9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97455E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568935359.29829.12171660684110484495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d48a8f42b7cc4722be5045d6c63e16eff4aaddfa6967a11079876716ab71ba
Date: Tue, 31 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735689353
