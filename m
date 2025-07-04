Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFAB223DE1
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751653194; cv=none; b=OS1C5hu34+7gYHSMr7pkSXUX6bgI7hSYWywWoxpdqz8j12gzvNSFSif1VbMt1GcpVY2bbEKvA5bZAfFIR9eEaUMNPjjGaPxO06To6ZHt0xDk2DHPY/MYGO9ZdD+jLkkJf4wKEa/gH038IXk5E1JCWiXZVPNiZCDxgBR9ttxkXNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751653194; c=relaxed/simple;
	bh=7Qu04tax+s+EJN7ig3kVI1AZgmIGcXeH7HMielk+hHM=;
	h=To:Subject:From:Message-Id:Date; b=pEczbL0liDNtTFYbTAaqc6xHvmX5gCHhBS47yg8ivi0y4PO/FpBqXg3z0pnLQoZMOLit2pmPwUmrbUcvLJOlfwZsu0mTaLEq1/cgZ163jmT503TcPkjKz5FTVjWuWDI2Wm8/GO7mo710nvHru6mYjM2fnfOcp+TfTc9CoXmyC/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsWWyDba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsWWyDba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB45C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751653193;
	bh=7Qu04tax+s+EJN7ig3kVI1AZgmIGcXeH7HMielk+hHM=;
	h=To:Subject:From:Date:From;
	b=NsWWyDbas2CY6m40/k+KdInZL67XwJyqSWJqQk6I1pHbMjttteAq9RMWwTaubhYHG
	 vF0gTFqKhzS6nd4n2PxHm2HDYqLTwEg99meNjZUH43OnaG+66fh5Mia1EK57/G/TXk
	 lv2ZUNDqNku3CnsFy3g1CrFeoXyqiHbrA+i7Wp7CHxRVlHpQYGejdGShqdjc/VTaxc
	 KDWQCXmBbFmDVpRgrpxWnY/iYPxh4Nry30GgLsTXZ7ajkJuOnZRpT46h440U+vRi9Q
	 d98rr0ZL96bERpgFT7pgxKcPZDgpNW+hj9bSD5Bn2/7AprwyAqXN9vybFV9rsBQuCg
	 BzEHp8+9uftxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E8C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165319357.26113.1304634701857134054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f1cb266ceb1096e25bd1ffcabee609004c34932e62b6efb083bc9639b79057
Date: Fri, 04 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751653193
