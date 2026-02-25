Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE1A387363
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772063694; cv=none; b=GY/CeY9vH5x0NiEQsvD9cW/1q65903RNIPJc5ZuDK/sjdI2LKPRpBB4XZpC82w5VJaQE5DmrzTyZeSFM0xEMJfCys4CKe7SBJryUVJP2DY3tGhg0ar7NI1Zw00p5adVn4FG/FRxAo1/N9Cvyz/hUVs1JHQ4bva7J9t2MIP5jko0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772063694; c=relaxed/simple;
	bh=h5csBLryT/AhhSuSMRBmjltOgTRTiHCeFpT4aVUtVHI=;
	h=To:Subject:From:Message-Id:Date; b=cYdg5WdVxl2qZQB/LWHBUvcdDbu1fEaFRSj8uwl+3AGMSPAn2vg8I2e6Yt6EQ/O0zefE1o1caYnvbAs2z+3Kk79PI7JgFrDvNx+WaV7MtNPwlGeE7ZkeZ9PN3NSGSbwZwnNzo+doHn1/8Wwi3X5R5jvGdnGWau+5Qntlwp/GHNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E21WHR4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E21WHR4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC0C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772063693;
	bh=h5csBLryT/AhhSuSMRBmjltOgTRTiHCeFpT4aVUtVHI=;
	h=To:Subject:From:Date:From;
	b=E21WHR4AW1WL+r+2bRBdcaqvKY+CRCzcX6z21koB9tMcXNWm1CKUd2xL55ZPz3wjz
	 VqNrFS5mNHsmjL1yPznkaWpUXx3qqQZlQ34qMElfznm/7MtCrHW3ZQ0mTPdhHq/LuV
	 WpRzPX2gh6OJRr0MapnQfsqSXugTklFRhHm/urjQw9cJ9uiJ+xd0FlWbibonn9oYLd
	 c192xyimdQheqAFhcw2IJXdk77Podc6/klQADe/RUw+jew1TSfbzz66E6oqXCufSXc
	 Qvcyt8LT+2OsknTjQfm20JjLxP6FN7aKrM4nut9NCzVfo74ZMmjVQXVri7lKAzZT0f
	 09I00c1KfvfhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936EEFD45F9
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206369359.10361.5937100714115944539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf17182c46428c8566309b8e5ad21e86007e5e10bdb6776b8d1982aa78895967
Date: Wed, 25 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772063693
