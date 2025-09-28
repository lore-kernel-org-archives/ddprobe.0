Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D7B245010
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759028394; cv=none; b=rcCOGLgMWmE/gwxe8B64Ei4KWYowfB7+yUbzPUlrwkf9gHj9mHD9YjPFZ5Z58LLbYiK/UG3H5zkuhkT1i6MqojxxRh6uRO0dkkdRXJ8zEQWujT8LQmWY/VSB9wPAZgZ9ZC66wzwuHw/ZFg5Q+r9kLdmDKOALa0H2okXtUmo4XkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759028394; c=relaxed/simple;
	bh=Yn3CMVt8nB87wg33MTDV6F8YBXUDl2NpkAGj11xoWDc=;
	h=To:Subject:From:Message-Id:Date; b=GDVbQEq6Gcy4ndLaBC08lASEPpbRwrg9xzOYx41Rdljf2LjtKvd2dQ5vzPxnOcnUT4CxchrFmbdLVe41eLZ+vk7+IFhbYAsjkCt+iKkFK3vRbsus+gSydSagD4huvsDeLgYuYJanuqjLBcqJjKgd86+4W4Qej4oxgKBfhOzWLOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5/TA90M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5/TA90M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD92C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759028393;
	bh=Yn3CMVt8nB87wg33MTDV6F8YBXUDl2NpkAGj11xoWDc=;
	h=To:Subject:From:Date:From;
	b=h5/TA90M7cW71KPCduzH2kraAAFQp+lpOGgBdRW6Tgd+4Tf6XOxXCGEMzcuC5ETLG
	 vQAQg4GOJpHCjirW1kML664hLjDpW1OfdIM17LxxSYez+SoFhbWQCd1Zy2sBgU2cZc
	 NeLhQH4zM9M6vyvIwq7Yd637rLBSiWPrEaxaagyHpGfF5RohQNPJCYhFN2+SMD+QbD
	 hkIUcC8RFUODerYf8PQFrdRdY0ZOrI17o7myH516rNxLdwiOtL/dHeRpewpzMOOPrx
	 sMpX9P/b7/q++NenupJnb+rI6XM1oShqhckPS39mY4dgsznKzoyaFVRcJ+1QcvnJIb
	 Wu+fAWQaNON3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6ECAC5B8
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902839362.14078.12426168517549413446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8617de5fdfeaa30b241901bb2f470dfb2f830fb22f33f96d1ca1f310c555e648
Date: Sun, 28 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759028393
