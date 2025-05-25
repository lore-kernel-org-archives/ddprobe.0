Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348321CD0C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748180394; cv=none; b=mz30Y+M3OFKm+YFkcPP7iKQ6Bte/RCf17BiuJicsSHmc5Y4Xa9rThU6ZAqYjxzfjXNak2/4JgDs6uLL68u8y6kY6KQ7wvN9ltRQ887EAcBxeAgrLKhTx9c2EyM0visYOacUzgoiw1CjIK7h9iqus23bAaebT2VsHF9fJnSdP4xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748180394; c=relaxed/simple;
	bh=lKxv8uXxQit23HCD15hchJSYNkbnR+XV2NoF/sZw0Bs=;
	h=To:Subject:From:Message-Id:Date; b=WrZT209ZR0ixE2z5k2VnhnS1xrkLCRBS+AfTT+xG46N2I9VY5XJ/mQJrBjnvBtlvuW5WskfuleYIl6LqSnQoac/Gzg+A0gv0kEeHBWGSfyR/dPJCmuMdYPJu0W69BBl6rwYHZBXFmkO8d0sdsh0iSvGNj82zVHHeDjJqbu7etnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCVAGDNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCVAGDNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748180393;
	bh=lKxv8uXxQit23HCD15hchJSYNkbnR+XV2NoF/sZw0Bs=;
	h=To:Subject:From:Date:From;
	b=RCVAGDNOp/Z8V9+1VWIA/aUwTxmZlwLXVxohBu7Qp/rMhaBFvdOOr4woVFCayFStF
	 Hjz+yJhOa4VrfIghwpf3zTxoAxEMLBBwbwFs0S9jXhUdEvXjDalXOwFlZK+v0pMESy
	 0gq6royPjlPP8lvfuN/CyNtZQn0sEywqLewgieoY3yqey9qRFZah5u4gGENH5w0gq3
	 Vnzl4wOnRdp/jOeaFB34Q6ds+BEJIO8yrlMPmoPMi7/CSwcvvHEh3KhIzlifaOPmlI
	 16CpTlrZhmK/CM7fIIbE4UCfA3FG2Mg9pmbUBZgb2TMZMy6PsrFxdEs23o6AE6OiTb
	 z5FaH6zkItuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCDC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818039357.20867.10713619706022800954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ae303179391d1b3c2feca9b81f976ae0c355e2232a424f4fc0b534bfb0574e
Date: Sun, 25 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748180393
