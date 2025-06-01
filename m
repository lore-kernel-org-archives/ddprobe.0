Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC643169
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748759995; cv=none; b=PVEBUlXcQ//3Br4MwNOyaJn/uIei3KCkll5X6k/0eiE4XN0hzAOPMttdZk875ybssioX6vQ/ZXc+Fk+j/KN4WQ0D3XOZHVc068FPTwRp+9isSW0AlPRzBki6gW3jY2589I9JD4yQ5szqSRpRh1Vv5vgcwihz1hiE9mFzc5I+4d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748759995; c=relaxed/simple;
	bh=YDhxr0kwDTRWQ0HuCwruwT/ZIeicrbrQcDYzyG3n7b4=;
	h=To:Subject:From:Message-Id:Date; b=XcXuoxM8JcX9ZlZ9P9CmGaVfVvWybM65pLFoCs1uUNSb7nHy2R1nAofB35OHnmgSKbIlxAmG1bido+N++aD8xM6qEIeXBaiprNp1jMU4GYG27KIDe8PO6DeaTof70M4XvyIPeAWVs/eMybdvJQkrTcIelmUmvWqwEu+dfz8WRp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pod4VJJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pod4VJJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1741C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748759993;
	bh=YDhxr0kwDTRWQ0HuCwruwT/ZIeicrbrQcDYzyG3n7b4=;
	h=To:Subject:From:Date:From;
	b=pod4VJJg0LlQ7g8hnQzqV0aTJDO4Q6gYwJAYKWDbcAiOGAXfQ6Dpvbu/esa/9ev7i
	 N8rtf1wXFSCjvuETkYlsg52/GOfTvqCSZQYOPBQi8heEmIM+iKH7G7rFM0SdFfivOT
	 fLX5tfLWVpzXCac2s61weZV4c3Ar1C5JhAPZvb7IGD2Bq7kEbmey7yz5XtVwQm2MP+
	 ydyA4aEjzZTx2hyZzwYeHKfWi3oOlUwJM5G8uY8UfCoxMF6LqDnGbddniWZBQupua9
	 BxlnFqH4cfGc+3wRiOKdJ0HsLJb4EDdbGCkyldKX+I1e7Dfyj/z/6j7Ft1NpfQZk00
	 m8REy0rk2e+/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BCC5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875999358.29391.10701781965306180430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bae83e1873040f9db94d27696ec1d8f336d4313e310c3ed2787c2951e320904
Date: Sun, 01 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748759993
