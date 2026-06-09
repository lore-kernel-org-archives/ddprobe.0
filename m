Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84161282F1C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780994074; cv=none; b=EgQW5qwPSQklcBBrgC92pI3sDS59LI1jD7jFGGa9LLHIj2TN9xCDoERIjzaCgL0DcrpFWAKHWpX1Kbgmdldi8lEgyqkLaOeog3PjUJ8c5iSLV6KltJwkh4Phq1YkwRIBpPDi/tkpwsdGhIwiI3E/LkV+m5vPDUAnuBQURsCHQPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780994074; c=relaxed/simple;
	bh=rJ4UHDT5nlAQIvk36Yel+gB8XLnq/PIlUx+vZocp5hM=;
	h=To:Subject:From:Message-Id:Date; b=pQsx1Lzsp/UuLptTQuOn+opB0JfXCY8D6xN+ZXnIrB2YevKzvdXYb1erWh8lSwJG3w/0a8g1P2qZzGcMaYeKOl1Yxr1CPZAkRvN4uuG80c0SJwzoCB5ajrRyEVX+5dDudXrhw4EOaYse2bxv4bla5eN6W8lAaOhDKX6CXS6ZTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcNOirmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcNOirmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED57DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780994074;
	bh=rJ4UHDT5nlAQIvk36Yel+gB8XLnq/PIlUx+vZocp5hM=;
	h=To:Subject:From:Date:From;
	b=XcNOirmxioqZWSWsYmPKFjNOfEnCmfAlSqbnTsbCMNRSnhkVB7Q472BIepxatTXtB
	 T53Kq/K9VAjoSOC5L9EVaCMNu/WJt4I7Hooo6++K9PLSyV7qIn/NIenINtXzBOIWdw
	 X2hQvd4UuqoHPtPQKPoZxwjFsrTpvuON8/BukdwBMapi0VodNNEqlJzTPEl4grEWzm
	 i4f8YBinLLE/Ak5NUMvhUkXzcDmNoSmtGWBN/gm7GcL8Hv6vPxdDE3VNaTpyi3pmBC
	 Fb7Rr0IpQMfHyzoMw8JgMy8LCe7LHBwwxbNRIhljFfqxcWCfOW9NscCxTk55HQ+h/a
	 bg8I0K0Mq51sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23E6CD8CBD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099407377.22926.5756179122323244244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64454a4300f04f135b10a0d37e2c4398724b9d787fc7b44fa26dfd8f7792d08
Date: Tue, 09 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780994073
