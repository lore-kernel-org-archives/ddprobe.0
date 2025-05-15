Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3B927933E
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747274994; cv=none; b=syDIZQphXaq7Iqqx9bQeuzHIPfFl6WKvLYy3REjeLwzVEcwlfTqTzE9G1uPVCgwGAH74o7JZkqYN7eP0C6zl3r/65+LwRBsWdUGdcPhyV8QrzxW7xFLZtBpoJuDC/YQR9O18hDUhPBpjGxHMcJqlSTXv8dRDunS6b3jJoyq6c0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747274994; c=relaxed/simple;
	bh=o9zcLHUQ9g5yIudOust3wV7aMTAh2BTMud8eTobTIpg=;
	h=To:Subject:From:Message-Id:Date; b=llE66WFvnKQnL2s65gjYW0OJBaLrzUSaMINB/DRI4ljeKXNzOlOzI+IlvRblVtljYR9CF9/Oj7zIxRVaznIoRU6TIkrPoIEbH7hZrG6mLApILnEepFH+2LC7xJTsZAyjsBFM0QS6Cc5l+/RCxyQsgwG4pdHJGQc3U/QpCUoiXTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBj7fap2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBj7fap2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747274993;
	bh=o9zcLHUQ9g5yIudOust3wV7aMTAh2BTMud8eTobTIpg=;
	h=To:Subject:From:Date:From;
	b=bBj7fap2+2XvFC7qTB6idVm4t7ZNE0ROr9kfsXHNH+LCiFdmuv4T8jP8E/wNpzOYn
	 u5qZgNZ2y37Jrs0nORcaIBTo9IwwMP7IvxCwbbSvsK+47it7b7IUrcHdUGazdwK/b0
	 MvzwvarCtQHkAjl4pepcTY3WpHPOUThRm7iT3na9G4tKdvjPB/eTqbteV5uMHFOP/K
	 7NXmsDAyDkuHBJ1V0+Vr+rSVjl/Mi6h3d37KmFqyc/MbMFyasb5IlAmRDrKicZ6brW
	 7ckPX6qRZ1SuzKh1UViQrzQTZys6t/eFhSup9o0v9BIO6GG87j9afrrW5ir7oQNIem
	 UQDSiwNHG+h9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91434C3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727499358.4969.7485344906418139311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2749b5ed5c4cd9c54021b58563d98b1db1b308fb22c15e307806cafcdef0b75
Date: Thu, 15 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747274993
