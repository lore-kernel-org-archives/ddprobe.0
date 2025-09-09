Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9A1321F24
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757416794; cv=none; b=INv2F0xum9k7a/pVyBM4qTBRSp8cUaPHxiBlImg2lSmToTv/8+2CtlbnfLjkbFWu9QIyuKNIDKBb5F9IMLG4Ycsno0MmkDHaLLb4NL+HP1PxhoGM1Vadvv7uQ1zd0btav1HenpihkymXgZWYuU4yMaxjgnDAlu6sy1dE+RpmhFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757416794; c=relaxed/simple;
	bh=aL5siErAOeLJK6IcZs1HzbbJuJXvyuHsLfNhLLj1uCs=;
	h=To:Subject:From:Message-Id:Date; b=g6ptSygCPD1IVAzXoKwHRu5yMOP7Kq7b06KIT7k8keFKRp/C1rRTtpXqle1BMA/eo/qdH+PnC6q7fZbrQCp2u1NguEhtgEAeJCkM7Hg2kpWnrh8qJjOO44O5KV0oVuWs/ViRdgddUkbGV0wZZKAYcoKx4vciI9shPIpeVCZVeFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwXmqp+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwXmqp+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B5CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757416793;
	bh=aL5siErAOeLJK6IcZs1HzbbJuJXvyuHsLfNhLLj1uCs=;
	h=To:Subject:From:Date:From;
	b=QwXmqp+rkeVKpoo/7GpYdlFyT15vRD2ZBullQW2Izyi+7xkwKTPRq0d+z3dO5sXK3
	 28DMEAHoCqyCXHDsMQpIrhfVajK71CeBX49PDzTupKDnzLKxH85GJDNOyz22C+ffGY
	 cV6gzAGMrGS9TDpBRGFH8uQsMQU4dhAdF8YdAbAByji2+0Bw6U63Oun8Eab1qCxkNl
	 qxZkUsIT6QfCqLMwxoNLHjC6Y5jTsjqWmVH3MmVOkS4WXre/RNEriORLacze0ZPBKM
	 cryyCSYDBUcnZmCDiWeVBCj+5rsThouC4UV4SZuWLeqDgxBZSoEHddgfy3pEsorWc3
	 mWqN7yLbU2rOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93167CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741679358.15512.4938724195965294545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc6c7d69cca3c0965f926fdedda8aac9e23968a9c1b3d6bc3d1326fea7230b7
Date: Tue, 09 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757416793
