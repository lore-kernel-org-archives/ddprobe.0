Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644EF199FBA
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766832234; cv=none; b=uAodexCXR6s64+F4cnQ9bZMlXfo3r8sxz4/YsxtWsuPyu6CuFHhzh4ESWxQngd8g8gQYs8jD4j+gfkra8ddlILYaDrDBnAV3dSd2ibK0yhNXmpn/B/Q2++ILaTtgvEeznswE11HOPZHW73utOWbn71mEOp79tv88tZxD7c7/j1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766832234; c=relaxed/simple;
	bh=TgZAh5s7lp+qR4UbDkJoJoCi44OJulN4VxlfTqd7ytU=;
	h=To:Subject:From:Message-Id:Date; b=pWgl32I2XtjCzryobFXeNWnT8VLCSyYz2zR/JmdllLl9p4ZfLAGGzeTzNIrFVtFCL4aRJG36efvaWB2ib5+MDLTe2Oob2QTDoiUBVDidFvakUNWYFyq1Fw0SQG7jOGgfoBdTZlrd+aMUrHCL3Bb1dl+vtl4az8yE/Jg1ES5T304=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhB9Rkkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhB9Rkkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766832233;
	bh=TgZAh5s7lp+qR4UbDkJoJoCi44OJulN4VxlfTqd7ytU=;
	h=To:Subject:From:Date:From;
	b=PhB9RkkpcPryGc4m1bFqpoRd8/TJvvsXr9DIGAKSWyjqKzHcdRRBMlT+wCY+vBInW
	 moeiyzra15hqcqVnDzO3aR+QoeBpvL0/MCF1726u7BNcihIVvUsaA/2rKGz/C+5A7n
	 a+zDllu3VaCZzhbo1wWRlaravcxLN3oKdweXpRVhXx3tRWTXrikpMF4Lfjv3ngTGXQ
	 zRnAoJLcknTTZXmHsfS2/DDp+iorWaNTjcByTp7dRo/91dgrZAilvhYrorZiXlmnog
	 QAFHC3g93/tzyZ+F4ROqqPDnIx+ZnHob4RI8T3rm/j8PcLgfabib4Or3ZHLWiXuhDf
	 y4Bp45YlFXhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186DE8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683223358.20190.2874243442814275655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db1957d61eff0bf1d2ce5e852af660d641fec48bf340fe38f90f7d4bfcfde69
Date: Sat, 27 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766832233
