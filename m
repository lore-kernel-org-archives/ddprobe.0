Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22567405F7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774759494; cv=none; b=MFp7AwdedyKOPQhcq2poCL/5uVpNSWCQBZt4Hw/Ib+uscKSzHXPBnBr2FGJ7Mi6OcvCjnw2VjE/bN2vrPXA5FAZ8ewtDcSVD9ihaMTpIKvFNAiCsde+JFcD6bPGpTim9eXPjNam1WUFRkTV2EZQ8/8bc3CuL7+eaFAtEntc9jJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774759494; c=relaxed/simple;
	bh=Z57WzSiVa9XYKC7BBMyjwk+wxI0jmWOBZ4W0nPMQ7Zo=;
	h=To:Subject:From:Message-Id:Date; b=k4pl/hgoJZr9SqRm0nNWJF3KAT4GPAztU2qqm17nw8Uo31fMd++59uil2VmhKNZ4375mFVK/385P3bKhIVGLJLI5NhtIYlXjqtTcHjAqq+VgEXOXLyJmuSIe4D7Ckjc+zG5kVHdqolsrW3PFhBOj/9yDuruqEXRPwE4EyAEla5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so0Sdq1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so0Sdq1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8653C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774759493;
	bh=Z57WzSiVa9XYKC7BBMyjwk+wxI0jmWOBZ4W0nPMQ7Zo=;
	h=To:Subject:From:Date:From;
	b=so0Sdq1vjv0X8+XD9tNtqJ1wRoeAbOhSwotcCFh1uc4FhwiMV1s6ns5xrBt7yb/I8
	 JGsD5mrKtWPi9U+prQsKn81PpfH24Qcbj/pQkA3W9DRmwIKcuHd13uca9GEATPZZsG
	 5qHl8xHImPrpQ/oW2GeFlKVwrE0/YS8sy7btz+54Yk9k8eLk9LYuYvXWOPQOQMrSfy
	 X+5AR0jyV79LnayJgLE4qzTD3J46QRCiMPaebviFdvFIHHhA5AOLNs+mMjY73EYydo
	 vrfNtBMGuFYIdDMa78LuMUANlAO3k5hoXZi1YCSY7qSYgbVd7Hfj92e5Hq/wf+LuOd
	 gDAKUUOadJA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969A4F3D5E5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475949358.773.1523793200387804262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6207b3a88505d94fd3ed81e11a4c85ec41ec14a532f1f626d7b52be80d1b7f7a
Date: Sun, 29 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774759493
