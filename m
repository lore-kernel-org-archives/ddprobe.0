Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B69B50289
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715573543; cv=none; b=nE9cCnFfABRnwLz7JYpZySHCHZpoHXzhxJQgYZaTq0BIfGh/AvT4PTqfwX30Vv8aIMYgI8hOr5HlqnMOKZWCNYEqQjdE5TzFQcmI8jp81gOmolVjjyRQk6NU4KUms+3doxxbc+ngmWZFUuwBnEjUf62futbn0EIjQMGbJupxKMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715573543; c=relaxed/simple;
	bh=5gG/wtrMwiMcB/3HLdY8UdYAheCaJQ4FOHT9bSSF1xE=;
	h=To:Subject:From:Message-Id:Date; b=Mvm2WTaWgRi+6m6pJsxY6Om8GhOmjPGWZ1OAAV7GPn6VCtB+1CxBqdw63St4S9h49pUiykeNIxBN7kAjiy3pVzXMQ3Q6btg/reS9Uc5ZRWFSz3MikVazYO701zUIZ13x9uEsexzoHUKiKiBVFwUOL2lE76Akow3nKKLmHu+HCWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVH1yn9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVH1yn9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C9FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715573542;
	bh=5gG/wtrMwiMcB/3HLdY8UdYAheCaJQ4FOHT9bSSF1xE=;
	h=To:Subject:From:Date:From;
	b=RVH1yn9kVU3htmeR405/xmvCkDMjkym57ZTw/szM5gl2I11/6qaBY2pB/V4wEj70M
	 PQz+y0lFek/rU+PFKkG4EJ1b6rNz9IaZgGRGMBOCWyqSdQbRULdzlV3GfqeFg3ZQpH
	 /H4wWN2AiX0tAzzwux5UtG3XQPOkb1Ftkbtx5TBi7ZzSBVCC+uzKxYrNp7nCdsMhs6
	 I5Hs/AmL3oO0rsftPo79P7e1yznSx8FpNEKj2ESf6D6kjKfTNVEew928NEImWJ9bA/
	 3Dx+bu7oJKxWMK9nIBYEnhiimbAfrf3tRaNCAPTB5BaAdk16BbBpbzjVFwlwLFZmtv
	 EYJAVM+bn0HTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF00EC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557354281.8112.2740842005222632459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f25a98c3df71826ad4d1edb98e8b032963eeb4480a150049dbb3dd3d9624757
Date: Mon, 13 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715573542
