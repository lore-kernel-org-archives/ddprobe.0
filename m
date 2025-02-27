Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB017A2FB
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740638334; cv=none; b=duFLTx69wN+bbE7XeHoKli6A8iUA9GIXecnBWJZfAmSaHlCqmzIxoTrDrXRTlDnyYuCoI6l9pfIYxqTXFSg8Y6hWCuEsAwuMySHn/d/YVgCeGNS5EEDtlvffjkKzIP+8zeTyLRaWvlygy48n1D6lzkA2nbNa33YoszLwB/hWXjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740638334; c=relaxed/simple;
	bh=5IYFOEqvmbSKkMKyEP8a9yvKc8WaOv7sMUK3uvJQ9xI=;
	h=To:Subject:From:Message-Id:Date; b=Mnab4nJbh9bF4T3USqGr7ICb8bT1A8ZHy/2YjqlKwLbNjDmoTI3Kjupff6QugHvYpfJGZwbpPiu7MR0Ts3R8ARr9IlRtyl7i0Qh7Vfq++R4aPVZcFlVkYQLbZVDU3ZORzJYHoDKZp5zfJ+ZWoojhYMBxmM7qyQUDtX/d91674/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6QHdEkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6QHdEkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CF4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740638333;
	bh=5IYFOEqvmbSKkMKyEP8a9yvKc8WaOv7sMUK3uvJQ9xI=;
	h=To:Subject:From:Date:From;
	b=E6QHdEkMixeimmCBAgfHBeoFEcomMaTq93QP3qlG8iRSn5C3Lc2K7FPd1Idk5k/GA
	 NRK6D4sTczkUELfSqmKcWrz6AfwCGHcMCdBdNktb+VxhUdakBrRmV9t8JIRWF/5O5Q
	 C2qKeYPs+rA+D4GPTQL43B+0TA3gmTCMgX+hqcN1GToaZtbQIjfC9caY1D9bmALfMH
	 SihbR8sOyNK6xA3gJhoIaR6HKYYVQ3/oqkgapcjss5FePq+VGVyfNTw9a+Z5bJRUzD
	 cKPtvRWVFq+yd3i6FUuQ9yvQdJYzN27RPeBUnS5IlGeqwJxes9bK8Kw5hm7ZvmsWWU
	 GPUU2Q6LYuH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AF8C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063833363.18589.12472544261294966796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f97f57a6a0329d814180c21c870dc155b527709647b1c32f3c6247c9ee42fb
Date: Thu, 27 Feb 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740638333
