Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373A92DC344
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766195634; cv=none; b=bE0SxwmN+h8+Jcf3qN23YqTnEsut4OXns3Xxe9SpTNpN4JB8jIe/kJIe1Yr+ws9ezjAEIP1VgMWPqidlfEg8jctGzvyxGdtq1apWky5iODMVIkWXy5zSMEhcFVnX1sLOIqBfSsU9jKRP6IAbc+jD7bE50ml2Bgkax81zo2Ofd+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766195634; c=relaxed/simple;
	bh=0fqgmk6RGFoLEIC7BeAx5sqKPQJ54gOBSlY/h/nNaGk=;
	h=To:Subject:From:Message-Id:Date; b=Y8/41CdcJnQLMfLMxqfUrSci7GnLje77GoeQGVG8VV5RInoY7va6Syqe6Pyy82Y8OQq26dE/81NTknb0WmJjKZfVtd4fV5VUDcjRFIBdZYp4wyxW+r57onLbGCWiIREkJUnENmtCoOlnzPCMqf2Eb0z6wBke1igWrQ2s047UPUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5/WoU18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5/WoU18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90EEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766195633;
	bh=0fqgmk6RGFoLEIC7BeAx5sqKPQJ54gOBSlY/h/nNaGk=;
	h=To:Subject:From:Date:From;
	b=D5/WoU18KtGoRiTie9C4X4JYu1BUGjJgf1AH8bBhoaUyF7jzpq032NpThEOES7yTc
	 jd5EgDwqFBzFVlZ1I10Ho1XBpbKDNNUCkiJifghgeX9Cr4eZGnXZdYh1uL8mmLzJ5q
	 mALXbHIUG+KhlwV2OYQdQiAD533b7Rc4IP0Hwm06aOUKFVIPW5UYzO4GRJPfemP7vZ
	 BTALNxIk4ThTr7/bf/08fhhzuRNSlA8fg0h2mMbnZK5O1JjQSj8es4Fvg/T3TewJ5f
	 PCI6fV3BV+oVNqXLnAjTeThviq8oNf5Gx4dQ2UQ4SzX4ISkPfuuManlQcWjL4ZC7uC
	 wedmmNbKXGoOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971D8E668AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619563358.14090.3030612589430702520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1e76ae43cc022596ee0baee3211c73a09ac9648c9b3dd56e9da365010f0821
Date: Sat, 20 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766195633
