Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DE41FC0E8
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734551154; cv=none; b=c1hmpRluHcp8tFr/lwARtTq9DNotc2qdedStEFac8fDFPR+6Fp/pMW6mgg9Wpy488HNxbVC9U3nC3k9T2pLmiXxIM2CKPwf6qVJtCptoayLB8ashJrwBm6BTdwmi6N1RcTS74Exc57DHluYjDVJ8UxBayh87x0yp2NzZAGcBNyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734551154; c=relaxed/simple;
	bh=VDmEbZdgQ99wLXO8WWednnbh/po6tK7uaFtWQwhRJT0=;
	h=To:Subject:From:Message-Id:Date; b=OpF8HFas3hugCEwe8k68i26EvQfoq4X/NGYYHyqtHQrfPh71gH5Af4wMO7mh2Ao6TLAoFtyon6SZDgiOsQd1t7nXKzUvnRUXkTY7aECaDArJ4KVwCA336ypZoaArhTFI/UBGyXolyAMNtNPpb3HoNFvwVNjz6wGYcvK6GR+fW74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCLxuILq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCLxuILq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD927C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734551153;
	bh=VDmEbZdgQ99wLXO8WWednnbh/po6tK7uaFtWQwhRJT0=;
	h=To:Subject:From:Date:From;
	b=kCLxuILqeZ/mYl8f3QJXYPfaR+/pv4xL/APUrYE/5ZXKFadA39b8XYG6yonccScB1
	 wltyWCv3LanPalkzT16yl2hkFmS/rdpe2nGw+MNT5X5gkdz3e/pPV65eUPgdn6CdCD
	 Z0u0Bed8uq69b4yVT7/yGeWT6TVo8AC/V8iHWyx0oDpOJzg10sOqEVENjiJMyBlNca
	 8Xvs9jNGWLBl1vWlpJ9o15R4dBtU0svNg579t82+1rzmvL3TUEAHi0rWfiyVq3zTXB
	 ZYn/6RtxL6JP4uMhnkrsRfM+qYdfvdQyUxyl0UdOTukPlQaPyNjgJnPdI2uj15CW7N
	 EIpDEewzNpZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822DE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455115361.28696.8867301888127581923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9dd54480381e89152ff75c65721fc6ebea009851d302a12468743640d371bd7
Date: Wed, 18 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734551153
