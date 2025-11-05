Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222F82F1FD5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762381794; cv=none; b=c6jhkX1SrjO/nKZBf0Os6x1Zi8CJUbfH9HWWMAcMixscf1RQP7MFh2cjO/Ih4X0Y1PTL8hXoe/ardOTPbXYQROfGvTuzf6JGcmVDgG3UJ4xuSw2WUxD7BSsLizQFcngjQcGJqJNDCMylI6FIN3mE8ACRwQqtSl2SK0BJQe7triQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762381794; c=relaxed/simple;
	bh=bRpijGm780PtBCDlHiI9/N9LhvUPkqI1jcITpwHMeqo=;
	h=To:Subject:From:Message-Id:Date; b=Erx9/e6WunKLnrrJjyRvyWrzGn61q/3K49GaXvGV7lcPuFSU9ooEuWzVqM8g3RWb4e0CbU8GCj/wDxE7AcO03B1ij2qQRvS9kNZa/wxmzNXAa2vcyW9YCCxtWmk6+ZGI5aJmNkn2ST2dEUPkwc4pLBN9a7HYsgSu/sgj8Gya1WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEiNp0O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEiNp0O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A73C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762381793;
	bh=bRpijGm780PtBCDlHiI9/N9LhvUPkqI1jcITpwHMeqo=;
	h=To:Subject:From:Date:From;
	b=qEiNp0O9Uv3tuLCuzaAiOE2zpSyiFF2TaR9rAyq8mFCVRmvgTu+itcDxdhQ3oVJpE
	 pr8f1D3S915eICf0xeCeJ25DfSMjhkMfAaVTXg55+5jG/mN2/GupjmTk/Qyy/THKli
	 R34A9CR90ZfrDn7MG4O3dVmJzdoHuI60eA/R+fcLYWJXkfO6pTf3sVle2S+6fEHEQH
	 1G4w1cmwlwULJ9Nirlk3EsTL6AbnODephYJoXWhxXWaRYmPc5mvQWyuIHSyio9vqLn
	 D8VtxGfk9olRl1SmZbG6lAxblgndAgUbJ2qJcqZRvpvScTTM1FzTVgDbQCam8bo8z1
	 Hr4J+Fg9PJRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8BECCFA19
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238179358.19835.15919590011589472060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2e46332f0edb5982ef7dcac960bc4c3f8d6fc5cab6b772e1c21330e30a8a6b
Date: Wed, 05 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762381793
