Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448F617548
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735794954; cv=none; b=eZgCRxluL4K/HfatubWVSSm6zZ+HDBIRb9tVqx9uiT+uswfa/tvbHkwjbCM35OrQj5FNVUb4mJakqopSYoQnGgcQH1y2ysP+JZGkpQam/3CMX/YWmVH39Sx49YG5NuswrCktDBsKhst1AE3TOzICoZG3IpFD5MZSGxsjj22icnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735794954; c=relaxed/simple;
	bh=AeyqPVsNx07kZRZG8bBmaXsrCn+MaA86jXAU8PhoSyc=;
	h=To:Subject:From:Message-Id:Date; b=h7hBE81vMNufNNpbmZoj4T2YZsyo71OakI0ru3roLiC0FfiOQ+fGfc1VZ+TXp48zLnNywtFbQeHU1Umd8OUfoyV9sImIuAc0r9vz7c+o24KiPFM/1RShaoFSKZVjzbxd1PqsMojamN6zuUrxCwv06enjXXgBpSdjGyaeKDOzBI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPVMnLvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPVMnLvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719BC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735794953;
	bh=AeyqPVsNx07kZRZG8bBmaXsrCn+MaA86jXAU8PhoSyc=;
	h=To:Subject:From:Date:From;
	b=ZPVMnLvgzL4NoxRjHbNRX5Hz4d/UzN/7lU2ewO52WGv1jrlso1vCjsMAdkjvmrCVT
	 0DYGu31fh7R/OaIdg6YhhTk1kGaARRGxuDXMT4PNF7+UlfgGXb/Q7njOo2SrABVN2r
	 SAnyd0tMxbGVIYdQlnRhGrY+tuPF7V2/QRUbtGvPdZrdnei7FlQt4+KhSs42xlkU5h
	 AMjLbF1ur6HB3jc5oqf6KlvemPENj5XoqsGy/DPcJJOqe9CKrSIDtyOThMoIGK0fuP
	 71FYbg89RuJNleBIqQMEm7fr4hWvWpjRCE/xF9uNuv5gA5/WzPPFBqXu7yH45oESJ0
	 7UwqSPQJwAp5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF6E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579495358.379.3390965995464048494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedd04836ffb833d7545f92cf6fc99760e1f64fced7be59f0961c7ac1992b94e
Date: Thu, 02 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735794953
