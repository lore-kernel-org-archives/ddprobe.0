Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092BF1FD4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769748234; cv=none; b=TbaDd/d6eKRwArlpDQUtgrzTHw/JMWRSXmJY3UmKs1DwbWUL80g+W7Rn/bJL0KPX2ooduvW1RAyWQ7uOJupRxI9wmjy65dFGnSxvcRCDOh0Ujdd5/NisGgDLs/0brQ4xl/muH5kuANP2nRtAfwRLvGdTSkZgeR9VnK7fKDhZrmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769748234; c=relaxed/simple;
	bh=pBmcxdNW2JNgIAMqP1KBAHu8MUKEkPMw+qU9vAxNp8o=;
	h=To:Subject:From:Message-Id:Date; b=Alzl7OS0XhkcBtphBGavMwHR6Nny8WI842Z2TxFhbzHk/7NegaBt9GmNKz+bGayMgaRJF3jfgg9EH6gRdlnUCe5Kv1hm2yjwxGXdXuYdIqmIqoUtS2x17eq2Vsbp6Qf1FIX0dfxq9dFLkbR012jNJURfjjC/TknpA9ir6ITuWd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1/dviKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1/dviKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5364C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769748233;
	bh=pBmcxdNW2JNgIAMqP1KBAHu8MUKEkPMw+qU9vAxNp8o=;
	h=To:Subject:From:Date:From;
	b=C1/dviKCvgf2V3Vqd+KfpRjQkHAf1S1xWWGJTSwhYWv4haGYsjSuQdwLhlOcB/Ro/
	 +da6kcc5KR7CmyEAd3DqmqnUPcFH8UdltReMbB+16XICVaD94lvV3Q1O/BCzL7vfRD
	 o7zrPoFUlYCLrvr9ja9DGIYbJcxOU3QLPNirs4AzJM+55RDnjfjJ5rLPifq2XVZqsh
	 Iyg7aDZIEWxkdPU2TITjcfeTkwvAqxUB1b90Ay5qoVpi0rWm6hiE03r7yopto8jv8Z
	 vD9zIVuNiavoEz3IFuOIJGEf6aBtKZvJJAIOcpIiY3EoLaTvhzTfKsZTYpdCpHlAPD
	 gXRzAXLCxhetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0DD73EB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974823358.13670.11292737513733954126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ec5ba44635e1282b56ad857123c8830f73425f91f52cec50ee5635cd7b7339
Date: Fri, 30 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769748233
