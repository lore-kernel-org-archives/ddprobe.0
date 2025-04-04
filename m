Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3204BA95E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743742194; cv=none; b=KHq39tORU7/ZD6WL0n/1Sv7xjXraAx6ZsR1yVRiGZE42thlLFFhVQZU3eynrWkZtgz57D+G7UAZi8lLZpOBahDS34nBOz+QPv72s6kxF3+SIx9dwI3fBIkd2K+p1fC0YnYQmRqBgxC7/tsXzJaVktYz6DExNZLRPSSdsYL4moVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743742194; c=relaxed/simple;
	bh=mXPLzHdV2RlD6HC2AtxnNPqTbjfeKFoQ6HMx+rqca0k=;
	h=To:Subject:From:Message-Id:Date; b=kJd7NklmUCXRbA9r+LozOIk7x77ys92ywPtWbWGobj3qnrOs+RtxBTwmDdJvO+B35/O5LgSapMu/1arQKypZKeXYulbAuCWtCBWBDRejwujIwx7052Z1sCG3X6oVtRsONmaIyNXvmDkEfQwINVI1d9OfMVcWa/lGgHKqWah3M2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEA8dIVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEA8dIVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB46C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743742193;
	bh=mXPLzHdV2RlD6HC2AtxnNPqTbjfeKFoQ6HMx+rqca0k=;
	h=To:Subject:From:Date:From;
	b=PEA8dIVTyBsm7SDVWFs/8eq3a07aZwDI7Yi+W9pY+gd5GuLAeL5AlQN1z1dZtLViA
	 oMCWhemYykS5VOdh2i94QyzLCo1gR/BMzn/HNx6zsQp6XowyRgICIwaUsEf8RXn303
	 naVtWqzgVvCJc8SoOJjiicxyVdaMLmspLRNueOoUeUQFMp6Y7XACk4mxRLBJ/KKwCV
	 sKpI+leFcttDQ9Blp08cy8YvnxdFMW1k2s38XNQdiscnUi0KJTDo9/AH0huvpyykPX
	 /YPkOEEbQb846cZEcbG/9fJdTVY+RYkKeMqVXIzsjQYeczpPcI9EzVYOT5Tj5tJHCO
	 j+qFfL5n3tk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F68C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374219359.15014.16248363519526998864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b045566a7211d69456506d74a2121f011a92d99159d5ef69e5b34e83550dca43
Date: Fri, 04 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743742193
