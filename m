Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247781ADC7E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776503854; cv=none; b=jmcrDknjziZDw0wD65Ud3la88TBKQyaDqM+65ShD//Kfx+kxSEmPD6DkTN2C33SNo8Xg3/RH/HbzpR/v08tT8VSKx64bCCiUDYOgE3bbiGfcFgBzIhBApL1Vc/0llZS0UrTa1XOp4z3xTAWY2brHvmrp73VAzOoz8aFhCLGzLJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776503854; c=relaxed/simple;
	bh=I6aCx6xmgKDS1Gq2uGd538Ts3sO2y8Wnaxzz/szndvk=;
	h=To:Subject:From:Message-Id:Date; b=fdA+K5Zz8kQ9yfq2SbCm6vwF047wXZ5xYW+U3JyjQ2EJ1taB8hRTDDjPiXGSLpZ4uyOTNa6eN1IdUtOrpuVDx8BFgPKJLVACco14AAT+VGOrzEEmQsx/ML3RTlPuA76D16Auf9Udf/FNcSOp0lZylvzB0SiqQvn7fwEfrgADwcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTuoEUvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTuoEUvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01C1C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776503853;
	bh=I6aCx6xmgKDS1Gq2uGd538Ts3sO2y8Wnaxzz/szndvk=;
	h=To:Subject:From:Date:From;
	b=eTuoEUvtSY0XjjRkypWmdeaWkZCBA2BV0m5vHI39Qsf8bVe5P9zqackfXcMT0gPx7
	 PoGav/qFmP5QdlZZlMlKYNuEwCP/LfsKcNSXd+wYSNtWm0NgVeKvwL0XFCLKPZjh1o
	 kfl0oGGrzDFuQ5D/Ft7hjQiqmOoEprcqwBL81qrh0fNqnT0fVRdI4euZGU3kghhYTx
	 JkDnkiaMT64gHPWDOt2ID65La2TkTwp53UdTdW0XbE+G//FWkuNQ5GSJkpTG7+ivzW
	 rlawNGjIpP7RFrPtAS6OXJs1TiHKatc7zRDhVAWDhMhISAIIhpBADOX46XAC4nPYSH
	 1LQOnvHvQNW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF138F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650385368.16633.16556775530547365914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0211f62701ac4ffa80164adb938ebfb11e6480f8a2d903a5c5a620fb138cab
Date: Sat, 18 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776503853
