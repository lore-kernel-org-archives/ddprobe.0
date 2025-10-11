Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0092A1B2
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760180994; cv=none; b=chce6DaJXBpIE33/yZJFoLqU2ZmJxMRMIw9ujRtW4cWPw3P+SKE82nDmVihxHslITnL8tQa1kukxZQEjfkYpIUIuQqC40LtW5zbmKAPffMgWTHVAT9Zzy6nj/1YHSIu9HxPujmyCPKbHzhlvupTGtLz3p8DijBIn7WfCiBdox1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760180994; c=relaxed/simple;
	bh=ksvHfpFK3VdWWsO0i3GzwhICBlpXkPn+ianVKMYYIxA=;
	h=To:Subject:From:Message-Id:Date; b=ptzjXgTDo6g5SX+KoffCaADJ+EaermRCRySUoNia1hsomQ0FS6oC89e9NfyuzKidX/oei7U1Tmg0ws+OuOnLmVNlZFkspqMEOZqxnptsnzz0wyUQ+EzvvugUDR2pPf+tS1aqp6i1S7HOEJ5a7aQrZY+VBRXNWyJxtF2ydcZdJdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouBOu+IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouBOu+IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A581EC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760180993;
	bh=ksvHfpFK3VdWWsO0i3GzwhICBlpXkPn+ianVKMYYIxA=;
	h=To:Subject:From:Date:From;
	b=ouBOu+IPiltqTlelQm1OeINC5CvGNIAQYOUnNYjHCBDiz5dbS8cVbdyf7ssUhbjF1
	 /iSOGLMYqdJzu9RB/zZ2X/ZWcP4rP63azsb8MyrCJgpKFW1QGEdttI6Px2M7DoBdAK
	 Iszvwjk+bBpBI0NXBgaDN7YZ4NmQ/BzW0Jwfu5THoQ2IJ/DaT5m1czpQww2D9njPhI
	 3pekpad3fgDtIxPmC6lClU75Tqj8a3dYdmsnw38pBZjiG/Y29evUC48u1RK56mlfpc
	 GInFrTRHySdIEA4kRUuRN6qQ0P68jFO8aPffnq2zJRTw304WqDEJQv8tW5iwQNTAMC
	 7+/QcoT78In6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CACCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018099357.20253.5376656263629686321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8032df96295ef541c6e3dcb4023985e45c9db950b9086ecabcc874939d89df7c
Date: Sat, 11 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760180993
