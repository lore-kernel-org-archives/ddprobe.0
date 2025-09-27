Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294672D29C3
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758959994; cv=none; b=PKpbw4f/4OVKJsYF0+WhZ8l6gaUMw3Qu/9y+mwnAbTJMxb+d99tqlebnhEXB/VnIRxhvdzUUL1KL6wYuzwGThXowTYxw4bIwRUhf9RRCe4Hng1KGYQDsTRS7eGsbRVy8WfYMa3zxMjizdzXE482fGHu7t0m1o7Kv9aDrFAMyUoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758959994; c=relaxed/simple;
	bh=oRIncyyOumq/W4nigmTslGowhbzHYi6kc0+0RkgfLTc=;
	h=To:Subject:From:Message-Id:Date; b=Ao8G0SNbM54BT5q6Bm7tXUGU9VECwJBuEHdqJlcyfNX1qKvojRyEabPGiBsfSMmTGNzkq+Fh/H5ft0QzmR3/6NcSiHwhNzi2VUMQO4/Yu/UAciDuswH6uC+JVgvcBVZFTfpE5Ciu32SOFLXGRO9d18IiNepis1j/vc9qxnoFaI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRIUxH6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRIUxH6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758959993;
	bh=oRIncyyOumq/W4nigmTslGowhbzHYi6kc0+0RkgfLTc=;
	h=To:Subject:From:Date:From;
	b=jRIUxH6MYnmYL9jcGaNq/fGT1vv4EEa/ahfnbXqfPPx6KUFOkK51kkuR++v374e07
	 ydHagBrV3R5y3zkjn3xDMYD4zNkZC44dDAZBzYCBhP6UNzy4/OlzcicvAQxdLBzJm8
	 0onV/Ni7pEbgdjYe/VQZbzTaLo4+EC0yfw5tUsAA9JMP7k01ixMIwnTI7sDk66nOs/
	 Bm7YQODQbRGcCRpmzHhSiHD+CRtBFi2xXJO94EJjC14Kz3zizV1WStU+SVirMs+XO/
	 DTh+Y9cTyP1gE/3FfEIK6Q0u+n2GXTE27WHiaAE6m4nz8EEW91xSZyDdJ59itc2Xxw
	 anfuIsQ/q/2cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93004CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895999358.4245.9451561351602279286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3bdf330608ae0bd5ba3f2dc2dc4dbfe9b48f187a63116cdec5ac113951cd0c
Date: Sat, 27 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758959993
