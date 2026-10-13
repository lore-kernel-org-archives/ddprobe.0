Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2331E43BDC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791885034; cv=none; b=YhUZfMKlT43FX59yper/ro6u5sOVM3WJuI9xM5yKOZ+l51BJSv4e4F6JZdqxWi+Lh6bAM3R0DaU/H5Uj9Xa6jxvjbU1PmIIFiiKkf20oDNZq/MmrmduE8kF+0yrqzpfnVIN/0RiQn1OyiR8BpfmJNr6XE4v8YwLxNxDSBNqzYu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791885034; c=relaxed/simple;
	bh=XX8Vy58KP34odLLn9odfDYQGbDzrNKqVhFo0fsT+BBA=;
	h=To:Subject:From:Message-Id:Date; b=RSsKKL+Zi4rkhYjo5NyW3tVs/BLVfA0yS3K8zcSmL2B+KHWIS5MjnR3rBoy/IACkIR1G2aTFcWFytf6TxvBeVZSaXrXOHUqdN35vYJ0ZgOWlp/9yk8ENc3vdnMsAok9xRH7h3dh9H56Ng61eGne2hUM3inY3sSsj1EK8tarkmCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNS3+J8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNS3+J8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD21C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791885033;
	bh=XX8Vy58KP34odLLn9odfDYQGbDzrNKqVhFo0fsT+BBA=;
	h=To:Subject:From:Date:From;
	b=kNS3+J8sKd7Bt/YuuY67sGrf2yQRefegvJcsWlETkkBEe9afJS8INahfwRaPIHmDX
	 IjJHhgSltIbP1rnek52TLS1VydxUncgyUzU8elZqRMGD/JwJaoIrRRDE5hljwoGdFL
	 6hD6cr9IIO1qdfQeOGs3IBc2VY8EmhQykvchC24nSx0wyFO3G08Ta4rVK/8y1Fwf/a
	 otOMz2BtQYjEhrU7jnvaUZNk/lq0eoIJIl33xBZDwbZZznXd+GJs0W513WmxS497kW
	 GynDGhjz5eql9B3xB6zw2oKQ1MtfJVhaafwP7J7A7Xr3i3aU/H+9gCutxvy0h3nfgf
	 +27q5N6BCazUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF72CC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188503368.16541.8205325753646011986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d998ce83c742fb4ce6e503bba4b753fa59c4b9499e27da7be62f51b29c2bb5
Date: Tue, 13 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791885033
