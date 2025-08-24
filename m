Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A2C1E1DE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756073994; cv=none; b=cFdb6iBduUF9ejObWya/EnGGAQlEh21MQCqcyU1mq1sScLLAhUCwwYLeN9Lg3kuvYk0Xd/KEB8VuNGdpRERqFdvXBqszv9ktvutwkvd+0xQNUxDOxEkPMcE1hdfHnnHa2cTagvHvhZIVCyA/gv6XsychreW1ij6B9ebrHX1IqVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756073994; c=relaxed/simple;
	bh=BxLNHsaZbWjSUnu2balDzeo/ERnCeD+7h60kGwJhAcI=;
	h=To:Subject:From:Message-Id:Date; b=MjlR3O1MjNLykSmS5TruCOOF3xhnHJ79xEeTU27yFaWwJPgnAxUp2qdP//7wnXURA+4CEJzGIrqO2Ion1D5tV3LxmETF5gAPt63ug4MDsbf5znE4yEEua7oZo0sJeHgvouaFA0R0Ykpv3FN2Kag7hE+LZnnXCaJoN9AN6D8Piio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+ZaDIS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ZaDIS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756073993;
	bh=BxLNHsaZbWjSUnu2balDzeo/ERnCeD+7h60kGwJhAcI=;
	h=To:Subject:From:Date:From;
	b=V+ZaDIS4wwvrGZ/Z92u5wGlSHgxFqhF6eizEAQ1Xav58MumduphuXA73ozFLdW+Rr
	 B5/eGnI/qoS3VuL4IJxzwsQNZFoi6elQwU5F6ZlZY2dCgEcXz3Ucc5GmyxcdMVl3MS
	 BZ3GuvC8i40Vv5pnyz4BhXBTWBbm40PNpZ21csHgn/x1eDfzgSa10iWRkoik+W3XhK
	 k2WRRXqoWFRoTitMYC0/LOO+PtG2RXasNrwdvluy6vqTymu/hECFVlqy3GIfpRpLii
	 HICDutRX8IjVtt/hEimpo7YvBWDTuJtnhwzL/BdK7ptre1+NegyViUR//yROM6XAHv
	 m7JnyepGwuacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7FCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607399357.5730.11412767803072926864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316fd0b23888792ccf978b742bd0206d33f63ee5e92a7483a4805de94c6749fa
Date: Sun, 24 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756073993
