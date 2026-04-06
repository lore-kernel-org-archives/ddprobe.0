Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34347322A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775517334; cv=none; b=urm6FiwUl9vDBIQNnQJpKpst1McooQh7yzlUVXbYLIMRVhbA6Jo/MjCCOKcPYdXaSMTFOAZ291QzsdmVU+HmDIkABFdKrxE/RaOPGyQXgVRAL7p84Ofk9Nc623E2vP15+5IUzi3L6PqcgSDNs1yKArnVEp6qjFUWjmjYa4ONsZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775517334; c=relaxed/simple;
	bh=3pgfBZEKSeU1xbmv+J9gGxsptaIuzgrLNI/VyWjuhk0=;
	h=To:Subject:From:Message-Id:Date; b=hHM8DtGatE8PwOBE2iQuu5LakYIzENbuxgxHjRyKGNmwbh5antU2WWT23H3BWXlYe2DaOkl6O+adwnb4K4aynLbFpxl3yu/R3KvZ7IVVhGT+veyHJavKFrJA4bXPeFQueyR846rXiOUYXcSk16FPsC58WS4LycPc8TXsrKl//Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA7JgiLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA7JgiLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6829C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775517333;
	bh=3pgfBZEKSeU1xbmv+J9gGxsptaIuzgrLNI/VyWjuhk0=;
	h=To:Subject:From:Date:From;
	b=IA7JgiLJH7/UV3uQ/S5M3uUYEZihC7R/Qcbl0JAWe66NMpmxhqDVQvJjnD7oKcHXx
	 9IuIXwkMuvSAOH9yFYr72wew5Vt+WcFPKRo4dCFLwg4k7351Xb2KafcBxILvYpx2K7
	 voCXylqY+esIQOM3i6bNdESYTq/46UaqyRSLXnHFSnvdmr9OgjwDVyJx2k8+KzYdr5
	 k85OPS+bT7Xg7/hDu/AQlm734CkJvgPogS3rq2JsNQdzevqGAW6Rs6lZuNAny4aUJq
	 r0yPMq6QFxoGxQcx8YoPisNFqzyG7eI1fGmZGin5vEVgvMH4CMIpqb8j991ZKawL/N
	 qm0an0Qr4KzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3A3FB5173
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551733369.10841.16478288799589006564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7eb2ca73ca0e432014b8b3753f94c7166464eaedfa1fb7a9d90cdcb04699a0f
Date: Mon, 06 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775517333
