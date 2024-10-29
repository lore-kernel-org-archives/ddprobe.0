Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35103203715
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730200554; cv=none; b=UynM/FkWuZhox/MMiPpIsq+OLNbG0w8Jt6EvNYEtelnCDyyJTCrB+F34RuHRkZjTsuGmzF8bq+eUlSsgkj7WA9XVQRXbRhj0KbAw2ZwGt+J2vJrjVtYLKOlu9l1XXCJAFn9uKpNZHJRkJAAspwGLHXTzHdu+tW3NMuuDtF89AFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730200554; c=relaxed/simple;
	bh=fzNseLWViJiHsXg+Ey5ixmz41ROQH6VsHGs9hR20D7A=;
	h=To:Subject:From:Message-Id:Date; b=BW0aqAq8IXc9q8U5y3QlluXe4UzahvG9CvxFFx+v4+rPOnt79+MXY9E4o2fWs+X6+mO65RdiOLu2IuUjTpzoT9y3e5/JhsQA5tAt9sgNXtovXo9N1dSUhwwz/ERA998cslTsEfN2PXM32dPCTIu1EWpqMtNTKasEG+Hb1ScQeLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/nFcTJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/nFcTJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BFCC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730200553;
	bh=fzNseLWViJiHsXg+Ey5ixmz41ROQH6VsHGs9hR20D7A=;
	h=To:Subject:From:Date:From;
	b=u/nFcTJWjYftehyOF8aUNp2ZcWE/TIVvhgeSQ4zkHZomEKt4LuI0ovTYoTZnnytAP
	 AS9+dLy+KjaYtWzAHboqkCTCtt66D+I5O7Ub8WpA1O3p8QK95MB2//0p8dcFEuAmSY
	 sYhbpCCtXtSRTgl/B2RIgy8Z4fszDI3O6oaDAxx7jjbTevr+LKCH+Am8xSABUwdJeD
	 m1vKjO8PL2veafN3p/mZHOIpscmrztmRYP7cvhMTW0PwPGfCZWaPgPTZHX11NIN6tw
	 CsmfFfQm5OtxenjiY4xrCgSMN2fXp9gdrYCADhrzCIodhz0P4pBi4+Ejnhh3qf0vt9
	 /oKQaK+EoWODw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266CD2AB1F
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173020055359.1621.12270824969820286844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63309011c0de10967e67723bd37a99c4bb527a7f3ca12a417c83fb31c83cd9bc
Date: Tue, 29 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730200553
