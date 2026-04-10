Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372CA282F26
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775782054; cv=none; b=r7l68kp+zMGBe3IjgbyvGol4njnR5T8cqDgkNerKYHAYHrnzQ8rqirm26hAjH1nxtXpmkN0/YtKeHTCmKQ7clBNA94WsMpsFAo1lUH0dNEE94UHPDECfKjWZx1ODO9QZ4W35Xcy8Uera+QJAma6bYykOT3T36QNZEjCgZ/Ghk/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775782054; c=relaxed/simple;
	bh=7vQHlkeMiayqfgPG6JaPl7qIvuBxPLUxmeF3Au3dGfg=;
	h=To:Subject:From:Message-Id:Date; b=P+kJt5UbA2s9W0/MgYnA0A8JRUeeSlYksN/JZSUlKnFSfaq1D+NAzaZNLXj5XjjwwwMa3i8JgYeMHHIrEdyCThR7U5d5Nre4p5VtoDfAX+xojhm3mXS4scvQ7a8evGYPqJlHMIojIj0q83cuxYXV5dH+Hs+cuq6WdpXgARPJrNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKAUecTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKAUecTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E49C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775782053;
	bh=7vQHlkeMiayqfgPG6JaPl7qIvuBxPLUxmeF3Au3dGfg=;
	h=To:Subject:From:Date:From;
	b=VKAUecTploFzSchW3L2X/cP/jhQ4wIifP6qTZFq753+Pr1bJQJbaLhNP/TFL2Lcz+
	 QhX4HI2S8DF2GswA3fnRNdwTx0JUarvX82STKMA/C53iSUC37/0xRROEdt5/PZaNll
	 v61Ay1VQpP4DPsPuHV+9CLY2Mon1IfyzfLE0zJPSESlPBukYysOFkpSA0b7YdX3Q4l
	 BVQRNQuJbOKzxcoPb/BI27679iBnEhx2z7cm4Q6JbJ30FdZ4LYOAs+S06z83IYMiQa
	 9V6j5nYyky2OMfROe2xZIq3ymCTWtMclvfCShpHpnHEPvL3AaPTxtRs/pUdqFaZ7Be
	 Pc2D6pc53yZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC141F36B97
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578205369.14017.7668682550487988611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cfd26e1ea384c1546db8af649ecf2725d36820b514e63fde4ca270682b70e8
Date: Fri, 10 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775782053
