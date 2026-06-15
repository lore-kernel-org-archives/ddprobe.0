Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CBC366060
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781525194; cv=none; b=IRPlfdINJiBKT4x7zzhkc9AXZti7aDnrcdhamAiNT7zzyhXHwKA46itKzH+O9isGvURiZE4eshUAYtoFROp0lJxOBD9Sd6TLG7TywLXOw4eo98SBBE6VB3PbY0XTVMPTol5g0K2psCUyvpEKfMvMjMjbLJbfhGAn9Yh3Yt/dwFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781525194; c=relaxed/simple;
	bh=+OdPE7yxUXoKjdcdx0RNAiALDIXb0DQxVcMXrPVIkYc=;
	h=To:Subject:From:Message-Id:Date; b=qpIodhd4QzCGHUcwE8XWBlO/yf7Q7IdNyUrrABMYSVmnMpqpbdtpoDlFDOLFwWGzv0/gAAeUWhCbr0XtpGuOx3nrEqKb9nY7ADmpjOo3IEBDWHYvugsA1ZGhYmyAkkCLocDHcHk4SkjWRZx0FXdBe4+3Epf5hGJOu6mUiahCHI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdeOCb0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdeOCb0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C676AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781525193;
	bh=+OdPE7yxUXoKjdcdx0RNAiALDIXb0DQxVcMXrPVIkYc=;
	h=To:Subject:From:Date:From;
	b=DdeOCb0pd2Q6vfJg84DDk+EfvxUo2AVnqbrD1D/xtCphVi803dKdjh63KdQNQ+GYW
	 sL+XvY881XGsOn8PH6rKR4n3oDrnu9RMYHuU4s0NnUgcsNGGo8cFOAPPkWTnIByuyt
	 2gnrL3Xbz6Iv4nrpoz2jmoRCk+rqVDTTbsSxvMHVEOH/y7MsL/5ULRxFZIueaqQWf8
	 vEC8NZQxF3Ch577W7nApETowwMD5flCEXL2NKpJed87UetCtTmlGQLrOrUNAY5lQxj
	 zSU1HcDVuBHdTSLd76U/tP3Ook8ebupBsoLNPOrcrCbrrNwzEGdetgc/rC9XmyXB8R
	 Cjo/VnT9fxzZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0CFCD98C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152519369.14266.8417122619126109639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0abfa1fa8222bdb27662a17daf73728cc671b4963a94f4728a4d7ef31203a1a
Date: Mon, 15 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781525193
