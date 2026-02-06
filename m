Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637B3093A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770409434; cv=none; b=VMpFw92ubQ8JnQyymfwFWCP+YN2SDN+xKxnQpi59iNauUhp4RcJ5y7yWtSW57V0qppHR7lp8svYHcckrYDKvt84XO6f5lRaq7Qd1se6iKWu32UcBN+DrGMGPhy/o0l4ziQ48eE8O+qaoFpQDO1UsNNcEEukjCntDf17O+cl2Cfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770409434; c=relaxed/simple;
	bh=oh4g+ImQfRmYaXGbpPXUYyfvbIDQaQkwSaevZDmkaY4=;
	h=To:Subject:From:Message-Id:Date; b=gTf3K3E7rK1Pma6EUOidN8be+SXpWNuCXQYHLJXT+myIVndy+7YRgBjhLAXu0bxPObtpXsTffWW92Xk6XCR1gjdgtz6gLgZ78ukZ/S+hRGkGlF/EfsraSVWoRX/b7022rkzO0cZ/o3wL++J5hu8oPRR/T7q9KtGTlAQoxJDWDoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by1X5Xyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by1X5Xyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB65FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770409433;
	bh=oh4g+ImQfRmYaXGbpPXUYyfvbIDQaQkwSaevZDmkaY4=;
	h=To:Subject:From:Date:From;
	b=by1X5XylyOXxJ/iiPeXkjhdJ9y9soJcrKCqemhu/5I4rWRUD+GL0U5YRZugpi5JLe
	 OP3GbeF0Am8OCnI0U0dfCNiIlh90W4eziSLfKyXSJ+hklMwHF8sHkLLJPWG95nH54y
	 YTd7zbC/c6hvL97iqNBBDvQd88nuXGg+lcc+kfZBIpaJjNtU8Kcz6hqgVgagy5cEWh
	 E+aK8WVGcxXmdKMNi4MGWVb6sNUgTqNh/NAx/MsL3la5jy+ncvh253eMcjnbk9Bcvg
	 XXc+N/TxmtWXKfvCRGUy620PBclscC1BsXo6KBjRUq2HkR/O8gz2tYpSd8YJ60lnP5
	 8fhaZvwAA6bLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E0CEE6B4D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040943360.22530.10484022790605454490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adf0c5283f42d1d03f08e9bc7fe4e918c4e0faf0b7b822070798acf26a60e84
Date: Fri, 06 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770409433
