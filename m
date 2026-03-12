Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1002438239C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773291894; cv=none; b=aGz4w8LDk1eQSbx1Br8Ijup2DUyuPLaRppx8Q8Q7Go5cNVBzMEwY+gpTodXZiZPTXNlhw67CSfIAkyAGdokN+F2Tbi2K5ksU4bsK4Tg+4a4COdQlb+yUdL1FasFa1tGr3KISm5IFgqx2IobDHQhIs7VnROVzRhNot3siT/lFUCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773291894; c=relaxed/simple;
	bh=epQ+3Q2bXM5A+qWijHCwYlfYVZ9ywPqUWNoKVCq7+CQ=;
	h=To:Subject:From:Message-Id:Date; b=ubzXX6xFSuHbLOeRMe5pm82B8CLMfM33xx4+w0LjavqsCpBcoWWnF+f6Hi/Uk3zQQqXf6Zusi2qlPI25FnJTxdf7JCZtPU7oVVKnFzpUzVauMvjrYABMtEPUMNjax2oXbxgdAx5Vc/+ZubgfyEekNZ6xNXLpTgAsHFihq4LNeeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4qqOcE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4qqOcE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BD6C19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773291893;
	bh=epQ+3Q2bXM5A+qWijHCwYlfYVZ9ywPqUWNoKVCq7+CQ=;
	h=To:Subject:From:Date:From;
	b=J4qqOcE7c5oEzGKjiKPLK1K7yhYrxCSePZIZf7pt1Veqhhwa8XKBcCuq7t7qaW6fm
	 45KQwXzj7YyROtkqbMHMXkdfrfg12Gl/QG0TSr/GeFQldstgZ7XVLq0gKIDrK6uzO1
	 8q3LTDh3lJRPLRlHopOuXrR+OczW6PTrM/S19XDy1rfZlmuppTRmqQ/EqmQ+CNFfBi
	 OV4d+CMLLAhURxpf4QgL/UAb96qNPSbyao+iP3isdfX3u8tQlArE2Z3TBhnEaObHBx
	 a6aAUbu8vUe2eLmUFTHzNwZ848csNlUr2Ck1KfJPrt3jilrgmPnECBqeSJNLibsmM9
	 uVh8M3obLIAcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93047FED2CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329189358.31168.14681135635069609259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a82dcc3ec0dd9726b299b5534e9d00720603fae0998eccd630fdf97c652027
Date: Thu, 12 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773291893
