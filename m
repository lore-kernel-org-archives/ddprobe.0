Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1947E27EFFA
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765997634; cv=none; b=ssEfoztSytLvz+u7RAhJOXA5jkIP2Y+sS2XtQrO8QTdoYCLYGpglVscuokol8MThpSxYrPNcdZcWJyF56TU3+imjCqJYC+i8syTSQsucs41dNXgOh8CLRY42DXSN1SlaSUsti3SOFmGvdrCPt1Cwb1406L2ft1IIdZVYb8S7beg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765997634; c=relaxed/simple;
	bh=x7XvPZN8Izo94ZpCo7M2PGp/12iQqEEKQNGVYzRxYmw=;
	h=To:Subject:From:Message-Id:Date; b=Rt1ngSkx/FTvuuNhtcTilMvR7mxztJY1wBPn564ub0ij+5fDMqNzlle5k40xjpIrKvEhpl5R/YK29D52zFoY7kmR8UQGqKEzq9vwQcmVfcVPCUhNG1WgBq9uSY/RBGeejGH13vFKlnuSCbw4sEgVhVaJ7ERl8vhsLk3X2daTtog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbdK1Nwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbdK1Nwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1101C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765997633;
	bh=x7XvPZN8Izo94ZpCo7M2PGp/12iQqEEKQNGVYzRxYmw=;
	h=To:Subject:From:Date:From;
	b=BbdK1NwdeXQchsIPDr0WO0rGYTP56wCvnsK5DVDefTVkDcxABHicLU7Ka7ppeMhc3
	 buO3V2fVjoZ6jVbBayyvP1vaetSrXYLG1keEb/Qufap3H7i/uX6UyjA23RxGUSgH/L
	 bZ2cGLEzZl1JbtMJ5cGfcnr6y5RLMnBCpxNxkjwVhx1zGvixURlBXf+RTt3YCz1rgf
	 JHThhN7z/4uDkk6dJ14iygZj3XMiDtOXz9xa0WBG+5UcYlCHlBtK4BbK/AbHOW9dfW
	 ni54gfE/GTI6pgWC9983kLJdCflglyn/HodC1wnw7Ri5V8U8JO6k/OBbEVtlJmRB11
	 VOlXWsd0thIWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D5D66B85
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599763358.5316.11085306394184139571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29493ec0df0d5b53349b7327c1fec0e051129282b4566baa760544fad3a601c
Date: Wed, 17 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765997633
