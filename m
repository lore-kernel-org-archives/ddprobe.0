Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1542326B2A5
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757822394; cv=none; b=kiy6KGtc2LGOxGzVDuN8ZkA49LnzTAcwlWRaMXqAFuOTq5tWdIl5C7BVr3eJsVvnhD2finez5x4KxIdaXz3bSJUJ+5PfXO874TGUjMBbklLnJ5PqZ8ZEqWjPKFHSGnxUsH9VKR9ou6+4zmYsmgfxfp4wOlOWHbQuPNIkeVupZWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757822394; c=relaxed/simple;
	bh=LcoIkc3utIJQO7EXnYu8xB8C6/U71TjB+Mc/DOGCYNA=;
	h=To:Subject:From:Message-Id:Date; b=KTtCuLLc7TAlpfHFG3xNbpcXaYNVIRNT81p9Skx+2csyt5zLlMAg7W0RFie14kek4mIuy4s2Dlun3BnjG6Olbo3sv9m6hGlvNmuay2GUSALB8l6990/oc9o/zd1KfbmLtIEHtZZJJgtrrbCWunDmCVpOw3Z8NZPvN1I7CpQ51Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4i9yxiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4i9yxiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757822393;
	bh=LcoIkc3utIJQO7EXnYu8xB8C6/U71TjB+Mc/DOGCYNA=;
	h=To:Subject:From:Date:From;
	b=g4i9yxiRTfjfXCp6iHe70CT63tqO3Z5VBdwfsF+TRN4bFj7cDhiactP7W2bBoY3Xc
	 emetM2p15/Q3C8YtqZhs2BLqhfyO7tM1i/5cdF+TIQZA5JfPPLF7ujy3CouC9DC4MB
	 u3EEEzbgnIVWLFb622Xq8TZqXUBkh8w/yw+5cY5X2uP6oyfr7zfkqgVOCjNaatK0wz
	 4gVy0C9F0kMNDcIcrlYGLG/18Cfi5lQ6SJEsL1fYnTn+5pPlCNsHXsmTt4m+9PCRbv
	 rih41R4AnCDIc6NVct0UJoZXb6MrX7eTNBipIeEhoT+I+ePNtVptOe7JJOIrKyYfEp
	 i/w9rVbeBsaBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED89CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782239357.7284.5465382334279637664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1db3941fd2f1ffc221cc28880ddef864e1bb6e3ec314824105f8ae7e1fb0be
Date: Sun, 14 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757822393
