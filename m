Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08236BFCE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744572594; cv=none; b=Y9wd5/OD/CLR9DXk6QIcb9B0GW+9Rn6GDEPe4MG6iIqulpmbi9LEgedVVu16I8oaWGnjs3R0BjPA2gn1SxurZQXy2SNt7ARLvD10jSZY4nW6/numyvC4tTaWbdu1m1fw4k+yFmZToXtgvEbE1fd00UJ9RGJZ1qVnOHbbK0y+Lew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744572594; c=relaxed/simple;
	bh=enFrO3uDlo4V9+gAyJ9tnYY1v+6E76Z8P5XGeiEbZhU=;
	h=To:Subject:From:Message-Id:Date; b=q3GVmtDtRps0vyehbqCJnH1ThOYVu6Su7l4vNYt6PMPX4tafeowzar4L9dcjXL+0cKR3Nn6d2OZVDzehVuG+0i9ai+QVeXuqjyAOHp+CWq4QwsVUfcIM1Q6h6KMspffFeco/x66apuOCw1NP/vJm0n+T3Z460frqVrsIf4KI3RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYMes7wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYMes7wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28B0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744572593;
	bh=enFrO3uDlo4V9+gAyJ9tnYY1v+6E76Z8P5XGeiEbZhU=;
	h=To:Subject:From:Date:From;
	b=VYMes7wbsXq+mKghbqVS5ki/Av7a8nmFk+q8sP51MU2Ngywhmg5omE38EZ2ifVe4t
	 +VLIs/kZOi4P2H45EbUjNyUHx/LnZkZiEMBE/MrQuuBKVsHqWba0cmG8s9H0LY+lss
	 JxAwQhZlYhNROfdJfT8jx78MjO2yxRueUMQtdRhOLMSeFIz2gWCgw7NpBC0PZHgebx
	 bsQhDIP/Z6RuoJvuPM8gmgXY1Nln9lBCR8bs6TmQrTLT3md4AjPiVvcH/0ZpAcyErn
	 KmrY8R2AHfvaWc/NBdKPqcwCsrI7akOqB6poaUn/n2hN/HQ6g5aiB7cuhG+d3dqikx
	 Ami1ttPbvg3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C71DC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457259360.28710.7448891469606492807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766317e4bf8aa9550116b7cac4f2103b387de3b8da0d26e3c26bd504d0b1828a
Date: Sun, 13 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744572593
