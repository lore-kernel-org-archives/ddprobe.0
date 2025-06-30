Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CD228B7E1
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751290794; cv=none; b=vAhHE3zDQSbsm6rlbRC0p2810d65OmhgIebxMFYWlKjmdMne5WAnr0ufHuRdXsNFc8XjG4fgG1uRudSHuikz5vETl+1/dCWBabAUByF47OR7JTUOhNaPmuSxYJLuCEhFkmQaTUzfoPFrv3mKW97uCNpy685lIUAyWx9sDbVwEX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751290794; c=relaxed/simple;
	bh=z1oL0ty+8opmRMXxECREKoiVMnOJyDyb+nmKtZExIWQ=;
	h=To:Subject:From:Message-Id:Date; b=CwAvaaIh5FrPsp5TMdYwnUEfTK0uSp8ghGXt/2TZMuFcb/qj6yijwrFDz3wwnA+LVBLgwH/IWV4ILQ5G0BEVxXSHOSze2rEVUv95qGJze4/5qqdFHjUNhDOpTbq8mOBrOn5b6QfgVcOcOnIdQk2s7Dwhj71d+Yu32B2ccLKrNO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7pyEF6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7pyEF6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A0C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751290793;
	bh=z1oL0ty+8opmRMXxECREKoiVMnOJyDyb+nmKtZExIWQ=;
	h=To:Subject:From:Date:From;
	b=W7pyEF6l4KR2hewaRDSh7iK/fbUkvfqCgQ+0Lnl3pS1BtASPwKdNYjWzfi6Hrd+zN
	 ycO21Tfe4IDGFKPqCGA2p0SXsXDznS5S5w8Ts7/a+MVTtHmMBCp2k4CaCNmzeGh2xK
	 lfK4P7z/0z9Qiv88nsWz76uWcT23rEkI1z6HVV673ylJIUN7NaIicR0qp1IO2VqfaM
	 cBq9lOkWs5poP1EdO/Fk4PM68jRLSch5IFeir2lDAJwJcd6WK8l566ZAbjNO0GpbRP
	 vgwHTAxKHVgRZmdRFWk3ALJ7s/XX43+yH4+7ogT8f/GyhHgwIOB3e9TeMMBTNfVvFU
	 Hem7+S0SdjMuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90510C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129079358.12326.6597640985639468455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259919974179fe7e2cd0ae74160df81e3aab0da93f83cf6b2bcdc1d073270d22
Date: Mon, 30 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751290793
