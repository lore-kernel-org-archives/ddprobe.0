Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9152ECEA2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756374594; cv=none; b=NKJSxvFqJWq2DxP4IcdGVbDNnZk68j60Frxplr9J2/Ro40ngR9ENbZpVViET0F0O0SOuIrgOXq09GwrVYmezifvI1asucJzW9Jc/5uq3qhzpGwx3YfggVmMzipxTqjROlLIeafu9H4R2KSt3PxyrqtoiaGZT0j/y09bEtPAzJdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756374594; c=relaxed/simple;
	bh=UT0Sus4HNe8O6pEzHpsXbklTdyCvpFSSS4+CmHTbYx0=;
	h=To:Subject:From:Message-Id:Date; b=HdnL29OCYai5iZ2b7Ys8XyED5TbcQ+vUKaHyUhD/whZ3a01hF8mfS7od+B4MOtSyR8GAWMerMJPsMpMT7JNZiukU9BTPLrmy+kEOzgvm+nmHmrrYtdZwqsqaoPcrD1/PvplHPMHnwvgIFHAuDU0Jq747AFv5fFdX41iQELGYHUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7pjYFMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7pjYFMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D157C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756374593;
	bh=UT0Sus4HNe8O6pEzHpsXbklTdyCvpFSSS4+CmHTbYx0=;
	h=To:Subject:From:Date:From;
	b=o7pjYFMI698+pJaiu6/A7P8NtZfYPTSnDOH791Hpt74SVcr2BXd7y91k4oWKvs9E9
	 zDrIe0FaQzi6rOvsfRn5FyKDupQv/Y3LpRWpNOYn5RZ68BlcC2/IOQCA9XKV+Xu3cJ
	 SVnJOAAlGcGw+wIPO+Rhj4+F6Ux4CZFDU+Sa2rEWXcCxuzzMP3jlVIxCE97xku3Rto
	 9D1qr3sDyhfQq4e/5sJONFIAlG3I2xKUNt61I0Og8vrbaS69rLQTS5P91haXAWYNQX
	 riA2oAu275qZu56XU+BHM7Y3aVW2Hj7xe/QUxHlwf1N5ySFpsobMSSvwKWRozFWCh6
	 Yop6Cy0yIws1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17FCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637459357.26661.3354538935970982922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3989d136b0fb8e26ab9f8d3f16b4c812e1c3de03c55f55b7f0a62a99ed581650
Date: Thu, 28 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756374593
