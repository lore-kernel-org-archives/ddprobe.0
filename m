Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECEB38E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705777697; cv=none; b=GevAnSaLPSxJ9BlkMmr7uNgSSK4lfPhcfn0PUcCx7j+QdPtLBQqRKopPcI3T0hnCMkLzezzlHoxGfxPXZUiA5DAyZMsQ/v+nEcWWj/IVAqZ6d4Ovc+L1FMLqHt8Jx8ZGQU8Dh2yf7Cq2fRT5Rz2oAF1fGtQZyJlpN4gdCj+p9Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705777697; c=relaxed/simple;
	bh=KcLYc7jNISC0h2yBmQe1GKLBt4CN6+J5ywfJplGrMjk=;
	h=To:Subject:From:Message-Id:Date; b=XYr/O6HM0HUogkjP2ZIAwr9EyT+2ky3nQ8tgeyuJrbTWBExE5tqW5Vm5yrv7093Hg26oCTUZiWc8cOvk0RS/DIXMmIULZ2MtZ7V7ekMq31s2PYlg3gJ5JsCpYlJMhMiQvLPsl9rK3GcE0zxr7IGOPLYP8rQ1OqWecv0boqtGGjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVInmtIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVInmtIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798E7C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705777696;
	bh=KcLYc7jNISC0h2yBmQe1GKLBt4CN6+J5ywfJplGrMjk=;
	h=To:Subject:From:Date:From;
	b=TVInmtIjpUr7AU+2yeaffXz37PT0FSS/MqxqX7uE6A99elyG7483ovLFsjKSq7tsA
	 haUL2X26mxdAT/9Qj82C3lo+m65v2zpYz666HVe96H/AZdMrLvc4/Aq1K94d099Ys6
	 ABp4fUqdYKZYW2395lscpf+8Vow3stDMw5MN2dYdBQh2Q8lLxHE7hc7G/MaCxfLLB6
	 0LN/nsnKwtVInvXmxkb4Q23grGzGjbkkz6yKexw7Ox4m0tIR+qHMzldwG6WWjHB3NK
	 O4XYVmi1nIx+NnnE3AFZBUBB+mxukI93aBo+OtojCmtIa/MtR29/eLVICxZvlPrBka
	 5OtMXWWzL4M5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A73C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577769636.3207.9781304053235341363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff77694ec8458b339d2eebd9eae8fbd5408f7bcfb4bfdbcb79f0aa36437b537
Date: Sat, 20 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705777696
