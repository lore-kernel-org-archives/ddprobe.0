Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEF821CA00
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758148794; cv=none; b=N6W1CgzRVzGbr+wV0TNOXNXTDV21hryDl4So68fOc5OsHtHdEWG96jEjPKXYU1wjVdUpd9Qv/2bphPRtsvzRs51h4/jTTpIxcY4kp0AVzGOnOCHbriArhBLDIH0wdIQ27y15tCsfeGtsuS7aaPWndLx2GTmkHmjcnv9LhvLqDjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758148794; c=relaxed/simple;
	bh=XeRxgkNb/5tE/30i+vjGCsYzbHyWXqzAj90MmglIIeU=;
	h=To:Subject:From:Message-Id:Date; b=g6H99Z/8mOkA9mGbyUeQjkgLdp8+LrYRbGlxpAZ8941Nb0EboKWkI3SzP21nQBZf5BtOQFGsjlBEQ1oPG1GpZ1TdB1Jt7TEDTWC1MUWN8VllP48HEK5EiBF0GrL2ZqPAArbhz7mdB+/Jtzla6QJnH7Hx647rH7CWeZq4g+bI9z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBpyLqr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBpyLqr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4858C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758148793;
	bh=XeRxgkNb/5tE/30i+vjGCsYzbHyWXqzAj90MmglIIeU=;
	h=To:Subject:From:Date:From;
	b=dBpyLqr7nJAr5SFZTgVSTrzCW8M4y2JqoaBxVq2wPtDblznofyxJEDGFfHllvIp2v
	 dF7nmzWyJ1OiiezAHFXvZqWGyNVieKyCxAcKU6rxMzjZebPzfzejaUbU3ILaTfu9aK
	 8lCAAbTd5pSEvJKM6h/azN4K+UJQWpA+ZD1C3qPNwC1ye1rq5ibFhD/KDqm28jRyYr
	 zgqUToJ1NKUWpUEhLueW2lJKYe0xmLpW9KJ/0hQ/NtaBowr0tpGbn/V41H0RuLOafr
	 cO2EcuNj7T7H3zoM/wHCkkDFteTdDtHa7b1SOJdpVuqC+GvKHKWRNysVyT4ivvgMLi
	 j5+GatUhjDk+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA1CAC59F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814879358.4938.10657989101137762208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2d2040d63fcc1dcd1e200853d4486e2a0f78fdca1a9dbd0d48cc518171176c
Date: Wed, 17 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758148793
