Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778F348BD4E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779120635; cv=none; b=FtUINzX8Y8+kfRU4meXJvB942/XKC6PmV2DaLi9NmvWa/tk43+xkmPo44wtZd1RR/3ePiRZnZIhsHq07NZivACAvM8iQtZgdvApcGBnMQLGHgGQ3JIcv8nx2oZfcCijFM+BacJ+2XZZB7huRBk82ZVCJgsEkcP/yPZDxzYDeOgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779120635; c=relaxed/simple;
	bh=oOgrVITGkuk9cr4Oj13zHlKNAmqcssCHyJTR8U3LOxA=;
	h=To:Subject:From:Message-Id:Date; b=cbsGexn3TVSSFQLaorKy3sk6ECew3U39p52+N0i0J0g1DciGKXBxhmMOMhtQVvHnLEUmi2i7EUA974YPM4hLb1NNMkJDjJPy+WH/lbTibqsp2CGWjQxj13/fPbNq1cjqJ5RF/ULI8atZ9dbQzbcAUsbhNFGd2rbub4uZFo00L2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb5jLTws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb5jLTws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFFFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779120633;
	bh=oOgrVITGkuk9cr4Oj13zHlKNAmqcssCHyJTR8U3LOxA=;
	h=To:Subject:From:Date:From;
	b=Tb5jLTwsWlvUpAcnB917y8dCDAitqmF+xS6DQtEitCrvbNUPhVYjHIzCungR3cAhC
	 pKi3Shaghxp0eWq6HFhWz7zEjqMCzKHoiNe+7BsHK3iMAnMUxSWgLul+9l7TSvOWLC
	 GE9ggoHwNWhlesmMZPwnm9OxqYHXPJGZSmgtIv+49EGI16ZtQTKVIYQy8Dy0ZbgQf3
	 svsGBKy5FS9apbyXsJvkVEHujYo8YoeEHOdhQwOQ4LFwmQbqZeWmwvKbr/5NTpnexI
	 C+CIL1faTEpblPYrw02LrqtgXFSBnXBrJ74WYowWIv2VT3HNVFmBj43L9ikwvUHB4U
	 GIJJJTY525Q7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84C3CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912063374.3898.13742285860970680839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb015db94490f82bb9244d8963891c022ca460bb78170df479d38f2cf612ee8
Date: Mon, 18 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779120633
