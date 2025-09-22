Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FF527455
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758520194; cv=none; b=GGGM8B/HU8mOK+zb55cLyg1ErGqd4FPeUNGXHc2JTC4v7x8ttd5nE/0OTs6c51XALXiuxSZLzCnoeiERuL+ck2gSIQkTYg8zf/mdrQMIpuv5IhSBqyl8DmaPaqbiP7YLxyctRvD3JAnUM9m5IJ9CdQof/Uc3sL24p7hq73mVYP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758520194; c=relaxed/simple;
	bh=Ouak0tCvW+GW1KV2x1gEq1rkMNUMacKKOnYk102XTnY=;
	h=To:Subject:From:Message-Id:Date; b=VCJkLPcUUWPtpW/UXq9sd0uJe9oOLCqdwNOo9khJGhQ2bVYLKD3XI8UTMNNaZ3Ez5Ua46KQSq92bNSpszsYNsvkHK+ykosBkGwmK620/HxAW236dwHcSZLwRoDJZn2QaZbI6pg7jQqYzCaCOPzlEUdqgAxD7oz8mbkmh5omJBpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwrdhdHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwrdhdHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67AAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758520193;
	bh=Ouak0tCvW+GW1KV2x1gEq1rkMNUMacKKOnYk102XTnY=;
	h=To:Subject:From:Date:From;
	b=XwrdhdHqVJRv4sDyVHXVNLX0XwEe6gzDHCStpjqsOLgzMIZERMzWMYruyLiuH3X57
	 D/cQVgqkPBJdkjrJfqGawXQt7Q9IAHg9KUvhMhluI8ODV2D1R9orx1vUvCSIcI9vZT
	 /SJS2up627EI0nJR2JS1MUz/TDeO/QJFt6uvZs3+woVMVkxmsgZJW3BZjca81AcK3d
	 5l9EREKVeqRTyDKNUuWqrlhOGj9Z5aVXK+uXqwMiaA8zTmlCTpQiWzb9f4ZCAVdfUU
	 J2xrc+J2Zbn3x0iaC98lhPTBQMTXGsjxN/ZzPGIIfl6U8qGzfQ6WxaijGGsmpw4njM
	 sBWtVGPzW7Sng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE5CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852019358.9146.2675736016352955840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336b4c78b6bb7f1e89988c41b99f54014958811d166f43519b8f06f660c0541e
Date: Mon, 22 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758520193
