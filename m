Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5360314AD2B
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742707196; cv=none; b=FCxrYgVL99HFekP4cHKi5R70+v7E0b1Ccf5BbwLNSqzfnfF9zV3jbcBjn7F9jhSDh1SvKuWXzNmOTWIAkCPO3db+RyIB4CwO1lPu+4qaxGlk+ZrE57e1AAyT2ckGvKHLA5l38xj4/DFVvuGzt011cbhgJfmkgcxIB85wfogAjeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742707196; c=relaxed/simple;
	bh=nHYHh7IwUDeXcIz2YgCRYHMSPVWY3jiiqHmUoJ18esI=;
	h=To:Subject:From:Message-Id:Date; b=jkYl8QV8vOke4eRONb2Xyi4kbPOltCkejjYbjhNp1CxduBQPQ0Em/YmAj6ytk1vl9h5YWSrpZYaUfKEPSGlNXmb7nG+HeNUA2JSmERR0cJ9oewvQ3+/bTlc4HdUvg1CKq2LwwR9jx838FI78hy0IpGCqcTxm0ABGd8zgXq+vidI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXOs10t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXOs10t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD553C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742707193;
	bh=nHYHh7IwUDeXcIz2YgCRYHMSPVWY3jiiqHmUoJ18esI=;
	h=To:Subject:From:Date:From;
	b=hXOs10t2+q5x5qpXHyD9oB7j3dorPt5L00WoBkRcWLospychXl0p4gJtdtcSpCvC+
	 hFp76A3eT/b7dbTwRVTnktu6x2OMcxpslVJyCkUwMbidqoHilqf8m74Sp/YyAY1N3A
	 HpdH7as5cNiJiOI+2L4RGebGIhMpO880LI5noaK7J/5QooeSutzYacPc0ms767DB3o
	 gGiNeOZeqRTP6m0h3eqpkVjWlrTwHOFruK2NqKmsvaXXUEP/zKWkn2oCsi3+FMixC+
	 FERn2ro9YTEeWguyktXFWjVuUmZ0urVeOz0DWZ/OcYWUBmaV2Rl1512jnnN0IxAQ38
	 9u5JjdhF6s3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14CBC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270719368.9981.14874141461319615278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b73d201f13b3e0740ea19dac5939406f0abc77fd0726db990731a50d8fef9b
Date: Sun, 23 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742707193
