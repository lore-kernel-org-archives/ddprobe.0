Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E141A515
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785231634; cv=none; b=pbJmXaSyPiB2R6Kyckcqvp9EVRWeqotJ6DRRqX6rdw+E8lx8325SFgRvaviElFoHWgGG52giZH9WGuaEa2flag4FPWSejcGcO3+cFPc9W5pdb3c7d8mgagVjwtlZnjqgpnUDBnj1JvyVzmAzdyfFEkr+jQsIDRwUriWZ2L1/nXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785231634; c=relaxed/simple;
	bh=x3qU+IObWmoLd5STAK1bXTGeE/zriSfCWEwSl4ThvcU=;
	h=To:Subject:From:Message-Id:Date; b=P3qLOEz5GwR+6GfZvGnn7iH69XpJ0W+G3ZfXktWzINUY28puwvBQg8GjgW1Hf10ODLuJFptBPrdQcO8CrRiM1+OyQWE7NUOUvIuejd+lxoecruQpM8s0m4F87imAQLIE9FQiWPjKx/WDwp+B+Z7cogKWGQGY1QFSxomikvzCllU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiGqgHQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiGqgHQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE4FC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785231633;
	bh=x3qU+IObWmoLd5STAK1bXTGeE/zriSfCWEwSl4ThvcU=;
	h=To:Subject:From:Date:From;
	b=eiGqgHQGsmfCaxxj3j61lWkzPQPWzGeZv4mdkAi4iCjqBAyD4BVKRh74mCCMMPpmX
	 Gd5MfREn9TxPIgsiQy0bP/8NH0YYKgt9QWkUpEpdf5rsAtnssWEOtxho1ZOsU9YbVE
	 bfiKGPf4ez+1tC3gFMC9MQVw1u0sQTw+cE/LwJvvr2Pr4U/+IAD8rx8j9+lTQrNTDR
	 VquHTOSX/2Fvsk1gQQK6dU5ycofaYzEDDXA+z61O4QgNATF38BasE+1ocH976zoGGQ
	 5B/r5eKSc1EQHYmKbXHXB+DmQUlavh44iz8JcNfQdgCmOb96nl8i/cOohyBOrKVDZ6
	 ZtNGRg4qMD+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB40BC54EFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523163369.4261.1021235412171694807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7def6ccf9be7200953f6bcc05f52d8776176602c461a5f435e402adfe1a3e503
Date: Tue, 28 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785231633
