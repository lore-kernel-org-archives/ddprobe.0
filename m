Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0A9283FDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765794; cv=none; b=gF53qxt97aIJwBhQ/0dDgOKOT3cchPR+YE2UGdlWWerhleoo9Z+8kRaeXf2I78+4/7IzChTKad/14Y1QtzQQ6KzCqWHIjbk/hiPC1RNKRoWB8QLjYElj+wq8lMxu7AzwrnMTKIEnRVkIJpCr7OIfbYHAFnnu1Pzhb3pEGxfXV4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765794; c=relaxed/simple;
	bh=y26T47fUaIFyoFerSJxxcSAdLBzQuT4re9sPX+YyKW4=;
	h=To:Subject:From:Message-Id:Date; b=GRWy5UB15f3FI8RcE5IncZtdp8t/SBd47DPD/uMlgHdIM+8nc2o8rf1fzlvKYXKD1avWYN1M8j1hIbdq9T2UNThbZK5vTnPFYt5FYT70+GrRQdaTpfgMHLZgNd+kq72Yp9ABqug3+3PwluPX7ZQV9ScDErhjhuFktJXo8q6qu/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST1qWYGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST1qWYGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02BCC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759765793;
	bh=y26T47fUaIFyoFerSJxxcSAdLBzQuT4re9sPX+YyKW4=;
	h=To:Subject:From:Date:From;
	b=ST1qWYGcuMkLTMLkoLRsM4omAq/lEdBUIwpXRQjEwjHh7HLq7wm7iXqeRF/COHKfy
	 negeppumW0APnWPyuJ+z9alj7WEeefWp9HzPAwm74ENNjFdoz+Zr1GDaIzZMMX8VV0
	 LokSvDXwleDIU4+kOz6dfW83CilQ3hPyHuFMmtMojD8yU1ENtRtrLj0XmsbbDUEj2R
	 WI3+W9pghVUANPUZFch5GzZa5S/uZX5WTmSYzeyvLmGIY9qiaHbudDcaPazZ5FYouI
	 8W5yLtiTebGLmBA8TbcEdELfj0ckAeyGfMz+wMG7EqgY5JR8Q0s4NNZtfrIwRCVf5D
	 448103TMWYklw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F025CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976579357.30073.8375559572735192184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf612add70d5b55d1bfaa368dfd7e88e6b08638bc10849eb9d670d7c668351a
Date: Mon, 06 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759765793
