Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7402236FA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102195; cv=none; b=nynWBnGiEScdfzvT6z9ZYksOZ/WxKe/L+K/WugONjZCg0VDwjr5NPx4ppuAbmUm6Kxsc4NgvJsUMoci6BqKmm09ENg2Z1wCkuK79KlzKXAV7gYMkICynyeE32YXpTgveztUfo6M81JAxDPFCJCvocpz+KhfWj4g5ciQ4A5U0rm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102195; c=relaxed/simple;
	bh=hVRcWvlmUaX6ZvxPPJdRiXkLcjkPEIrEwsMKpPMhRtI=;
	h=To:Subject:From:Message-Id:Date; b=i9RQkRcRqNC9ZoHlP0rVKFQ6ULzaU1kTTtr8uUgNbHaNz53ib4oCuYpdKDvHDnwCWQ2aaRwotcIMOH9oYCntxxVQk29E608F9Xm1Z0zF5UrJQnt/QgaD72NriaJ3CsR/LmtHUnblLXH0jY2xePWR32rjl8GFgmUuctgLjYigihQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVkEaw5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVkEaw5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA0C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744102193;
	bh=hVRcWvlmUaX6ZvxPPJdRiXkLcjkPEIrEwsMKpPMhRtI=;
	h=To:Subject:From:Date:From;
	b=RVkEaw5QIbdZiNu70oP7l1RFkOqvN6Y+nH6oaYB3tNLgDsYnIAD5mcKRt3Xi8a/Za
	 2Arl463oLW0VdcPqoEs8c4ZsQLQGJkRNlFR3UBJ1g+msiWNT4aPn3pRZIOhYzl4r4L
	 sbbSVFXnRw4BuKt8ah68npQfdtTccMXmPWGV8T3pHljVy/uqFXmxVIbd1oHcUguf/K
	 REPdoLoRnf7QM6Sr0ufGK49uxK0d3sT16BQH/AfqOygPsmN/E+LLboQ7vGDhNNq5Se
	 jgtgf5dnmHzsQvmlSZxVu7A1ADdQJcCkOuBce86M8jPxjRo/I2Z7Zcio4LiTrrZ0ft
	 LgK1Mc01iOq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9798BC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410219359.865.14014605516348084524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd2a9b15dbed08e5653d421b5ae75bc928ce9bd6f942afdba46c0c3572a8bdb
Date: Tue, 08 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744102193
