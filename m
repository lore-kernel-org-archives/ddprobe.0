Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6E27494
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757984995; cv=none; b=kbm6QKbHN5SC0Ad4h6hHpFppUufuwLnl8MtOnWQFe0tCSJ4XpiS12YPJhQwU2gGGXFKvGFCXs6bvufgScAAe9uQ04AGuRIbYL7qrhoIhgaHBR9Ruh92VGmYX/XT2C6PK0lFcuL9k/tEB1YoMD3ONpkhE68zqPK/P6ln79MjEXww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757984995; c=relaxed/simple;
	bh=68Gn6BNasCuIGWvPbtoRYR5vLaELgllE9hhS5AgGoto=;
	h=To:Subject:From:Message-Id:Date; b=SbGialGrRnQiN5dj66dQCeKBAN9w3WXRyGmxQU4TnUanibPT5QhqedQaJBA+xmodGYlkEk1WA9N3zTS7xcuBrWn74WOp011K38SkZjyPjkmrCKlMWv5DBIOJGFTQNBmX9t6JtxYsy7923JI/M4wy7tVv+BMzgDWWE9nGfLOLdsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4l1bZGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4l1bZGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757984993;
	bh=68Gn6BNasCuIGWvPbtoRYR5vLaELgllE9hhS5AgGoto=;
	h=To:Subject:From:Date:From;
	b=P4l1bZGd7rocqHQuZHuhScitVwx1JJB9wGWt+uIjVkEZz4k6tJOLlbAk4fkOFskFa
	 kWeQ0xHbjRWqW1S4tZQFK3x8GA2v8jvVdRggTAJw6pS27XGS7TxeRO3FhdgfRFPIpX
	 EL/s8Jfo2cxcRF8oxWhjVDMqTRzo4ujF1XWPcaDBkocmlmBbJ5U1AKW1KCwVQ1hWqb
	 yGBimmVQTwpuy74kFmYgCd+U4xEwu7CnzA/QWfYSndNRFYXVV6xeRKJkoU8gAPn5SU
	 zzNUE4xtYPeCGyilVbEXlEPiqJf7/nay554OQEq5bhxn73c3qdYURyMe1aXiS5cFxm
	 VMsTietHdT0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E4CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798499358.6826.16336056025941341760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f182e2d366be923bd8b063f5e77b76aae3aea993d52f9fc152cfc06464b2f6
Date: Tue, 16 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757984993
