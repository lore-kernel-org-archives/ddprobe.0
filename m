Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A072613
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751307594; cv=none; b=agFPaqOd95+atCtGKg2UcdJaZ0PoujT0NNO8rk8TLEMeQwlYWkWglCmqQoDoV3VQ4hxBdtS80bHk2IGto+NfS4Ip+95jQHK7cDaKzXkoEV6OW8/N20VuRL6BIwdnEsqF/flLOSGz97mL2gGb7DeNHq6zGbL2Fo/MgKfp3whT0ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751307594; c=relaxed/simple;
	bh=0b5WDtDgvau9NIsUX82UrR05PEJuTleCNmOILzr2PJg=;
	h=To:Subject:From:Message-Id:Date; b=fuUHwF4VStlOn5ryhISvvVt329APNuFoXGQDdlS0obaMVTWWSfmnz4iLlTG44ErJGBLOkoi2NG+2ZoaU8iMYuigR+lliC5cvXCgncGINjimN6JwgFUEvTh73Hm13GyrXtb8yU6Aysd62kUQ+ZBi2+TMOIYskCyQAjhX3CWwYlkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elRz1al+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elRz1al+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751307593;
	bh=0b5WDtDgvau9NIsUX82UrR05PEJuTleCNmOILzr2PJg=;
	h=To:Subject:From:Date:From;
	b=elRz1al+RbhhFKVJTkw7Mb9jQh1Hkj1fUYYTU+NPJwZwH9mcSPXWZfwB4vICfL/Dy
	 OwM//y2+756AqeeZsbRFPaUcK77ZoRni1GZY5iZ8wsCQbJvxqX23iX+l13xt0ezXzf
	 e+ci+ailTAeWkaTI9Rq7bkBkBIJwTVw4JVB7M7OEKuHOT5Vf0dl44QxyZyeDX0xBaV
	 7hLo3Y8wkWtPWMblLZk3Xr4BKqwxBNX2O3rhV0zZxPvhvilU1U0PNod0aZqoxu6Df4
	 +scObuJaCV9y+Ms15V0KdVKorEaYM50ZteItBGlcFysqnvgCLuhz+fY/OAnNOsxSUN
	 eXuV4fsmA36EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84BC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130759357.4548.670553799912969934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4333e3d461171000ebe8d79edc18658adc7fd6addbd3782a3aaedcf8850beb
Date: Mon, 30 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751307593
