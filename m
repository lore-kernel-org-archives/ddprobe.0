Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AAC34A76F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777269453; cv=none; b=YBfcOrcdERqaT340UYdAt8NHpV1H8c9BUemPkjA5Zn9laKE2R0AgqgyE5dE9ERC9KKcZ4W9EE7wBW+piJH8T9ShcbMXNHhWVCcnRW1whMUxneza5qcB/rZLIGSsbgPbNcz8u8n8uGX1bFxjYzd3Fc07S9no0DsL+zBYr3zJgjhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777269453; c=relaxed/simple;
	bh=7fFn3K68wbjUjFatFp4S3F37xQgj+SmqcYdNGWv+wE8=;
	h=To:Subject:From:Message-Id:Date; b=Wzs2bDP6EM3bc1c6ljf1RcuaJ/i9w9Xv5bjvDhrIESH9vcC2cYhEEyecr9OGaCk3kNUQjQzwvuqh38nqmLGwES30kVslIKEyJA8lYvcxRNvG7TuAL8XSQFO5/S10dg+7RWsI9WfjGsvY7LZRd0QFPLImbIFQFCxS6U+fb4v+jH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yl2U3GbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yl2U3GbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B978AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777269453;
	bh=7fFn3K68wbjUjFatFp4S3F37xQgj+SmqcYdNGWv+wE8=;
	h=To:Subject:From:Date:From;
	b=Yl2U3GbO+ma0ZcojqoByivqV1CT1vdouXNQv+UXUoL/fc0kxgWwquAM63/+N99mWj
	 5ATbp7e3SS54NqR5ydPKT+bgomg7TTUSBKOSvL+LG7liwpz0Ug6cWlFfjutOxloaa7
	 Os0X27W/k4WVeeAucnzVIDET4ejuGToJ+KxkOei8tShfFq/dAsXEkPykM/qBwwbcO4
	 I5xickyOkgYJgPu+eixzLnyvgrr+ukg9kdcjrx1Cq9KDFjXSQ0GfnJe4qD7rJFJiRx
	 tCFvm4TV8Wt1znRHtNsMXYm6IrlCk89eIMAG4l6+DjZSv/fl2z1itoZgGxMcwywP14
	 BPCQEob1uTeVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA239FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726945368.12502.3439797041264720194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43878fd22fbee3e9fc79cce75dbb4375dddd5829dd352d9f516697bbe86ee421
Date: Mon, 27 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777269453
