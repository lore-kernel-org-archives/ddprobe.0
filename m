Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A072EAF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737908155; cv=none; b=qmlUMEcq/7SLwz26VWQOsBLWSIcSd9OdXOGQ9dGBeiQaPhHtq1bWt0Ys7YeCp7n2v4Xhbjxjr7NpZU4zTiwYd21l7WHMEQUg68/szZi4aMSaZafSNrHh95ODaqb4BTnt8abLAAq0W9AQT7cQnXi0+Akgl4V2dcKnUeVQ1Ysxdi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737908155; c=relaxed/simple;
	bh=wIJfBYAQTlREalTa9fIEVJfHsRQmdB8oWxrYN8I0cI8=;
	h=To:Subject:From:Message-Id:Date; b=aC3PQCd8tZAfD1hjzL9Tx2ro4C2nNvXFcCO/ARFmQwl0M0+SlilRR0TWZXaenZ9NWRFxuQBMFnULd1D+PKLJTs4GYPmARIKadDccFeSh5OcvTKGI9YfwoIX1CMbC2gJanKPc2bnD1wh3il0mEKb/7edcyArkJqBRdQZDBS+2Svc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUhjClxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUhjClxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B57C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737908153;
	bh=wIJfBYAQTlREalTa9fIEVJfHsRQmdB8oWxrYN8I0cI8=;
	h=To:Subject:From:Date:From;
	b=RUhjClxqcsqfbytk5P5UWOBeJW0ld8d5swi3nT6um2/NpuKezaatEgQ39ofB5CWof
	 Uor/AydmySsj1YVsVjyFIQ0gLwaJ/RcplXswvVtmcOpgLOAP8nascRmlVTZ8PQb76g
	 yo8TSIWTG9NjOcBicvnXYZn8pDJKLNCaKX3KsqQ4a55zFg8Z+x70k/a4c1UbJ7CzsQ
	 gSayV290uKUpvRIFGvHDutFK+LBzGxd4eponldZRBhq3B4c3lWIk90yRdnuQlVUBP/
	 ezBOKAdl87/zg0Y6mJpVPoEEOeYwgRWBc3UnAcY0/akMNl998fHVQQFcyZGaqxOHXA
	 SxqFIFyX6JagQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961ACC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790815358.13147.14326335575486524584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e1406fc10955bea1607f08d9f03fb0c5988db0838e90c691d6a8ea57976c94
Date: Sun, 26 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737908153
