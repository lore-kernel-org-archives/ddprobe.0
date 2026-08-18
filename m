Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3794B2772D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787026834; cv=none; b=GdSXBcmTLbnduV89EUxsWwPOnO3+T8rmPe6yA5LnmQWJDuKREP41EJ1Vo1N9HRSB00ocGb0MBPQ3WCOigRNn44MG8JLHxHOFtAF16+c5iCMqL7P9cjPmwxbk7Htn4Dw9htfDZT1BI/kKj+iL3pz2Mj3YKuIOYKJPeWcz2tB1D+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787026834; c=relaxed/simple;
	bh=vZwhF2vWILIxr9rzx1f/PnBy2aXDWbQWO316CcGdN1g=;
	h=To:Subject:From:Message-Id:Date; b=spR765qjUJSuaIpXm1xaqdzwqb2hSTTB3aeXLx1sAQLC/XlHUA5FtvBnIiSR2FkPEtnNvLtLtBFjBEzzsi3e0HNNyymtxN0Lw8Tf71exL0+/+Jz645CCLpcytGMKMqBZ61xjsm/dwmyW/U36RuUgGZnxaMpH6zz5/pZ8TMjaOCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/IdHL83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/IdHL83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32D5C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787026833;
	bh=vZwhF2vWILIxr9rzx1f/PnBy2aXDWbQWO316CcGdN1g=;
	h=To:Subject:From:Date:From;
	b=b/IdHL83SJe3qT3K5UWhG7km/lNz99+Fe+jGVUv8FYt+rfZs7rXw3o1SV2mFDW5Zq
	 XIJhva5dgV0XKYHcDDBwex9dVIYBgAWSb8ZCaxsx+h97kOFMJ/lY0yTMDHhiKVYSxB
	 Y/LKIwqX//fSI+PcEcL0z4mHWoD/tvI6XxH6BakhxK0yTQeAbTnomGVK6qvoLnGOXl
	 dNWRVUdZcr9xjUbSN6vTwJaaX4SghCOx0cYVLIs6lfVdO2gUaq8AefGFWULZdFrkdV
	 Q/ZM4PyY6Vrr57eMx/LWafuXHeEA4enhk0cbXTVVeTJTakSZzfR+RsqkjEP3rMF1AJ
	 n/9yfDoKfvq5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB17C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702683369.16803.3490300973422032370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a68c7ea72bf412a415f4a8a49f01babc6fa8e297ed4d1ee7587c961871935f
Date: Tue, 18 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787026833
