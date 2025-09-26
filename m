Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CFD2773E6
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758865194; cv=none; b=Cxz9tfjBBR9Z5Yig+WE7ZLuFRYTw+OUyH2pzDhmaEhZbY1eeaBzHM1LmsYJvZ3BSIpSeBEXWfXkivNBx45YoZBITS5GY4J3fp01z8fJAWauDBtM6mK3nrXndvU6Ib4AHV66Oo7TadLibTbnef2pBXsoWb6+sIWBMiBucN8B6ZwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758865194; c=relaxed/simple;
	bh=o5gRNNEqQ/jdfX5lH6C0IffaDnSIBhJWnxtOPTEMi0E=;
	h=To:Subject:From:Message-Id:Date; b=cekWG0u89WWAMsWKlocWcN7ed3m5AspUMjPiOAiVdMrtCsMU0xjetdo/qFm+rEDbb52JDwKt47o9xB4ldYvVc/M7n2xNLpdj+ntTvSw2aQTCn9aWB43eNjQ07DuEmkBGZhSGLTVpIKLhB7usiJPISWAJI3VRAaKzXrRtbmT18Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF35pS/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF35pS/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A207DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758865193;
	bh=o5gRNNEqQ/jdfX5lH6C0IffaDnSIBhJWnxtOPTEMi0E=;
	h=To:Subject:From:Date:From;
	b=LF35pS/8uePmxj3Ni6xYc6nOqF8rhH9cUtLvYFQ6W4iMEbNcrAOea1PnAoHCJDaN/
	 2byWbD8FAtNvAcau8xnmxC0cyjjGXokmkTmiJIR9Njh2bUg5PMsKYc8m7t8uuSFQlV
	 amm5FlxqPK17Q2RoKXC5E806xglyLpdPF3bCl0a5Rm9ymg28rXY4NCwnWJVD7UWcYu
	 zu6pBefbuBuQG5O+nht0Sugkkk4Ic5sqPtsZDDwgUgahPtRIPf7AvdvX/JfpJ0fEO0
	 UbBv/fUHcDjBiRKx8LpxR1GgHLDydJri8EfC0DTvzks39ipU3CHS0C4UpHg/kTfCPU
	 zDHGcp04YIrMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A5CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886519358.4980.8831889747118119257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d85be0dab8d0f00850a06b53f0fd002629db46285f0caf90b50e9a33561fd23
Date: Fri, 26 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758865193
