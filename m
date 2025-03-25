Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6032907
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742936994; cv=none; b=GLn7L/p4u0FDhxzwfVYisQb9L9/mjUOlRGZW88sH53s5gun/NyLnTQ1l02GmRs5oEjrqqAI1/SQdVUW8d57Nzj8uENd5LpN8Kt+LMF1WOXA6fttO1GIG4aw4XG9fAWyW5N+tm2oqeCIIEUynIKeDglGy7ZYeyWuBjc8KAu1tJpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742936994; c=relaxed/simple;
	bh=21x5Q3DMR/nAQghXmgD0gcc6+z3ExkOpwRbudDeAp9w=;
	h=To:Subject:From:Message-Id:Date; b=rQQz+7FpHeoAHmQhia65XVgvnFtCkhgRxXLtaCRnje8OYk4DzlOEva8pxL0yvvj9ZT8BVgtbrP0h0xK5WyeKFSSWo/IeAT3sMsUmKKHH/KagESjG0oBKj6bm7yXF+obAHyhahfG8RpzwPNN4Ld9aJSQ1q/vsknOXHHzRbtxkgV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oufG+Sai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oufG+Sai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C90C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742936993;
	bh=21x5Q3DMR/nAQghXmgD0gcc6+z3ExkOpwRbudDeAp9w=;
	h=To:Subject:From:Date:From;
	b=oufG+SaiSoa8nbZIQvCBOOLT4DQRK+bRf9Vt9b4vXoFPzQw30/lIdblxWoBdZBEx1
	 SpMxrRDefq41+tMN4E930i56LVULZQW90YsHN1PZ9O6hdPOCWA0H7sUJEO3xqruAro
	 Th43AyinhuV0B3va5rMt8hoBV5Wd7W5qcp00wonkR1PuHpYw28C9Z0mq0Q7OrrIrua
	 GSqm0YBj0z8zLalhNr1sqQLMgh6rSQ1C3f3OYsMTOU8J6/+N1oyXpXNIa+SF0nvBVQ
	 lXHtKt5xHl6HqYO1GEfF6UfFGDFchgi1WulbCYoLCCC44GxhcvjE9Rdp7Zw14wTZ1L
	 wsIJETLPq7/4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C076C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293699361.416.11462678196581921818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b594afaae75e6625cd15028d826bbe10d202a1c75d3715d914ac62d4c10fa6
Date: Tue, 25 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742936993
