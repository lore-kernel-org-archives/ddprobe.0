Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969D2C08D4
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776487054; cv=none; b=kJID8UXORhbdij5Men91w3kh8/AfJSnjps4lY9JJys0M65e6nQkqV5l+g0UF00ue/gn+zfDEJZ6JB4CGG2ywHZjl4RkRyQOLYSRd4JNzmCtSIiVmm4YCMyiZadFOnzN9EPAPBmm9yuUuYLLIQFB49DJjW+LiTQ/SccQR52cHdjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776487054; c=relaxed/simple;
	bh=egMiOTQ8dR01MnQtZrlSK0Ld/ZXe++5n9Bg2QFcNcjw=;
	h=To:Subject:From:Message-Id:Date; b=fdmzTAHXjHfubyYU0x4nh6zqsLlzzToJuVLSKsLV6uC7qm6GhmiKa3d/aP+5z4T2mLG1ZzrjhptAUjzzAsyz0JC7gbpNUc9TH+IZWm6DiBsqlCc4E7hsScUwUi2WNVynHXQU/rFezbXJSK2KZlsu0aj/7m98L+ycMq2bAf4llnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1JlX859; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1JlX859"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E9FC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776487053;
	bh=egMiOTQ8dR01MnQtZrlSK0Ld/ZXe++5n9Bg2QFcNcjw=;
	h=To:Subject:From:Date:From;
	b=q1JlX859DnQDUug1CPk6nISsZxY+8x2Tip9xbucTvOdDim0wQibatUcDEQG30ajMk
	 NQU18YTXrrfTT/MJFm+hDix2JFhkP/JZg/iQKxYVMf4FUNdDCFLY+U4zqsS4q4qqbQ
	 t6JCpYPlHZB9SmoxbHAuXnjSG0RJewO/0Ow1ZUmDI9zIZ3G/VW5Lr/iDYOkNKdk70k
	 lSixaDAsa5G7nHWGlyYPzWrunMX/qnwWFSCtJ4eq7BN7QOdWU8wGgSSKhm2NWJTQcZ
	 2UMvMzgxgD9SKMeUlWDSwJCnWvFiVEzGrY2my5d0NuPCXKkQ0PzttW/lhaeABxfirT
	 ZwSvRXj+qpuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D27F99C78
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648705369.25828.8197230828691632536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67764047c316b01df4c92c675ce5986b60bdd2ae06cf7e4c80082d5b1a2be0da
Date: Sat, 18 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776487053
