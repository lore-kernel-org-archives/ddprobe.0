Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258873A5E90
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782990514; cv=none; b=RbvhlonYGYLgPXylVYxL6IpDswYmlKsKYjvieXpK6HkLpJlJPk3XuIn+NwqbAHqyEAqDx2sv28tnQepm0IxfPR/JBFncaScHyBTIxXVZIQxM2aeKJJVn2pBsk2i23oujZSE/nVd7BPbHAJjNyZfKoqtaivIvdU/CUt8z7sPKlqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782990514; c=relaxed/simple;
	bh=b6eEBehU8BtYwaJGv8bwJRtYdtWSWvzB4Q9nsgvPegc=;
	h=To:Subject:From:Message-Id:Date; b=T3UlBHNrGexARC98TqrZ5YMy3bTBn2Rl/gDsXZhnuGq5oEC472HDHAR0eI2QBXyyHudA0d8DDm12eqam+XATvhOB3Levb1c3ya+dC1yl4XBhxjJm36p4z/yD9FyujPUjQqpkoCCBVDajOIrzXf6NLxjFZzVHRwnT0bI/XRGZs2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKmqUGLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKmqUGLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1B4C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782990513;
	bh=b6eEBehU8BtYwaJGv8bwJRtYdtWSWvzB4Q9nsgvPegc=;
	h=To:Subject:From:Date:From;
	b=PKmqUGLyf+lY2ZnJVmfMAUu/O2d0NQSURI/uX9RR2/HO9ofiS01SdzxF5pBEXrxQD
	 UNDjmpgX1/ZXCDRJPU9shleFXRekaEpNm8/0+Lzkve/qQ1Eix1BE+M6zhicYSG2CN3
	 vjY0rXiVl+JtaPZofQhnXsfJ4i+MnFZz2ayO3OjdGNzlIC0Xzy7rrik8AMhRIJ5fJ3
	 Dl5/wHmYxIUBm3sAFdhURph0mZRyGYquWv9WkXngcKUEvvpo4GNQRZpoRGyAtm4811
	 XDqGsvNCA5oh38AZYgHGM0JjNi3LFwEJYMLFCH0rmqLBYzztprYu/J2fAir8lcYxof
	 z+XeYEY/pWiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A79C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299051368.10282.16888237207816377208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8080e7a187beb33e32a31f9094c2505d7333a919cdcc489bf8802fbcb54749
Date: Thu, 02 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782990513
