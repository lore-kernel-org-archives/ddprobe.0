Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702EC183965
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717065263; cv=none; b=GojFmcjkOBTx0iURJx+2ZwPLFJz4SY+2ffboVu9/WvQmiYBhutnqITYZEkHl26XoOEa6VsW+1SpFxidugCwiF+m6ZmxlDn5bQF267JT0mdegDqzBNlhKp4k96eLWYcDDbhFLD9y5iqI4FYtheScRkRhrGjcb8dHXFVbU9wwuh+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717065263; c=relaxed/simple;
	bh=Rb4kOy5KGI5AV6du8cfvg/aF+KVNoN6zkMkwkgWxX3M=;
	h=To:Subject:From:Message-Id:Date; b=Xc3CH+/3HnYGk8Ho36IS7qp6ZpabQWBqIIxpRTEYR6XStu1aURzoO20Ay1gD1biDCSVW/zUGRO+SJ2muFFH9PXa7louxHHkJzLHVVHNYEGm3Ovu6b1cIDCIxTP7yx/ul1EhJiNjVL7xaBLJmNTlgI8wK+r4TtoIc+fdPquu4NxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pgd+T37+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pgd+T37+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E4BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717065262;
	bh=Rb4kOy5KGI5AV6du8cfvg/aF+KVNoN6zkMkwkgWxX3M=;
	h=To:Subject:From:Date:From;
	b=Pgd+T37+yEwM6F9Um8O0lZE131oSpdk+/VDZnXb1tEXOT0t04vub1vpVHZF3Aj0Zw
	 ZZIHv7XrRLAZCuKCLs+SL6lnbUh2ugCkRPmCK/Yo2s+NXbSzkBAEIC3+B7245GgSlk
	 UE63iXu4kLBnvm5qBJ9qk+oHGk+a0MbIXkn3HznNTM5BBOFPslZksB8vhQqTcWFb63
	 JpLucjEliKcQc+BxIVxofmiSE7VnuxEO5CzWai/7Z+CjPEyhwfyJ0qrPfenImC4s8X
	 e8lO6xHVAYHEr92ZdQTCtgkL4/h3REQBTPclhm9f+Gm9C6f4Gxa2MKNIVd3u9Z7x6I
	 eOlzty5VPg3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6705C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706526277.27137.18327361402669895543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d085d8e96e0fa3861113f6188725d37b3b954ab3ec55c4ff8b5f516193de331
Date: Thu, 30 May 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717065262
