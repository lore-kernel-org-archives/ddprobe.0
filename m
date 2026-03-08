Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126562309B9
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772936694; cv=none; b=sGnyYAmKGqjX45XLalARR2lNpuXISLI5dcy/Nbb4hZ1Zxvw6Ct9Vv1OGWm95ThLUEVQBIAglHnsAQY1ODFe1BErIEN3diM0M2sNEnKnM2DGGhd+VBvX2MUs70E+WCD+eQmeZKzaCSkwNbFr62TTieyyG2lLZcetzuX15buOCJkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772936694; c=relaxed/simple;
	bh=/CQevhG6K5wzCPby30cO4updEV2eoi31MdTm1FztWWk=;
	h=To:Subject:From:Message-Id:Date; b=j/rhY0VUOWB1hbEg7xSxwbBLLC2DuVfbJFuqwq9eM4p2kgv+kQmt8KcVYkhnaaLcEnWXz/ShkjLzv12Ei84UAOuO8AqzyFP0MSLzZ8PE50eDJoFuh98NMj0ZlL/CD8utC+1/a+Tau6TIdkTP2yM5mLFDuebHSgr1eF0eNeudN8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8KVBl3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8KVBl3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BCC19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772936693;
	bh=/CQevhG6K5wzCPby30cO4updEV2eoi31MdTm1FztWWk=;
	h=To:Subject:From:Date:From;
	b=e8KVBl3Lwc9hccoJXB2cFqr278EsarxfxsIsaml4zgjclCWYwMKAK+Y4tr9de4VNZ
	 b10dZKH1g2ty1zacDJdwpfM4GpgydA6ml/KbSusfcueqdYYnbGQz8NkmfITHDsOAvQ
	 JdCz1eCuYYj4do08T4+bYQmSCevA7L7wf9OWJCUI9mCiryA1+YhZjmVXVWBb3rh9al
	 4mg5ZJYV08YU1gLEFGEoqZ79BjxNeWU9ZenFCPovXKihpBiXnOTzLr0L5nsJGWuSzM
	 6UDY4mVlJx5YKAQ7beQYebsrFP5IYsxa5Ay04Zn8RD3F7jr4qJFgFUOL/PGW6IQ76I
	 Exw0MR6Jx+TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9FF55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293669357.32423.8408762187239110602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48eb5fd8b0ea5b445edfbc2e984fc14b565e54cd380ec9512fd27a48d0a3b523
Date: Sun, 08 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772936693
