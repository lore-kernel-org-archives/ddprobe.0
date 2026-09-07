Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D66446D551
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788805234; cv=none; b=LwbWZhvwXr3dOHvAF2B4gH5kKHcmUD/V0PqLyhKJGo1TL/Q5Bc916Jn6O19e4nDTK0F5YvMZ8R8p2dDZOGfMlrkVQxkIA26xzJcpULOcsr7j/mUp8WpXgGivsXmj86E4LXv9zxaHKt7O/G3R993EXGxyf+ch5jV+j60l54tfSKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788805234; c=relaxed/simple;
	bh=h53OHN7FTzwsuBM5E480n9nAVMd9aC9XdZsF6FYotyY=;
	h=To:Subject:From:Message-Id:Date; b=oK8X0MItBvmlHXzyUse8uQ/OKtd89i/z6rpH8H0IFEuqjDVK62RunQPjLn69CIr5E/WNyDOhFdqcHcuJEJbZNfsP4DCzIKLO4cnv9bPhug+mPbl+TlAkLiOdNKoWrbVApbkhqVtU5ULP+9E8MgcqkaiwZwnD3ZcLWwbWF5V9/cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soIudpJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soIudpJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C06C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788805233;
	bh=h53OHN7FTzwsuBM5E480n9nAVMd9aC9XdZsF6FYotyY=;
	h=To:Subject:From:Date:From;
	b=soIudpJHCbMk/5JjqtaM7CpoMSQMr+IjdrLY2a5qFVFkLjw6CL8rORuZ1CaDl9SjR
	 qFQ1EHQjrGo9EmjSeXGdHu1423Z3jBdSMu24cZJHEoBDQvbKD2RIIrZAL5jXwCLWks
	 WZauELm35A5gNEhjIa7aYTWyF/oPk0X7X3raiNRAndSe8LlG2FYSlS1rOyapWOeghO
	 fo232gvLXsW0a2+ZROv/jxN3ZUhQV/zbUz3DYCpNQvyNEs381AQ/NhczQwXc45Jd7R
	 1pxRc7V3MDg/OUhjmo8RAc+9nfCsG5aeDLaCc8h46I31wKsWih8MmNjJ4vN5D4xwae
	 aynfHuCxP0XuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE826C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880523370.3070.2708310959156131225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170516cafe2ff5b0cf0ae3c751a522a749dba660a68775ab13a7560c1c3c8d6e
Date: Mon, 07 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788805233
