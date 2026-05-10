Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25AF3932DC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778431834; cv=none; b=uHY0qloouPLMBLgKbKQ2zOS/wv+MUP+zhzkJNLAvfgcII9zUZQ7Dmd3RdsZcRFO+MPEO/4yChmvuO5dTTLVnGhtUl1Y6MHNA1ijGSZBAhbNqf+SkuYH7tV1mUZCap4UAtzrHtu29HK+qfEASVPJCmDBbORzuNlY3gPD5uGDWr0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778431834; c=relaxed/simple;
	bh=QH7ZQT8qqaDPWREljXkj+v7EdAqu9+TMFO81NowhXL0=;
	h=To:Subject:From:Message-Id:Date; b=iLNdkh84uuV+/XjeuCtlhMsNITwEGbfVGyzZ7g2viZYKir7r2+sc/ivjganUzSX1w0hWcSyMphumVo/DCTcXb5l+vxtDreTOpGXGVz1BYNK8FTYSpLnD56urTUbMTgYW2ZrAI9VQG3AurXNMGGJQY9r54HunzbDu8CeTtSmi6D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7MlwjXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7MlwjXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AF3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778431833;
	bh=QH7ZQT8qqaDPWREljXkj+v7EdAqu9+TMFO81NowhXL0=;
	h=To:Subject:From:Date:From;
	b=n7MlwjXgCAUi0zqeA8mNFaZS34Zvsnnj+v2DnAzuAX/ew+UCTbcoYjvZoIiLSkqZY
	 JGJ109uNJZlTNX6ooeu/41iUTWZ+EFW0YkJrmC94PdcsrVThtDSxY9h10HH3boKVZy
	 JxMBMcHoYxVvZASA9pLTdUP7nwF1Mzw341X9pK5GqDZc4ZQ8/0rh8siBkYrU1tBZM4
	 JlhInTTzbetlZf6ZjY+9AHdXkQn56DiECraqhPfZzpZVdR+oMnpd+G+4rCGHNAePfp
	 NybDuqTQQTbR1fYveFo00JKxxSSuosSWbtkzNdAyY87apz7sM6cxskp2EZjZJl9xZB
	 SYLQGK1eYFVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8CECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843183368.19039.9187712489230755803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f4e6e6250516de309097aed2b8dc193f89bf00985f3a7adc0d18518f207ecb
Date: Sun, 10 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778431833
