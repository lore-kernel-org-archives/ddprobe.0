Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CA1126C14
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728023754; cv=none; b=PkY7y00valHOB2Zwzr2KpGLjrBRMN1Uf6LbkQtys82Q6S4ltUsqmaITSqVyneEiIH4M1VKKQHWB3BiD/y+rWh1mybvZu6YbTe74dGa5fllPwqz5wUDI6QQsGT40hKeuw8RmskbbQgjfRuRZQMHXuM07Mpufa5NE3c5YNslI/Opg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728023754; c=relaxed/simple;
	bh=uGE8PlXmwdBDY+qzD067QtBukVHKIdD4KF2pXaf9hHs=;
	h=To:Subject:From:Message-Id:Date; b=myS8q5gFoc6YugoTS7KPCANGqo9srJmup2jBzQkJ6UyN/6k5/E2yTxQD5j+DidVDa7mIRD927E13RA99ZXcqev0Niq2Jamx5MnHiP9v0VxikdG23o9jQe3qeu/4tFlkO+fvZ1kDYwMTWnqgFPOSpKnN5fIGx2BYANncwJRZkSPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3pdhuOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3pdhuOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB719C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728023753;
	bh=uGE8PlXmwdBDY+qzD067QtBukVHKIdD4KF2pXaf9hHs=;
	h=To:Subject:From:Date:From;
	b=t3pdhuOMr5amV31sOKF1GXQIj6qafCkQhtM5DYdK5pPEIMm8LwhQvkJhW/VSNQ/5R
	 YPcpSUz/2Rn6/FUdN4UxPpppDziHbS+OTkulL0ZElgaFSnOb9ZyXiswQrjMgBmnKsu
	 58GVHJehjLnVqa8XcTZm8HyiXkqOqwtRlCPVnrTeOCQ4NQTj4uDeW0RqLowZuZJ2B9
	 RUbbX0reU9Kdbo+Pct30FBvnlg/0CU+me/5F+GXaVPd0RxvQ/OtdrLzGtIX26LSwkh
	 JLW8wVKwiF/Vzr65UQRGW1EoZZVPSUTeAlKEdb1Wg0PWqp06IkzIHplf91NAadi/FV
	 nL6vBkbE+ApIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8526CFA74A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802375364.23742.10349197087514295335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9651bcf434a246d8d38defab665171e58b2b0f98dac5bc6cb8dc871d9cf92d98
Date: Fri, 04 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728023753
