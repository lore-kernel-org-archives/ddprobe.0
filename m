Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953B81AC45D
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788923434; cv=none; b=oqUajWVMx4/gyllL1wZsin7NU85rB/himMignNDbvmXx+mO3OM+FHsN/zDoLa/ZD8uyq903Cjlywnr9apYBzLqgp0QN+t4SK+4QNXkxfQs3z5vaFphLBYgzoyfnVEx9jnLJch/ojRVaaWWLBZDWDoozEDl95A6FFEVpXETemIc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788923434; c=relaxed/simple;
	bh=dw/GuymWMs1Ufe5WN0mHXmvlfIITFIUrWhSHk1F+FH0=;
	h=To:Subject:From:Message-Id:Date; b=FxxEBqo1JwlK/0ylZgvs9Z+0CAk3dzay6X9PQPPB66guajUACnKpmlie3JAf7qOXFTwJunumpyn1LZG7nRaNgfjnAP8ZPeArMd4AEVD+f4bG+xUfdG3Qxcqiu2Upj/pcA6P9huNutmUX11kIbcz2AZZMjw2vmA4Tjr4EdKYwp30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fggX3up8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fggX3up8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2198C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788923433;
	bh=dw/GuymWMs1Ufe5WN0mHXmvlfIITFIUrWhSHk1F+FH0=;
	h=To:Subject:From:Date:From;
	b=fggX3up8oH0gAgC67tOls82DuoJP77YPjuKbpY2TUs6OV64BJdYlG4VBPgU2RSzdm
	 8M2PVOl1Zqej+9rmAyo9ZyKrwkQSzxrDHchOra7voBn60GULLKfd/xE722g+B08MQ0
	 vCB5xbT8Um7Rxq6HUY6eMoc9aYZy4Ef/8s8O0gLVpbXmSoboTXwWJHxF7ZEiyi6z1h
	 jSjb7jSbnIURENvFsHkt45WLFf9jt1GCKyoHmIvx9IPSSon341MohxUuTHuLUwaIOS
	 iOU7mtywTNy4NV2hdTA4Ez7N1HZsUEYuaks199CGXymoacwoC3KP7uLXb7kIoyhLrP
	 NHBGXWCBypRPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE3C79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892343368.10257.5304626414775952213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d92917a1f80c90a3703c10f0271be8c26e059381c1ea589d6e4fb6491a16fc
Date: Wed, 09 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788923433
