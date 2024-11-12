Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C8919F115
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731442554; cv=none; b=DWy51krRCWuuy2ctb8cHNDXyEleepLuKNFVjtnlwKkUdDevKtxuRGQwpH01i2RECVeCzjCTlibGW/WlGKBfhIHMgyOvK7iv//u6jPWg6RS8hWzDPW/Nd600CTAZpdYu3a+EFadrNPeTBjTPkctT0+aF4AqK1ElHx24FaScY3DzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731442554; c=relaxed/simple;
	bh=jKtIrJHJOJQB4/plAwMpglV8XGETVNuRhxJrwkgjzlU=;
	h=To:Subject:From:Message-Id:Date; b=tEoKF9hOwOl2Og/Wc0f8pcvnjwY+8jS+fZpNpyA1XOuzrDMB0NlaIVHs2etjGzXwntwuJdb/jyzwepMduBziNYCHpOTUcD2e1fg2f6ehbDLbn8IIOirfDv//LMPWQGG+1KkGEh16Y8dsHzRrL+QpfubYBfCUeHSCQNzLr4lEhOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbizmzVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbizmzVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35ADC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731442553;
	bh=jKtIrJHJOJQB4/plAwMpglV8XGETVNuRhxJrwkgjzlU=;
	h=To:Subject:From:Date:From;
	b=WbizmzVCPh6Hp+BHvMoqCmgz4OUfXnBkMVCB3d2rUHaGGqlYZDll/uP6xqzkHGDt9
	 wtNaXR7jxLjiQZxea+4fgPy7xThmKDeIjBnIT2VdGG1FeVlZ32ROzGegUchtSszzGS
	 kme5we3hQy2ZUjlOPHgFMlU3+PMfOUzD07JXcBYPuuOB4M7SeZiuKDn0L/AhM5zOS8
	 QWLAG5wxJxdjiEmxQr/VlPoElCyAfCwbLLKNzNizpPijHIvi9UBo8jF/e5of+mB6aT
	 M5gZT1d07GPZWoEaJz9b8Q9/6V9a5f9N55emXOb45IRdXYgfzeqJ8/ke9JD22PzTVV
	 551eeqkzW/bNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8FE6781D
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144255358.3798.12041291440216577695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6778f60ff869e37d91c63be178073fc8c40e4e4899aa5d06def385ef8f93ec95
Date: Tue, 12 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731442553
