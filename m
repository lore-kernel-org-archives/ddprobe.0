Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA512DFA31
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767892434; cv=none; b=NhuJjwoWseTkgmMUjWC61K5bpYdL6pgRqk8b2BnuYKSSFkzUWSz1/iw3/hBp5b5S95HFk8In9sd7lYPaRnFBNwXFgf/+Qo/rnIJrr+0hn0qWoVgTcFwN0+t2Vg7ke6g+74Tm3R2U20Vv8lSUEkgYhgtn2nBtkJo0ut+zYRzqTuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767892434; c=relaxed/simple;
	bh=UGj+UYQcRFylvj9opClkffVBll2X04e6uOWlbeAA7P8=;
	h=To:Subject:From:Message-Id:Date; b=BSwt4QeeeaTV/DOcxM92sWNN4ANiycIgUvRnssajwHqheRXSZgS0Jsa29XGPnvPRij62zHbVwXE1E7RWUOCyscbkl+gOIt7G6ZV3ZAo1H/ncv9Uua+4KYqzqkVXrhRm+bN9nEZvxEKLWyqrWMx63r9sVgvGn0+iNNTtfrtcGq/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCtemKCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCtemKCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0512C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767892433;
	bh=UGj+UYQcRFylvj9opClkffVBll2X04e6uOWlbeAA7P8=;
	h=To:Subject:From:Date:From;
	b=NCtemKCMl8nYDBfycjFP4e895gnoumQz5yihKWDuME4H4eQvehdAjC9OlnRdNpPmS
	 yG9R4EYB1Sp73ItfHsxXzGRTXA1vnrx7e0fEZfxC1m6p+Fw8vrBam8p3fuZG2fyrnO
	 SZvxbUzJyFEkZwL7CdMbPXi+YgPiruY/p2XsqSl1K7oubE4dGCA+q6M4a0AnDtrtof
	 1mKzcwz3QWt1LyKHeC4/b+lVN/g/FIiwjrpn/BAT5OpT6Wh5Y6LUFsChxh5XrVftpC
	 m+uJ3OMIDFW1ziqcBFK/yn8g09VdkGugNZSwBvHsbb/ryGu9PKAST+bcoslzxywOMf
	 SMpACtVz1vp1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE06D1D482
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789243358.19561.570583357346063593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73408fc10b32081bf2b9d7034a1a85fcb4afa7b34e2f206313c6a87689e73572
Date: Thu, 08 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767892433
