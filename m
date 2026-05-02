Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301681A683E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777692454; cv=none; b=AOc0Y5fJGKskUso5X2M4rZHrcBVWdfRg7X5jt8Q+593tSTE5JcjHi6J1n/ccKCb5PQNyoZdv2+U+smGK7tJFHWzYSXY1AV79a1FfSuPmvnLSdrVJZ2B4Wy5V1TSyAQ0tbSNIk2BqDiyQAW/FR0L150/ZthDFIPbzwPQ/lnVMHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777692454; c=relaxed/simple;
	bh=Bdnpx+dPtzqdjmwfK4jzV12XhNKQ8u30II83qhpFvDY=;
	h=To:Subject:From:Message-Id:Date; b=ta3uTob4Q5+lGFBBwExI1t8xqpO8TjKf8+HA7YrlRXyaQHnWWbyIKdXvuZZ/ydYBlZ/nQpxm42WWK1V1m4o1+NzmqBeqZqTyq56kZhaH6fNwefZCkU9/tqKmss13Lk6zqL9/x3BIBw8ZYI90JdZ6n+xx2MPzdYMLs0Z0dnGpVlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YO8BVlnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YO8BVlnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD939C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777692453;
	bh=Bdnpx+dPtzqdjmwfK4jzV12XhNKQ8u30II83qhpFvDY=;
	h=To:Subject:From:Date:From;
	b=YO8BVlnmXA/fuJOybMjYar1OhfIF4BDqC0JkeoAADWSBAuAnA/W40yJZwLsrUYST+
	 XLJSztt1e5hqkJvZK3avsPwzxMmQqpBBtCPWw9faIFlCManUZP4I5XJHzXfNnR5vFE
	 3HySgYi2zZ/066uFsGrv/BBIu3jMDRSiQKnVuic/pSG9t9f1jjApT6ok8rsX+vdyGO
	 eyfbWZKBfjb0+EFmTeg+csD0l73Ddp22XDrECKeyc6iHMRULJZd/XxH7WZIiymFYeF
	 SxthEsrT7W8e5kC7VX211CPtILvZIVkjbl8eLeaqobwOe7ibakExvSLXxFP805ULGd
	 9wLCxPmkpkSYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2AFF885A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769245369.24399.2665624435523787487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0865db864c46e3ac9cc95838e62661867b2b1bd208f711da26a80861342464
Date: Sat, 02 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777692453
