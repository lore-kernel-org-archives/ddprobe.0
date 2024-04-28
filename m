Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55ADC54904
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 09:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714296743; cv=none; b=BWFvHyRI9E9NJnMmpU2cy62cEiYbn366E7xylt8cMmw3ddxxnFlAqT9Q4vUNAq5LFtpCo+RE6Hh1BKdyREyrcpS6FGuuHdFD5C7MqdDQuSeZ/NiCfLBohcnCaWV8FZJQ27eaMUHgw7OguTmHeaiN8XH1gfC4cxXXyig7JIR8BQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714296743; c=relaxed/simple;
	bh=kunFgq83cijo0UPvpgjLpt9MKSS7nCmCjoQwl5qXS1Y=;
	h=To:Subject:From:Message-Id:Date; b=CcA3X65DwTDW9UfLWpxBXPgohrSJ/1awE26uzy82DfB8SjB1Q+pWl8QY8qix58fdUvjxCHKDQPitS2e//Rkda6wt73qdIraknyzkRhCAUZ/EYXomQv4DU5dpj5v+l+1piJdn7lAzUd6u37IbkHLhftwg8EbCZ2l21FQZ3ZLQuds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWxXvdBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWxXvdBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D4C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714296742;
	bh=kunFgq83cijo0UPvpgjLpt9MKSS7nCmCjoQwl5qXS1Y=;
	h=To:Subject:From:Date:From;
	b=ZWxXvdBlDLQwgYh3zhNuXPx5waggmuvs/35Sn9FIh/cL4+0uX/ZIuRml9rylXVvYX
	 r+4i8VqwcnDgnuriRcE5ZHrDOG3RfhEokjMd6jpD9rImKiC1lUB8TABVDY/Hh0qszB
	 Cb+F7Gs0gkRGXX+e1j/djDaHTBwLiSaaFCiBiOTrvcr8Wf1baIGI2vTFPOcv2YmU56
	 IzUkOnwmGIgTmRdv/WKuBDUV7uXSvhd8X3SczUHsI8daZkFc7oFDERlkk5jmJ1/v90
	 7ooo9tX5qVLzEj6DZnB5bMRFoOt226h2x8arMTyyhgQsHl0ajy1d5/xbBmN/Vg343q
	 CM8pt+GzSj6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB590C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429674275.7329.9399647499945705457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca508cbf8005f4106bc861c84a588f7c53d54e92ed645885aa3890af5a74df9b
Date: Sun, 28 Apr 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714296742
