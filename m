Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37325246781
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754739594; cv=none; b=C9Sx/7mjDIV6K6WNuHt0I1TnAGDblC3CD4SFmrNnTag8LB8n/G+DuXWA8d+7PvSHlg0YJJGupdgrw6mJfOdU47DZBAwvRSdJUrqNrRGC74O1FkrfmEknGIsF6QconZ+5Y4wi7VH2x0m6wxotgCxO+3/mTRikTcfa5SyfEY3EZbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754739594; c=relaxed/simple;
	bh=BVXjAi5X+K4/r7ZEswEHojLzzcsu3lLC8FrxON8x1jI=;
	h=To:Subject:From:Message-Id:Date; b=rK6+XSJ8arxE/fML/u+Hn6r+YCGxgBQJQf67Xz6wSVocUCGQPNjow3mw4V+TjD2UPJkPHbMcRh0iPeDE/HQ86qpB3ZMC0pCKiHr10Afd2j33Dtc29DejzazHlqiNPDQlqhQc+0SX9oSySoNYa3DiNpBgkeeQMniHQ2OKchxsMnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/UiSIVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/UiSIVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2044C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754739593;
	bh=BVXjAi5X+K4/r7ZEswEHojLzzcsu3lLC8FrxON8x1jI=;
	h=To:Subject:From:Date:From;
	b=k/UiSIVdYOf52BRq0wmBkjv06c9j7kKcR8j5zrlNKSHqtNbXdUG/Ia7LeESslx7EV
	 KusEJyboRAjM1srrCBmLLlCMqF1Yyg6KjM9BY0kY8QzYl0Vd44mbrCHZXLBzXOEsz3
	 XvUV7w7D65KvCw7phPZc3YDVVCzUkhAOYU4xdntyNB58+LyPani/CEwTSTpJlo0E4Y
	 pZmr7P35D2LagXo4tsUnx5qvEqb1liBVuEkJb+2oNNzA1NV1Is2ypftt/mZFk7BqeK
	 MzkwKylt4s6qLtQcxMeZIexkQU9yctWeiIyg37niVV//Zy61uxfRe8Lz7AYPtQbnLx
	 cmIfbzAV1J+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FDC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473959357.32575.3991583661627800932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbc55c4fb7ed26ed82648e208ea1c2f8c314728a09d6c66bd5c3e7d2caf87f9
Date: Sat, 09 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754739593
