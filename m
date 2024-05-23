Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3586D7482
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716478403; cv=none; b=bfiRSHuFwNmEkutGait/PXc+WL0yW3gMxr2VnF5ce4K7PUM85ZK8ZMYdVvdC/yD1BFNC1YGrNPJhGq1M5AQb8udZJFFi7c7vwfoFcfygnWYRTfvFu6YPMStpKkFDscK9kGJzrv3O30MWitB5t5wEXpdV7LznjqefUQHOjRFPq7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716478403; c=relaxed/simple;
	bh=OKwJqPBTm/9fzZZcrgbESxTN0d5ytZIhlduOcdrbrAA=;
	h=To:Subject:From:Message-Id:Date; b=ehh7ODnSOugk2/Dq4dJEn4UD+0pb7PVPEmAJEjXheBaTqEbs8Mv+C8QjxDh/0/rGSD4CHkaD14qLWISAVIDwjLEGVSHAySYhZr8gQ00oM2qyAhAWjVnS49H49kjp0XGSs7RntBQiDlQVtUvTa/xWkYI8i2E7SjZAG6HnklWQmTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXEohwZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXEohwZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA46C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716478402;
	bh=OKwJqPBTm/9fzZZcrgbESxTN0d5ytZIhlduOcdrbrAA=;
	h=To:Subject:From:Date:From;
	b=jXEohwZ86KxX+ScibEwOt/ZKPDyqiW5jw5qasdSU5zLcXBJdVTGfkVxU75X2OW/Uu
	 2D6ijOTiBoSzEu2ocL90ZsphuXEDj04VzkP82pSpA/gSua5oGhHE3a+2eR9NQKLyRS
	 KtwGAxsN/sWhJ2/u7N494sI1kvdEZOtYXjBMYsQq9VbVxzSw/w5htya7ZdlebqnlI8
	 c4nZ8fP6R/ivV4I0BhuHD1qbr+BR4KJU2UV7EWNM76tpA8NcRehG6tiprqqRVZRiYB
	 /fkh8uIq6+b81rQ8felikwlxlhrgKb2QAQCWkt6nzFYtzYM0buW2bvklUBSW5lEmC+
	 JFquzhW4HAthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA72DC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647840275.15014.5637233641460660664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bdb4e75e2b55a80e24ce310b31524fa1cf3addc4636f7e099fd84879b57a47
Date: Thu, 23 May 2024 15:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716478402
