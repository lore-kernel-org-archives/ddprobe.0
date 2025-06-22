Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE6C13D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750607394; cv=none; b=c5dluZcFoa7FWsmBNe+/mLosVOglxB0tDbMreW+LzpXUK6wdeHzxGx8eJBiXda6tq1hqt5sXBSp4TR3prFeIQVCITR/y0JDF0FEF4vhtDGkq6BEh97nXReB21TW3MHZcSmOGyoJHnt5X6qIXAkvDRXrPuZUe1Ye1HQCVeEoZotU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750607394; c=relaxed/simple;
	bh=NG6bmQsMxu+nbxuh0905+hXuVf5A7+eHzb08Xe5ZJe8=;
	h=To:Subject:From:Message-Id:Date; b=bVu6RDdiyLHCQ4JrGlK+AixlyhfdZNEOlQfj18Dcg3yZWRP+TdNl+X/NouFYiQjVHfAsgIUgvGLk3z5MJjjRm89LV8BQRpjuHMYybt5WyEfOb0mohbyAqDqhyCk0FiXuM786brpAuC31B9pWYKdjYaMjFTOj0QnYj5oHO5zXeHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuRYOAwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuRYOAwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3504C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750607393;
	bh=NG6bmQsMxu+nbxuh0905+hXuVf5A7+eHzb08Xe5ZJe8=;
	h=To:Subject:From:Date:From;
	b=VuRYOAwFGlvG2JkRXvmXuBmGwX3nl0pBXVU3Ca7jXJ/cltjlEkq9RmD6gTKHW+Wmt
	 raITQkkpz5uvT2PgNOW/p9SKQJgCcyMJSTvihcVVwSH8PpQNgeKH/VzO2/PI6hM6cf
	 M713a38LH7y+nJL8iJGr7477MkZjBoiE7UJgYD67iSNB6oJkQ3km3L3NX32OwR+pza
	 IW1wnDL+dJQzMl6lRaYE2UGDUrHAojK7cBYRfHIDfjgzUahmqqX2qaTF+Ce4cDZwdp
	 g6GiCp6lYwRV3xtI1Fn+L6x1V6OkwxX/JDkM1/ZvnnoManBvHKzQp3glGSVFvNUvQh
	 T5in3KBKi9jDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90526C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060739358.20450.12312617361553633082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c32b3cbe11ade37e1db5c4fdc1793c283a765a6bb764f0abbaa5a01268243b
Date: Sun, 22 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750607393
