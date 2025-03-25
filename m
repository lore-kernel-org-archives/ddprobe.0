Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93325B66D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742913594; cv=none; b=q1l9LskHyhgeg90YGXvtD33+8RG+Mycw5b/uDcljyTtPIIoppTJ4MXIsLCceD/nH7vuYWgunj8YUGgCdAx9TNW4WY/JusPubz6qXAVpTHC2rGSfCCSj/AvVSRV/XxZu9IM0xzBSirg/S6eWtVXSrGuUqT1/cwtKEIylwG5SGEhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742913594; c=relaxed/simple;
	bh=WdM/gLkiDaYNvpQICyUSGMEHZ11FswuesiH5lgn6waU=;
	h=To:Subject:From:Message-Id:Date; b=C8H7oN2RxTR2xOdjtq50N6hGQsrVpCOP5pyGUsps1+NXnm0Oi/zXs0irlfI0MasrFvjJ0i2OMSDsCG2FFvykNLrpevHw41j2vIVJ2D7b6+c0d6bletZICMEiFp11Vl1fn890Lr601QKYDRiwAhceqyKiiHj636HPOji7B1wZtsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM8EgqPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM8EgqPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D57C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742913593;
	bh=WdM/gLkiDaYNvpQICyUSGMEHZ11FswuesiH5lgn6waU=;
	h=To:Subject:From:Date:From;
	b=hM8EgqPPogtk6n4kbzBcbWs0p75JNm63meNXcTxvVD5ZYgaax0dI55uyNg33vnT7K
	 5wCNwCMT3uSPoGUiD3JXnkurH3dsGUNWwTlc/3NB8GNBTEUq6SCKeaUZKQUkKsxpnE
	 sFpZ4ylPEAfR1NqvPiSsqu2MOtj7tyLdlJHKMJKDs0p9w8g1yPRfqffL0hmy/DeqJ9
	 FnIB1lHhi5L6R/ygFBzXqN3udx1YOOiUUnEAlEAIqaG66YhUfgdNEhPQtbnoqgF7aB
	 7i9WTL8bzrU0b6I+jKZQ0LukEy65GXDO/oLGLkCvKN/3r6d+KmulxDgorGFqaMnGl1
	 CvtbCwfdX4evg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997CEC3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291359361.27231.2644066543253459221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967fe1bf748cd5803e827048b914050e2576d7c0d7138621ea35bc04ae419d8d
Date: Tue, 25 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742913593
