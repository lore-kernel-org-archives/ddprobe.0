Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D462B2D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768249434; cv=none; b=YOxClMiyNTjs38jtKT/tPR66PB9JBu0qnLJGY2uEMaWBe3EbbqS4EgLAMe5Hgx2xWhIgvODljtFgWieCqj4u/jM3i+cOQiUNsh7f4wqyADhCzhORk6f4q2LHo1Euz3NpAuc1uZ7bNus2A1CB40hmMPb46DvjKuARfSOga6H/j8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768249434; c=relaxed/simple;
	bh=5OFOE8iurx1qPlid+5Z5SKGIbs8/AtwncvK2w1rpd7M=;
	h=To:Subject:From:Message-Id:Date; b=a8nuklbMRW1TOy58K8uPNCLkpYE+7yFSPE2n/6NUyKBqrEgoJRxaSbih9n8PgRNVRnIo8GMa9tnMDlgz4L4Ra1P3uL/69Sipl2XU+/arhG0m0RcKi87YXhzXme53bGrGTspFql9etfhmYrMmbGRA0DNfO2fC8WeKtr004A+6DAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2Zh2qc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2Zh2qc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2479C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768249433;
	bh=5OFOE8iurx1qPlid+5Z5SKGIbs8/AtwncvK2w1rpd7M=;
	h=To:Subject:From:Date:From;
	b=f2Zh2qc0cd0tmDBDa/MQEof6wHZglpLt419vJkLPizfBwxc4vkLFYwyWVv4f7pJCs
	 vFS5jWBCJN/VD42mQC+OhkUDkNpS72AJYn2S1B0OttO2icXzvgLlomLC05sJG453CR
	 HYgaZCc0U1Z4yD27hkIzdRGmB43/rov1XFI5KpV6DWTwTuJJ0euqiCivRq8GhAJXGA
	 A9TTdjs257B4k4RqGE9D7xYI+y4LlDoQkXssKeO7HDZrR0ZKCQaNDlyhpoLG2rmiQB
	 9aA+znIeUtN/s1ogleY48TFFeMIhvmRphGnaei78TA/Ul5Whzq331mkLIYkGZW+OOk
	 lodCPpNV9I0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F88CF45CD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824943358.25703.3766467943422164839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0001b8b1bac7269c5337d9e7dbbb4c3966d8f6f1eb234ff6e3c3505c890dfd
Date: Mon, 12 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768249433
