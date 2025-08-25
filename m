Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4852EA741
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756121994; cv=none; b=HUYcXCPKnbqhU8pH+lNqGJozyqCmiEP+aFKjyB98APmnjZ7M52ZgU0BRLevvuovb9hf8omNjAEaqfyfqwUhkBrzEre8YumWiwXeRUELKymnB09lNk78tdinNiPWlwJXsujENAeD2DK2gh0glFMBIw8u/5Fer0T2YMXVT0mOmkyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756121994; c=relaxed/simple;
	bh=OkZl9Re8PMH3rQermZN42B/nBX17YgQ5dZmly1U4exk=;
	h=To:Subject:From:Message-Id:Date; b=XQ07eushFcmIfXA+/foU4ts/rowFSECzfhVZGJGNZaZmoLC+vDxfeeqRw1B+O36hi/f9rGLdrz7QKDIaQ6V4/8hZe+BjQhgPTLbCkz+gHh/9rCODTB/IVmQRmyzsCc+xkb7FjeS+ZoVSRIMWh5DCwi/QxvaXQ8GNKrNVlCHBe6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK4TTD6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK4TTD6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F85C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756121993;
	bh=OkZl9Re8PMH3rQermZN42B/nBX17YgQ5dZmly1U4exk=;
	h=To:Subject:From:Date:From;
	b=tK4TTD6QqFUzc3rcFBubuMWXQlbOUqbj8aQcjS38+7flXxXxjpM+ELlrTWzvTcLYw
	 Zrr4LNyWI+wef1yanVS13Zw3aXU6ZFKzSwt4XQ7clzrG+pfI3vSZFHvSOYgeX7Hsr4
	 dMzn5C2xDc19qJ4aEHbuh4eXcNN6pJS1/X1RWbFwf3dAUKVR/dpLKVfB3w4we1GkKE
	 P1Imt9tdYwHiEJeEiqO0SRi6b1GfroFNBlSvyu0I/83J0Tpqo7vJrQX1HXX6sOIwnp
	 4DnXUrDocnOM6fOYRCk+00OBFGzeSoIyKmhLDycFe4YvAcdA3UK7/fxbh9Ni9/4gUd
	 6O0tUnMAAJ5KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F62CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612199358.1887.4340190905780749739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8f55c00c97732320ed78c2bf43bc7ad0caf7a57c8776689b2105932d8fc0a5
Date: Mon, 25 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756121993
