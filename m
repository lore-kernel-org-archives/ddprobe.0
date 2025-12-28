Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2807525392A
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766898834; cv=none; b=uwodmN8NENFIt8ifour1/1TwiV+zj5Ek6xVXVGflHgPgzHSiZgxEVwQe5j0RCGi1/u2Pyy30T2N0MKPj7MH4E0KD/5An8cQo9bP5eqE2SNoinBjLow2UyXwypY3Wyi2AI70lhHlH7l33T7co8h/xxIfH4h1ap4+FbI0a2DZbPPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766898834; c=relaxed/simple;
	bh=zBPkUijwob3Jszrs4ueoWwsQceAvH+fFzbhtyngjCys=;
	h=To:Subject:From:Message-Id:Date; b=fcJX+pCd3E9slJfWGSUK6ER3GJJqncIooRy9aTqdp0RlWB1YgufbZXbfKgWB2L3yNXYTP1727N10Ti2E2hH7IiXgLW2U2kx0cYKtkZzba8/DOAS9fkpFgwvxQ+24CuHv/9sOsA0g+wexoDYJA72Taft1AvN/8nNwLqOLQ4AJQME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqD2fuhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqD2fuhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766898833;
	bh=zBPkUijwob3Jszrs4ueoWwsQceAvH+fFzbhtyngjCys=;
	h=To:Subject:From:Date:From;
	b=eqD2fuhIwS+nmCG+0mF2bpuWkO0Meovomkj1gjS2+O7gC3yUjlZFuHEy7qfAKhQQz
	 ihKtv4Yy6fyObzdgonMntD16lTQkQoM0WkIjFyOtCF+yQ6k7DFsAT1tgT/z37o9gcK
	 L1dF0jJpYVeXlcH1FzsEfDfi3ScYs1KZX/C1PSS7Plutf25M9byYCx6YV4LHAtYwiA
	 QVcKx5WPQTRcxcmUL8mBXig4FZ8GRt9QMv9KYQLMPhodzC+KPE9Wo/l7PFTFZ1XVK2
	 zmiMTXEKqFeUGssq0YaWzQwPhDrFyavcoULqBORNreZ44eR7TxC9ggInrTQ1FD0pYa
	 WHIgq0NzMw99Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C12D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689883358.1983.1487291884440225909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3ab719c46e74c976f5f16a60a167982c32b5d47fbf3df95e0f00244aa9078b
Date: Sun, 28 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766898833
