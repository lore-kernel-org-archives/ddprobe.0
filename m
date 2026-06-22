Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB0733BBB9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782147394; cv=none; b=OQVVge/ThjbQQ9OwKS4pRlAvxWDuVXeN8qt7CmuUhQM0VjAK58h4C+POyNfLD2Tv3dt57hHf3MYWPbfiukyBrcG+/taRosNhO4ab9FsgIvQHuXGwdkTXHjh+k3yB9LPrt4kaucS0KC5rLJ5P41ZD4xm+vDA1a1Iy9qzjpdtaIqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782147394; c=relaxed/simple;
	bh=tchXTuC3WeiCNCJRzy5eegiFd4vB9LqU0wiLptALu5M=;
	h=To:Subject:From:Message-Id:Date; b=bpSx/nwwVxdLowjXcQVsXLKlwXs9odJAg4jAMXNtO5Dti/QcYjQATBuovdyP9dNMAfY0/Ope8z1Y8npp7f/HFcKBWrzcEa2tQfMbr+PEUM4LzeHEhX4SF5MpwVaOnMVUA9YZIlPbIrJSwEp+KMhcN+nGw+YP9vIEQhlVyjlAiCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVfKakER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVfKakER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C373AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782147393;
	bh=tchXTuC3WeiCNCJRzy5eegiFd4vB9LqU0wiLptALu5M=;
	h=To:Subject:From:Date:From;
	b=sVfKakERx7L0/2zGMs3KtEcejGR3cR28jLF7mYUaG11WDJaTWYxYvPtrYNZLIfqDc
	 rmMIgOcZIdMdDEHFI7CRvevdAG6wPIofLT88FzS/GBzTr7rNaTp7dOkBdoUwNLVrhp
	 G8IXTOtSIjwA7urbl8xVjjJMas25zXLLtrv8s90lDE8mEgxUUGuZ5nRthzNQU68EDH
	 G0ZWr4ITzeJbQ3XBYD/aJokfDyZd8XDNZUEaoKXb6d9xZIIjr8wsQ4u6ZiPbC1ja5e
	 vy3xwdOMi0uUH6Pa2qufjupO9Y5BtIX/VI//hPykKiTJuQbdLs+AOt17aCaTD2D7XN
	 kDyzToTgqIP5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA033CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214739368.6939.10616461001096399734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9436d3a276e97e36ee7803277da751527425bafee5575efa38fa5a8b9832495
Date: Mon, 22 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782147393
