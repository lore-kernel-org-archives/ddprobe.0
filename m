Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02517ADF8
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752685794; cv=none; b=b9uYQz2aAzkhrSbzPq29tgGHUD+m6Wl/X1xcumV2VlC95WJx3qua9+LqOA/3R6J0IRgHrTM/0Sf9oeqdI+ayd6d5ZTjuUbWae9I+NBhCYkHNrFdPOxeEGFC75+2z6im5vw+J7lRnvjO8AJ7zp3NXhddUuVtLmeJB8uCTsLiHgss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752685794; c=relaxed/simple;
	bh=cr8I/jVAyMsakVEXF5+tN4pgu8jINAzcpp/SXlul0e8=;
	h=To:Subject:From:Message-Id:Date; b=dRks/T/gjKe/ezEs04LT3E7oE3VSZVqsc238o0vyMPiGYY/gShCC9Hg9TbkmVnvkc3TYucqtL8sEC5lHLjBk/1uXTYY0Q+snEUn69k1AeRuZFm0CU+RxnFeprK2mUOYw4xnSprfOTq27EqeGzxtia5buQddClli71U57+uu50ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhncfUii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhncfUii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A522AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752685793;
	bh=cr8I/jVAyMsakVEXF5+tN4pgu8jINAzcpp/SXlul0e8=;
	h=To:Subject:From:Date:From;
	b=qhncfUiiL5gkefFDpnmfjRlLduPyC5FyOCROs5FN7xWz5iX+a45q1THqV87/LF7ej
	 c715y+wbBjgS8PBKlPky/ZnBmWCeMe0EKyYng/zCmWVwInXXivwgIDHzNtfj7YdlDe
	 mf03/Q8E+rYXPDf9EaVKNj88WkZWBnXFyGqMsaO1NC1uzH2R/39osdrsq3i3chwmCD
	 5mCoBac6KZWi9AGxSVAFa0KhYHS9V2btd/aLG5fm3B2evavdGjyVdDSd8NZGLuliZQ
	 +2N9t21FogVY+Zd1lG0Oca/PL3wLEdmXmWJVaG9ptRk4H98tL54T0cI5rJppuaEnL1
	 aLwAwJOyh1xMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003BC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268579358.11558.1610651747397157092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835ea52048b43a826c4f21d528be26e802302706fd1cf23b73e23857e846786f
Date: Wed, 16 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752685793
