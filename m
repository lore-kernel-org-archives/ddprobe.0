Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D343AA2
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714195943; cv=none; b=WwcSFIahh5dH2fPy96kFqEhJzfxMg6aywaJbI3O9G7/WeLAgiUywqFTx9Qe0/6y8ZFx0+ydlsPi3ndGezUGG8NVyroBQiicPM3UwkIMv69mEkL+FytWv2IWaBMclieI73u0ne9rvTS+iTAuSReZWfrN5CCujrrMnxXq1wda1I+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714195943; c=relaxed/simple;
	bh=QS/QLV9grPpXK8DiFe8HuPE1Gcw/B90hYW2qMloDtME=;
	h=To:Subject:From:Message-Id:Date; b=Cd5j8lcOlDPn1mDy7yfWHCxnMkbDJwuBNLvs6xjxlhhmmKt/qy9e6SvUPBG1XqUmbJM1+B8pVyK6H1/7vIyMpdFS9Xo1pFMmdnzizSq7bsCmiPZ6v8vrJb9nJHDJ8sEoaututgolmVAQesHW5fWSKJbHQJOmVM72WnKn5YX7ZAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPlof2nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPlof2nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D901EC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714195942;
	bh=QS/QLV9grPpXK8DiFe8HuPE1Gcw/B90hYW2qMloDtME=;
	h=To:Subject:From:Date:From;
	b=HPlof2nvPf3OLbkPMh8eq+rISmbh2blFMkHwEdEJWHlAQxpXHocq3tv3E6LLrPZ71
	 8GPDmXde65OrI2mw91fmGTHB53fE2Ry1imAPNYs+PRM2+yLuG0zjc5JA7JcV+vNWFY
	 HuRildv8O0dwD76kt0r0KYYeE7bYiLTMBujOkXGt2T1DjhAIOq11nQ1x2RM09ZDWcJ
	 XOag41UpeYwl9TK5Lm81dDg6dKjUNZ4jt4tgL7a9+HEsQmFG/ROhqlzfxyww5w1Hfw
	 N/JOphhZ3Jvt0NA4pSV3Q2N/8dSFyQJjlBM5L9cMu32xWujMIX+hiE8xywicghDl4A
	 02+h28O0gL5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39B4C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419594278.11648.11793249751184230581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095f667b78483baaeba45b5ac24e61e5acac7e46c0caefb04977abfe8da14b8c
Date: Sat, 27 Apr 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714195942
