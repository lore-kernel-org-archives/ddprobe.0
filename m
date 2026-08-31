Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613693B636C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788216034; cv=none; b=Y7C1zx1YXWQjIeBJaSZlMk7hZp2DelAUmF9KWXf00Gr6VDVkwzc1/x0iCbZx/2N3nkNoB/47Co1YwH47evv+ncC9+BKW2xQJHCwVYv4cGbYPRRwpAFdz0+HBY5XjRkWnE5DCVn9eG6Vy+YmIqXEU2qY1tQq0NjTFSA0u1qjCFjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788216034; c=relaxed/simple;
	bh=w9vHRML52LgGHcW3F7Mrgam1kTaUPSNisv9wpc0T3bc=;
	h=To:Subject:From:Message-Id:Date; b=biAsSnKOUrl2QLs5caQRLCBXfS+ACczvQi+3s1wj1XldNWNmD7V/KP/8tA+YYj3RLD1ssMRy8bPAWu/6uzz1EYWXSKBmSSdn9ySsUId+mePjB3PRI2x0xTErEgTAB+XIBHKHgV1/hEoNbqoUm9XuVBJaZ01N+DUFQ9Ry3smW0hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzct3xfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzct3xfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C0EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788216033;
	bh=w9vHRML52LgGHcW3F7Mrgam1kTaUPSNisv9wpc0T3bc=;
	h=To:Subject:From:Date:From;
	b=fzct3xfRU6tEDZzi0YOQckJkHTINVH06vmOX3CspsjizSFZHI0/mUsLPBGqILDO5w
	 cTSgLUQ+JkF2Kd6dE0tGqG9zGQtu5I34U7EjLn0xM9lW0K09lzW4K09muOBzIuWVXR
	 HUqMtB/WkGF5PYq8I9KC/Axn/S62u2s1PzsR4sWgke+w9JmUR2FvQXx9L+GQA4Wq8O
	 sBIPw7EDzC8WSuMzZsUd23VEmpyNLa5wnvn1ZZPO3iMC5gRydC5r/wB8WlYbZnSMZR
	 NNV/Gk805SDLj853MrMl6K3prOsl3DXVX25l9Fn31nDFweo/5GRU0oS8G0YtF8p2tR
	 fSo9fy+ELL1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8DDC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821603369.915.11244015018330427191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea61cbfa1c67f5b1cb723629be90ddd88875812d34e9a5d9ae51bb725104e9e
Date: Mon, 31 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788216033
