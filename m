Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B4191484
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935594; cv=none; b=afRJKltaPvMO5a8uGi6W/Mo6FvCP7mcXLcsPOd3XsHsAvI9+Nvg8WHKA4JP/SZO5CyT+i2yZ02Yb47O0GibtljZ2fTmWklH3EgbuSIjHcBrJoMiRZFMp7yUDBlVc/AOZJxZTZnjWcMR/thaM78oFZoZaZ8uAiBgEQ9wEGWGaQIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935594; c=relaxed/simple;
	bh=Y4Dnr8Doa0rQ+CHTVevNKsUldP2JCcPbIUcv2xSdsrs=;
	h=To:Subject:From:Message-Id:Date; b=Zki63oz/qePG6Cn3W41WI3dkyFm2q7JgerNxPzdlBQxu5z8YRUt7eKXCnYQHE1YIxZ1jURQJj/Xp8zYWNkwfuY600uA9maX7wj/NSyrFnvU8RHXeeLuBjJQz4xKnb9OJNLIFSRGedMS4bIhyj7O6G6rbAQvX+dCl3bXm+318/wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZCPkYOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZCPkYOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A068EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747935593;
	bh=Y4Dnr8Doa0rQ+CHTVevNKsUldP2JCcPbIUcv2xSdsrs=;
	h=To:Subject:From:Date:From;
	b=OZCPkYOHZqiq6z/nIqmUkaN6+//wOrOslx89EEuEYvc3E5uADSoneb3CH9Q/zWReE
	 /Lm453us+JTCJpMNYgQlzRYTGK57+DjjrIW+lX+ksLH5cBKwPW1nXF6YyFx5TuwbMW
	 5uyLKbUI2aYoKaMuHMzXUIXYaloi3harmyRw4PXRC9C7FqveY/aHeDPklTO/M0UGnu
	 WnB9rvX+zeTKRvH2VKqOGnbZPaGc929t7OEowabf19Ii0QF7bW20e1q5IVImXp80Bt
	 9JOrjcu9PRhb9EwLm4FFBTPntmE06yb8pFTduvYSKOW39t79LbaN+zPtVrz2vtJ8x4
	 +p3w3nCgGRvnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A43C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793559358.19971.4599101193935250684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2136bb183f1c3d0ff97dc2fe3d294fcdbd4e8d5c6c676f15cc77aaa8bc734b3f
Date: Thu, 22 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747935593
