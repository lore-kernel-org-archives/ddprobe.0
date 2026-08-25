Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FD535C6BF
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787643634; cv=none; b=iKTN4qhcDsn8PPutn/YWk35L9w/MfL+I4/rcvAj2xYloEfPfnptgXmUOUnX8ZDEofAHglGe0ccNPsRe/+eyyl8RRRiHiiyUFIJJuYD8tQc6/rKKbM3VHFBzPElvx6WDy8x4/1xyzkwub+scVDIi9y9GB2P/OwaFsFTspuaPwV4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787643634; c=relaxed/simple;
	bh=x/5tD2YBNNH1+D2cFOQPL4KPECfT36ySoggTWlMpeDg=;
	h=To:Subject:From:Message-Id:Date; b=hx6ZTtBMDgG30+Qah91zEtrP1nguNIodnLMHUYewPJVyXM24yvAGg2GXV2CdSYNSXweJjklwXYmXfKmoizPX7NKM9ObwAPJUFJhAoxVZVQ0R3OiAwRvqlxIA7J93Ry0TRgNcoXDnxUC8M48H6Oq/TvjWnZCWKtIyK/5pgK7yw8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxgpTIn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxgpTIn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0653C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787643633;
	bh=x/5tD2YBNNH1+D2cFOQPL4KPECfT36ySoggTWlMpeDg=;
	h=To:Subject:From:Date:From;
	b=NxgpTIn0N5JTP0r8mOjSPIc3/JK16B8AlKDnvJqQTwK6M4zglk2PyLYHIhGi550M/
	 DINwtr92YO9d5wdrICiNUHlOAczFV+iLQ04/LC+O9ut7uTncoRquLWTh9CL4PGLd9I
	 n01EIpz/q2AYC8wB2BB9bPDxVly8MFK02fIlmDM3FktxnYljkJCBeHSqNgjSj1Dlyl
	 yf+CLeKR/GaF35AAJMhr7Pj+drbymNyN5dS2M1UhxPy4+ku/zpT8WUWabPuVzRKNkH
	 0l3k3Z97DTWaEeXXqBfp+7pY3X9PmGW+k6/sV453iLuLY4GTJYvXsqQjoFdlLpoz0M
	 ywngeu6T6nmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3BDC61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764363370.29749.3349034669940569349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c612ebfee2c07db3b28e5b2546b0d1a99bec634ed80ae4d82f06e15f352dc29
Date: Tue, 25 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787643633
