Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FE19D8AC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749923994; cv=none; b=N/dZ/aJpizkv6bl9eiabrMSTcIaPRsm4NN4mNtj7hfYL9oQEsaEnkIHhpZicwSwgMzrT8DFELpc2pFWjF2POQlhxiELgUNzwF9ZbvA9/ga7erzMOBH14XfWVKWRgTzEHPiZQevtmdW1Iu7Tmkw6dLjmIUHEeyahwSHXHylv6DOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749923994; c=relaxed/simple;
	bh=KQTnIbqZ+skhQxMFPj5uB+XtJQRyb0YSrOzKAlloVMc=;
	h=To:Subject:From:Message-Id:Date; b=qaEwgTR2NO7KE2AZWRNNmH+VBt1BX29YoD/wnz9KoQKqccv82BaJAw/jkaqH88x4vBLge2hBbZV6gbY0mnC+kIA1Yy48xeIFGGejN60hKsseV7aVbXIfP96YxIZjc2J34eJ0Pdk+FbXgmm313oe1/eDIQwfQp2LnhyDgKcrLVuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUrrRMRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUrrRMRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A9BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749923993;
	bh=KQTnIbqZ+skhQxMFPj5uB+XtJQRyb0YSrOzKAlloVMc=;
	h=To:Subject:From:Date:From;
	b=PUrrRMRCp3NilOaiSPahBKcChmk10VRzh0+xlkcVoIonKOhlGr7UVPDk/YXk3F9Wt
	 TIr1QRyOh9bHgIIWjIitVZtygRcdJOTskf0rtNNlZkN5krKN+syceOQqpsQLrHzo0O
	 nj+PN4lpeU5Ad1/E/1FsBq0/9rfhXTrapxHVKPAelUJhJnAoqt6cdP0x7NUROtOPrb
	 7nf0zW9XbkRvMRxp8ToL/rLHwrYien/TriVWONfz976CqXIkXI6xwiDAgv2YgXCZVK
	 8OKDSzwd6fUTUC325K1qUAmJ2j6Ol3F0nV8E+bUNL+268nJ31dDblrUS/HcK0td6aE
	 xZAC4YXmlQOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9579CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992399357.11926.7841927563819169758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c417d0632d90f35a073e0ffc8c07fdfe8bedcab180b1ee619538cd49cf8822a6
Date: Sat, 14 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749923993
