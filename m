Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7AE2E371C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751746194; cv=none; b=hOuyiTe4so4tIvQ8NczlJx7xmZJpf1W8PBhB6WQPj1pRBBsfnmK+rfQeJ9F7z4WxdVjk4rNbMwyGdzCTvrZ+lhSmmW5oPL6JH+Ghd+sIwZ8Age0v+439RaQdOjlOGGiPwoZ74gqTIgdjT++pEJTRRUz5xBwXaPLFHEOLxjMSqQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751746194; c=relaxed/simple;
	bh=MuPOQuFLAZ3L+PZFg0syUFCiBTAQ3d6+G2S5o8L5Vis=;
	h=To:Subject:From:Message-Id:Date; b=ku5t37krpsEozvx7j8RUvy0sqXtH7KV6znhkD04ZkiUfwbRFe6rdRZj1UGZNLgIeQ0n2XxTqjf1Bm4IMAZTv7Fy88txqqS9JmZKriXDryVaQY8Pe7G7UKZXsBDldQubAFap/PBrw6MjwcoUgRS4Ld1a7iUiIgZOGHD0py3PaMa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX/tGyRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX/tGyRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E21C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751746193;
	bh=MuPOQuFLAZ3L+PZFg0syUFCiBTAQ3d6+G2S5o8L5Vis=;
	h=To:Subject:From:Date:From;
	b=OX/tGyRb6LUm/nmbTSGF0hqNE66n2X1TffZ2MvOm3visfIXSxG1qLKFFiIpYGo6Lp
	 xmVHLuM4w6RxIA8K9M4a7qJsrutyjzPGGuu10Vib8+Qx9asjB0CoWtA8j8N+kb5Ca4
	 ksMa4dNVrAC1RwJdt6NyF0zTswoE6+ckat0LjpFedQ1GMKtwDNR5cYqOxGticQsJDb
	 uVg9USOJNBiUko1vXYc4yhauCKGs6qdiaDwffGHsb9I26OPre3vTcxBV33sGsKt1fX
	 EYi7J9QTyZFrPMdBVqwPe3oxzKbdAgT8HNw3G29f57cefBaeXKuYlcB6kLP57GOgDk
	 o11j3HShiq76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0EC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174619357.16763.11172289889101423168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6674636781a348f77142e6621b597bf92025ecc016e68facc342cbfd8f058d
Date: Sat, 05 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751746193
