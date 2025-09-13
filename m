Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0714A1E515
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757772594; cv=none; b=IiXrtNWpD9HY5hV3Q/xTWOTPgcFlumwDVxX5Gb+zaaL+qDluSD69fem3bE/5yiY4ogAqptLond2c1MkT+X7hjUY3HiXInH5nLpyd7Xu0OLWU5OcrIYmtRdCHl3x1yVXyUYEPlLxCrIM2rVRKzYoVVISfu49GtFzuGyDG+EIgG7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757772594; c=relaxed/simple;
	bh=Wn5n2DrhYCrbIs99iAH1vaUe/m8X5AHWZmXF5ZgIKgg=;
	h=To:Subject:From:Message-Id:Date; b=IsaASpPUjOhKLqOoz4NzqgNXTtZ6VH6CSHJ7kLEKwjSsS/i2f3EJyqGhSJVNwNNpJX1KeeIW5PccNdd2kWQBKOfLqlQB9VUMgCAvXPqyRkamBqGVpj5jsT3qam54+OrAfas5wFchXe8Jz7cpRV9H6mUbtjYW4EqvVMEM5klSH74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDXlY+f3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDXlY+f3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F92C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757772593;
	bh=Wn5n2DrhYCrbIs99iAH1vaUe/m8X5AHWZmXF5ZgIKgg=;
	h=To:Subject:From:Date:From;
	b=fDXlY+f3WXRKfZAHLJU9rTRt0VYgkc3wIKtiuf+fPioy8ukt0IqRMRf3fmIvvTtZp
	 TH2K4TxK8lxgBxfsK2TcinqN25U71+C7E3CrbTjQXQWP/aQrI9EXnSs7qLwpoGa/c6
	 q4vnAWE6DqLjFKfSHHrXPy2NGcWEFa92+e2SuYmBWpFyajCpjwLED+dQDinGh7YHd+
	 6bA6wkgd7klNvrbXtP3nb0Qtkwn3+vIsUMWlH132oKja8lkZ9dCPbNT+r/r6dsiPXX
	 JMQJI2195Nos3PU5395LhBsHGOb9J3A2sHMz570SPotT4w+xUDjduu5gDROKJ8AaS2
	 A4+J09W+BgX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019DCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777259358.21152.13854300502608122637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d9df9b09d8a319b48c0a3902210ea70a6049c828b6d8528f87e34480cd4e01
Date: Sat, 13 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757772593
