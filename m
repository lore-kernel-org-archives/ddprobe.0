Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C07D15990E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724108754; cv=none; b=utc+SuQAMzMR7Pw6OuI+A/oJPwYHAQbtt74m9UW6qxARgFMkpLrLeO/Oaby/cwRhdqGrvDccwuxAQF2zBvq5bc2iLdt7nbRrjKBdm8QV/9vUTy2nAgAnD2hMpoX+XXeFjBVnvFfPBLfuc8qf1cwinbQQ5Dr5o9IA5q2BMMjR4NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724108754; c=relaxed/simple;
	bh=0Qnn8sOyXHhWXdqWWs9ILY3MmZD5Mw8TJAbjIllWaQA=;
	h=To:Subject:From:Message-Id:Date; b=Gmt26B6tTOEy2qcNMpE+U6ZWZMSd6N6pJ8x1fS232QgIwGAPku4Q3RL0TNJdA5il1P2feakL0Pr0bwYUsddOclSXAiCQTPqvfyB6/+ib0WoAFF+2bXcLr0jEmgdHXKFgYTr4BxaebRfnNF1PT3RI3XqWcHTSE2SnBrD2ioXr2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAwSEvOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAwSEvOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A66C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724108753;
	bh=0Qnn8sOyXHhWXdqWWs9ILY3MmZD5Mw8TJAbjIllWaQA=;
	h=To:Subject:From:Date:From;
	b=vAwSEvOPnzqwtRe3lLviq05iT9TP5s/W8sNaeCYueukJanya62+rb4s0mgwPZXx2B
	 uErZj9gu1X8ruRdcIBYQC+/gMzryVFlmtSUC3qcIEtHqay3tYC0Mk0r1Tu8hhrbXss
	 LX47r+50Jo9JEJDF/ItZ8w3sLUoaYQ5z07upT0ZW/82XvU/4T4jPWJfR0O9+aq4qUH
	 Oiy8rQUC1dTaJoSwaV0TLVOUVxFF6L4gpf3eB5Ywk1FC/A6uuUpcboVVDLaq31Z0U+
	 aglVmKmfuuiXF6SFJATvBbZUIACYK+gZwtteSrDFB7RyP//t1dPWZKfmBNS1EeNvIU
	 TPWXot8fEMNUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E358C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172410875362.24843.12191689744684265176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5109d7c243f123db352d2a3f3af2e2bdff2649adba2172098b6a39dc04f02ef8
Date: Mon, 19 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724108753
