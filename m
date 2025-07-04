Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC5A1EEE6
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751649593; cv=none; b=d5wbzZEXPaYkZRMpEMJQj7SiYL8qkg1hBFjEE/k9Nztxi2CAWwkeoBCyuvK8E+gUaiBGY6B4n5qOiGeB6Byh4XKB/I7H0OKRw2gxGytrIBhouEbo3hqUostP+sKxqRXH5ogpwQrPmAe9mmaL1AUj9cvNm2C45T026u8K4EkYPjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751649593; c=relaxed/simple;
	bh=Aozz+a8oni6aO0a1LzQ+O64NrkNrdetSs/whBxOoKUg=;
	h=To:Subject:From:Message-Id:Date; b=M/YozpMETEJWT1xleg0yijnW0I00dtAro7yVHZbfBx/hTVdAcLLjHJ3y5QHx4paU0FDn0ChJv9FhI9j+Gqi20EtXM5no9iHIOeQd56nBWItLhImn2gyfm52RCZUCB1Dk9+MDl3c2Dw4dmf/uOHoqMlo/2fTt3LKM2VWNvxMqI6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apAJ1Hsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apAJ1Hsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDDCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751649593;
	bh=Aozz+a8oni6aO0a1LzQ+O64NrkNrdetSs/whBxOoKUg=;
	h=To:Subject:From:Date:From;
	b=apAJ1HsrAXJN7YyQTqvJNjLflc9yYxq4wPjRHTQBTpV6t0WfbtufRJdHFSXH6woc0
	 LeJ5UzV4q1zLlNZfYoW8yLsg6qAoTlWX3fbumAY1KBUjP0IRbQw8aibcPtybUTyvp8
	 c/Tk77vqVY3onuuBFoJmQBB7Sgkqw6Obl7l3Tui6KYlbmFUyue3DEa/F04unRU9Un0
	 fINZcixPH8Cn55N8zrlmlMSLgCPoS9+9oQrcdcqVRDeY4+5MOFOkCgTzVtW0bA7Yxr
	 1k2Sjq1KGHgCF9HeeTxcSBga41nW8FF1e/85sVqBpoC1/PjLlC8jx1dZ64dTRR/w25
	 U2tqBRd+BnITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E385C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164959357.16660.4867987108261250182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f949f2f4937141c48b3e3fd9add5c1c01eba759e853bb61d76035ab62dd3cdd
Date: Fri, 04 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751649593
