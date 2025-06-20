Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054A22080E8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750422594; cv=none; b=oVy2e6ij8nVgx0S/wlmHUMdzBCyOrvUePO9QVMA49jythdACaoVVc5HxC/iMuRJmdmrnKeL+Eo+xV1IWxbPJhQXGYAd2LyohSR+6k6QyaYQuuG6prl7DBuds//iRf/ZaWDcr4C9rtz/QnHUYM8KH9YtmR0Wz7M07+92EIHWlGDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750422594; c=relaxed/simple;
	bh=ZdZ3uQwMev1M93dio0bivjG/VvUuyTpK5RL+ZA0+W4o=;
	h=To:Subject:From:Message-Id:Date; b=VP97taS9yoJeI2syxcvPD6I2h3pW1GTlP6Vc/bkyD1dTPfd/QdVe5sofD+doR2KCHbZCqvudmR5MQP3g4NOqexoaSfwKJw1aO28d8RxbQFvPEP+K0A2+4GNOrnt6hOm4dlNyA2zq1RBJ03uLbnS8KewtIJdNPySQ1QCQSwnt2os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNy30y+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNy30y+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE51C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750422593;
	bh=ZdZ3uQwMev1M93dio0bivjG/VvUuyTpK5RL+ZA0+W4o=;
	h=To:Subject:From:Date:From;
	b=fNy30y+10FwFYCRKmSF1xaPAUJIhfJQTWrATSpaWLKoPedb9MuNk/JoWYM3ezIeTj
	 upJPu2l29wbV83pASrWUbfV22pwV4AT/2f28w8ALT8jzaUFZOcZ2KNcSc6b/zpRTC5
	 YuLRKvCFnuodWO3G8A4820z29nIpY7fSCjYAIDifjSjADY2Dyr3zq9eGPCTJj5rYEc
	 Sq1EU/ophekOC1nLy4kf1IEo+mSnXP/Vg7Q9EfrLvcVzYg/YUx2D+Ooki+qL4lRxh0
	 c551RpBwN1jXFnrlrjDWRixU7zZikI69vt6pz5dx+kh+K6gWdXeeeJFjUHTwzQgxUs
	 TpOeQmt34rw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E6C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042259357.30674.2903289516807317657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a370792da05c204c41d04b1328f25cd2328f2645882c5bc5f12edd49291c19a9
Date: Fri, 20 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750422593
