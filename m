Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5889B4F1E2
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718989343; cv=none; b=VC1gBSYqVb1lS38L8Bc6IGKvqHzQoyXZRVT/Jckeau5sMOhGjXdRcgFywawPs7rQ8pVZt1oTmbtuYlW0sRObXUN0Zzle266g0/ja0J3qyq/YGbI35Td0KFIkHL7bmrnTDYpkdiOkeyjIaBS0/6wYDiPq4qs1yV1lmG/WAc08O7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718989343; c=relaxed/simple;
	bh=cskS//EfjyOnc4IlBvZ7uMbl0SYivWLhtMU7HMfjmVI=;
	h=To:Subject:From:Message-Id:Date; b=YXXSuC2UK+ePOy0wlA2rLMVQ2LUlkP4hdq7kOXTqFu+z4qme0cGwSsXmhnIJHkgw1MSQoH/LRLf0L+e2CedPKyPd2tkIThN9gSOcMDfJ/FfnNuai/QZZVCIddYiHj5YytpRuf/nI3z7h9WBsq37Ijxy8Ag4DfBdaNLXtfj7U1GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJRSsKb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJRSsKb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF06C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718989342;
	bh=cskS//EfjyOnc4IlBvZ7uMbl0SYivWLhtMU7HMfjmVI=;
	h=To:Subject:From:Date:From;
	b=TJRSsKb8D2aKer+Br8xpf6RGmemeCEC3yPBVVAebYuAp4op5r0ImiOIlso+WUBL0E
	 yQZsxFyoJtzKqjGYc1a0oqPzYhPXKkiHSsW0yCX0sMoMUaZ13Wo6eZiHUpYwlfMLMx
	 +/jj906VeFEJD451s9Uv4mdhBHBJ5Me1SjxLV6qgVtz1lrv4zgjFmbFyk3Q7CW3g93
	 XhAfD1kyBspmGFqUj3/GjJqJqSmiFTyyd/rKv0JmDtb/9OaW0rv2ncPnwPbh68Bk48
	 xLBlyvZinOJPEEsSc8BD7FyDLkMytBlG3/F78xg/TVuTXc+0Ge//yq2hcu9/GXy4bM
	 sVlRp/2gM+nxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C86C2BB85
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898934280.15563.17503339181776278379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aba78b5f90c4e13dc38bc5d1f0d979e1dcde286a42b05c12bcb93c97e93a1b
Date: Fri, 21 Jun 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718989342
