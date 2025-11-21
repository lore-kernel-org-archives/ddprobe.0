Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE8727055F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763693514; cv=none; b=mX8yEjpn0MLU5WoC5/ZSYLaD/Bo7xHz8jABrryPwYh1SfdQzjGrWiRnHXO+ndc2iqtHErCvmYhm3ypT5uhsI6htUtavsuLD+OYpQrkPdc5rQyi7BtA6UmAHP51O8ooA4HRXziWDgQEGmk4l6RI6uwZFYqQfv0EUugcAgtfn6Zwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763693514; c=relaxed/simple;
	bh=oPjdfUWD5KFOTWfs6Sc3H6PnFJAVqDoF98nIaMtTfdw=;
	h=To:Subject:From:Message-Id:Date; b=US2nHxcPSEY4UYwQkZ2rbKonul/3MrVmArpeItAc6Zp2Zf1OL93EZlHueoFqhYBtlh5J1w/EtKgCBJvaQgoRv8ct47X5/0sJ64GWLwgtmBak3cDkROnOUNXOEK7tKadW2dTOEGf7Q+dDxStQZ1lcYsOLH8dt05beWFMjyLTDZOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxkY49aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxkY49aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A181AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763693513;
	bh=oPjdfUWD5KFOTWfs6Sc3H6PnFJAVqDoF98nIaMtTfdw=;
	h=To:Subject:From:Date:From;
	b=gxkY49aKCc5uklxdGtgE1UqrbzWXComMjsKXZQ47fBsgpwT162KL+cZUFQRBjnaAf
	 INHJGMaugR0xRNRcCV8pI+ge1LkFIsaCamIIL5fvP0GzXSWC7q3rSmjFLusV2NnF93
	 y+M6fEMTMGUJZzQR0eb+hzihu0MAUgb2UMc9E2uLd6SJJBKcboBL+b/LV8dkg5kmS7
	 6bChkF+nDvI1CotDQ4peaT1+ToRmB3mVDt21wlMu6SXEqL8pBGGPvYiuotCET3e9EU
	 +DuEP0AR3BwptGw2lSpOImPXbWN/BU6lt4yVgpU9kXEemJK4sVZmQywClwI7zphNgK
	 yFEjztXURv+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F4CFA466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369351358.23846.4472866033751849171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de7cf49a65649d27240529498bc9b59e52e4e3206594e9ac3b0078bab0cbef6
Date: Fri, 21 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763693513
