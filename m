Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE2913A26B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728728754; cv=none; b=tZ9ln+iZ1jDhNnql8/+DnElJlB4EyWQcv4ql49Big4P+Yla/y+tc5l4jLz/KyGjy1AmmgHQo+DPnWFg1/fLj5Ps/LN79RfkRvN0s8vNN2PX3UqVsjSuXg7NZazUv7019/UPam/cyfzFtupzD4BKPtHovBPKsYYRtq8YFaTAqI5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728728754; c=relaxed/simple;
	bh=iXPDWtZ+RIYek8U+Ex02rjYmUa1i6Bf74dyUR7DbnwU=;
	h=To:Subject:From:Message-Id:Date; b=O4nzlj5dNTtbFpSbFKKyOlfFu3OseBDVMmrDCpOj2bI9RVlsUdpVMop/Q30klesZBuKUqjnuGT0m7HGTJ6qWuumogNCDsIWzPLQFVb1IU66NuIX6xuZDd0xNcOkxV+rJgLd5kv3c/uqm9qG5q0Re5RSg75c0exmOO+tF2Ja4Jk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxhIoyns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxhIoyns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A4C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728728753;
	bh=iXPDWtZ+RIYek8U+Ex02rjYmUa1i6Bf74dyUR7DbnwU=;
	h=To:Subject:From:Date:From;
	b=FxhIoynsVi7P9ADSe5H/UpOYGCBc/GnTVjjlcE3pDqBLQUV8n8AkdY3klWp6tKrab
	 K3MbcH4X/loT9VZBpiisqw+f8tBq7PLTqLpIvIJvg1934+MgsY8c3W2wGcqdDdWgNu
	 1d+txKvPhEDiuWDGTC106kF45Il3L+r6tzMjHxwG4DwkPGhPeJ2byZMPI80khGjPT6
	 Y6naGlM8umuJVrMu6jqnEKE0e/MYFBzNIEnYVD47mBV8gRp8up0xznZEwMGizULkAw
	 hLgmjvWFAmLLR0r7Rr/cvjkK/1/tNnf5KZa50uVomTnCCso6yQdtM6eOxeqKhVev+k
	 miZC1VAn7qaTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A3ECF2564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872875359.27474.12693781023081056673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511e63d6c1e9711576d3b47a19b4e472b66e14c27ec5399c058be511d633bbb3
Date: Sat, 12 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728728753
