Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D5D198A31
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734634554; cv=none; b=b9TIcTxqfelRC/XoZrzV0enBEz5W/1cHhdJGeUhBK/czuvAOKPJZ75e/8alYoLwJgdIdn+fmaLNcC477yh4lq1/T7YMMwV0kPlT8wmcYw7FyYfiIcZtJPUD54DY2djpsV4dYgUDIpcTg9Jpnco6FuKsOu64RgiL0DmbUT82C+qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734634554; c=relaxed/simple;
	bh=BG+XsQsU2LuxSACp2okCEaommwxLMXEtuCJRu54ocEQ=;
	h=To:Subject:From:Message-Id:Date; b=sExuy1TjZalgZzRv707mST3eNGaNup6a/ZL04rPep5v6wPeHZtGdiToJ77tdOMinH/vHuFB6SloG8oXToYsEzJ9+TEVYwSmqL4kk+VdxRz/OVk1FbfncgLgslS+KN/ri8O21OWLzYe8PhsochmnkyCB4vic+Yg8XSfrkjP5Shgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h03S6yv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h03S6yv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BDC4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734634553;
	bh=BG+XsQsU2LuxSACp2okCEaommwxLMXEtuCJRu54ocEQ=;
	h=To:Subject:From:Date:From;
	b=h03S6yv4iA0ioygjF5GgL4qq6/D3C/KJZlgAtpCWZkQk7mtSXzA0ahNPt64z2xN+r
	 mPMpxWyhiAPPuskdLnapXO8DyCocdFKWa7yFyD0+ksupCDtZ68qVatghzEdBKlKGmh
	 hOcInHIxrDDa1giSg+DC3XEbWXNVnbpwWXLsolN90JjmHTtl5pSYzUYAbg3XrYWd7L
	 C1xMKv55BZS0eIay5z4ZGn6r9N7qOe7sbzIF4dBtvHV8Vh4jbU1HhCCteywR4F1a+M
	 s4CtDjceHLoAGshMP+mvIyAf0dWEJPYN9GVdgYZ316gZFTTCKBKwKRlNUJYNnIwqqK
	 1OiPgyzrwuS5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9539FE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173463455360.8456.6928340076574003934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034e78474af134f6e86ff7901da483da3e6f9a458d118e4f4146e5f5f8d65b5f
Date: Thu, 19 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734634553
