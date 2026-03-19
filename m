Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC114221FBD
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773956094; cv=none; b=UcykzqnU4l3HFGve1BTtu55CCSbBhb7CKm3M7afKPF0qJv/q0ivJYuATZRx7jmhLLB6PjpPcwhiIrldWukuF3cgXSi8RC0zl77h0IIe0fZeab6MaEb5kXEF35Qz5QImuMNCp+XWCJ55V6yYO0+wYkcWIh0KcKFZcNz3/bhmBcCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773956094; c=relaxed/simple;
	bh=YoU1OLQBTBrpyeR4mM3RtRjJbcgVmqaM/kkuyGFiHek=;
	h=To:Subject:From:Message-Id:Date; b=IFHMn5T+aCslUaYpGPq1rMca5EEv1rbgOOQMscaecEaoznkr74nLPmDWgFyERAs4tWQcPXhKVnUKPrPYmvL3DkvAujqyrKubwrsiCHhEu+oOH9oFGTqOtK+7N4OWyYAKXWNw2KH0d/AO6FQbYXNy3cVJPty65Ut3GFHzBTaqcsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiHzUmZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiHzUmZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22A2C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773956093;
	bh=YoU1OLQBTBrpyeR4mM3RtRjJbcgVmqaM/kkuyGFiHek=;
	h=To:Subject:From:Date:From;
	b=DiHzUmZtDWPjp16D9GUhepSWpVDG/M2njuQQ+decsQsCyL1D9QEpg4JUaLJ6OHzvy
	 peHvmgXh8oLY78A91f+vVorqEqWeP7MSqIVU6AU/NMgpcS/z2O6bCDRAcEDPKyuFRC
	 n2EkR0xcK2X/rw/6/rSX7tzXyRU2+MWrW3qmO3iqbdWjpcoa3uofQh/mFlky+yG/8u
	 cgrh/oT9Q04BUyO5JJg18KCcxojYNnZdIm0ckDTGboeqDAbp5oUWhnf9CC/whCrLHj
	 Fg7+bmXO0H6LxAEJPgQTY1Y1B1RUvbLu3X8Oxq61E/vLtK6oYcE627KFQUKeq0SgnF
	 ZnMSgT3U1V2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B91091927
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395609358.28275.5446318525439711603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cdace4770a15cdde255acf097a78c9550aa48b69095615a1b93524a98b89f2
Date: Thu, 19 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773956093
