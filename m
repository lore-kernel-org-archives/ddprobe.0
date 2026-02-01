Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2802E155389
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769962434; cv=none; b=Iz9RF2/JKYbz6xoMyNjopYZ34HLu9hDMxEUE8eoDcWEiyudXiukU6bsWnY9gYatDSSoSLw5GY1ml9tWcd6CgyrEhYaSJP5t0cdPWus4T4WmHaNJMLS3NsrkoW1mbsppy1LIJeTvh9PsBcNNk5lwXWYn5tecjGY4pjj6hBcd23TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769962434; c=relaxed/simple;
	bh=nr0FsTJx2nsRDUNokZLj6rHE1Bjn/Q1mbabUXIRU43M=;
	h=To:Subject:From:Message-Id:Date; b=rGy+/+GVMHlousX/bevkjM7mscaKKO+jAnsBss3HT5ISOTk/Mw/BT7D+wVtjxiJDf59jpu9lgYjm3GrblcKHW2TT3Mxj+2psxGKb2d5+axiIBSQ9jhGgwqTxE41+/esGGFPGB5HeUEb7iH+4O9Hz4RWrlnBpnc3tidj9kG5XAgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xtk5QNS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xtk5QNS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1457C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769962433;
	bh=nr0FsTJx2nsRDUNokZLj6rHE1Bjn/Q1mbabUXIRU43M=;
	h=To:Subject:From:Date:From;
	b=Xtk5QNS9mGOmz4coojKQzvwVMg/CiI9yNYUMSH+ira1gDPQkTeZVroTl7cSqFblyi
	 FiFNUoSEC10pMO02dkpujvJp7S51sWL3B4TJ5zGSHrFyWHel1bRgRzQvdoNTd/Ifdw
	 dnXwP/YCByQ4VkT/PgEx/QwEQ3AKRKUw89odB70K1kSMYITl6PLhzImpcTpEbiLG5P
	 /d5psc8gFCXJcvnl62uQ+1V+2FLAgZNaXMUSgM0r0fq0kJGOPp6RH40GvOjIoiGn5O
	 E3XT3poNvCqUQn3NjAqM/JBKH1TDGpt58kSOHc4Z+A15Ud21h/VX1zwqxZs2feUXMs
	 xC2aa3+gkbGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4B7E6529C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996243360.17643.16897248577925362222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d13843f548636dc4dd5921252122e6402738201c361fb014712e8b0debc746f
Date: Sun, 01 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769962433
