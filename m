Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4332F5326
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752682794; cv=none; b=Nix0VfYmIetd14tZTwDbfrCqSNCNioq/flHfXjHTX+ZIQqnIiLXO2xBMBHzY17lkhhkhxqvA/5C8auTRxSY+JX09LqHtvVaOuG8sYgdLxCTiAt6z/vuiunwx853IGWp97CfdPwV5vLcOUgor3UATsi29m+tO+86/WuSwNO5x+WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752682794; c=relaxed/simple;
	bh=Bld7cw5r5p2DTdGrXSZkQss8uaKH/OZ/UAFWRHT3Gmw=;
	h=To:Subject:From:Message-Id:Date; b=lXLpTQTl8i3yT2ajTlp/FgsdexKj+2x0jc50olxBqPdnNKa2iYP7spj/hUx9Ka7O2al0KGjgQu0othHSjVS7tXGXQ/YXi0+7CRYNxjmMOO4hp5DMPwaZKNUUfMW/RF9RSgPta7QYoOn34rnIizjNM1i/kHb2/hYQ33vopgpzMsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1YtCfUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1YtCfUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2944C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752682793;
	bh=Bld7cw5r5p2DTdGrXSZkQss8uaKH/OZ/UAFWRHT3Gmw=;
	h=To:Subject:From:Date:From;
	b=o1YtCfUvR1gr1OMWvdLfAzwDfhpSXLlW3gaYveq424w77aFGke5ZOUsBwqgJB9cb5
	 EwSbSnm28Ftwj89qnJzV2/8XGIh2G5IPU3IEN5LISFUTeH8A+5kXDC7mr8DOPqXd7/
	 LN/50s/qInwZSiG2pgO8VGutI+vxUsY5D0I7yfF/B9RVjVoerUbc+BZRewHDdT875V
	 YF67FfX520Nqny0WlFp5Cez9Fx6r84SNJQtDFATaUoX9nXJc22CmrwXspTO4Fl2jtP
	 9aozh1Gq+n9UMPMrGvYyAKQprKcBlHyUbSTmzgxlt7jk1afj83MUXzp7vspHr+6+2J
	 7dGR6EDWCFGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BCC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268279357.7379.3972967370871530887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba6def291bcaa57a847607b0a469d24d96c05b52489f0bb0c2d5c750677597e
Date: Wed, 16 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752682793
