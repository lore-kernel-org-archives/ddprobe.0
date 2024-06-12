Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F79D145FE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718187503; cv=none; b=HMBqiD4hj8ZS6zBnXZ4x674/hVNAq8YVBpBJiiALjeCpQB57f0W32Hfy7tGUGdyFSlZQ0+xPy+UtJrfF0LJYHiwtlUQtMalCXSaAJIC+Rj30CMaxzLFu3Bp22xd6awaTTRq+SmxoT9wVtlEP+nYneL5e1NcOrOrFLRgGZ523+as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718187503; c=relaxed/simple;
	bh=ZIKKbtnqa9Jo1f8i/rsyKte3YUbnznigZhjUFLyxA4w=;
	h=To:Subject:From:Message-Id:Date; b=FcNoAzrOh8M4XDCV5AzmbufWG6x4Kso53BFXpCTkKsqEPW6AC2PH1saWcF0qqz6NRYpS6SU3J0ADFd4UM4iay/fHqG7HVkAa3xsMsrIg2wze3R6qFNelzFAKsR3GAGcRnFiYwfx+kZew9XxVnzSMetmkcCXVOM6cOHTXgUarZYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsdD1mPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsdD1mPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D411C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718187503;
	bh=ZIKKbtnqa9Jo1f8i/rsyKte3YUbnznigZhjUFLyxA4w=;
	h=To:Subject:From:Date:From;
	b=LsdD1mPQApWGcw1xygP+K39CsQUG0Hb1YjjafVCkwSjlz2WWDdimhO+Xb+Ypol/Oi
	 xpRACI/NdZZLWUt7prY5nhtEx9D1iEePLsgYk7NCY7iklGjh8Sio1PKxG5VL/7n8fR
	 kQKT9A9ZqHMboKedofWV4UsGhzIPuuEIfWj+BCVkiHUuALJlH5jcbw5APGZgbh7Mih
	 GPNHRR+VHGVsNUKE3S41A68Yfic8AP6BRQ27sFc/Ur00QJDWIQGx5RHfzvNnjo1hBL
	 Zmjezac21lNI5dtOp18wIz4VTEeqletmP+Y/48kpeL98sEVaFwvpNXB0r+LpkS5AMy
	 epxLxZAYG0lBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDAC9C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818750288.1797.15327427479051707163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec6733a59230b452d0f04e686e08054725d9c614e079711c49be08da5e58715
Date: Wed, 12 Jun 2024 10:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718187502
