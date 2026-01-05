Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83EA339B5B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767618833; cv=none; b=mrryuMdy5fRRn9KmjS4K0ueN8jXejvAv0Fte98pt6B1HtbD28L5ldWluZNF9zRkzOTCvXj2XNEckKJGhdkLEbfbPjzaskqpYZGZ+I3YVkBzFjMi3Tit5yCwTqBJiQZ89IOhPNz1YJy1jo6vauUaVWzJzGxIJwBOznzc24UwPfNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767618833; c=relaxed/simple;
	bh=WB0a2llIjUAdV6ek9lxUQGKXx0mrWulaVVAzGCqj/7M=;
	h=To:Subject:From:Message-Id:Date; b=GZWOAom1nUwlPzJ8Y3quCGBoeRt6eOVITUfE/zrVhxibPLBuo19TnBdqHgYpdms7T0mWWiHSIZIHlGihtnpKge/57rOoRyGw6qmM/B7XzQMgHrVGsEe/akjn7ZH17fMDme1zF7jZPzrvdumDtNGlwHuH7gwxWFH5le9+U8dA3Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT1p9OgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT1p9OgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471EC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767618833;
	bh=WB0a2llIjUAdV6ek9lxUQGKXx0mrWulaVVAzGCqj/7M=;
	h=To:Subject:From:Date:From;
	b=VT1p9OgTUYf9CroEtgJ5OANNb4atGMnd7op2pb+ReGMkdvFIeES3uOs8I97tVo1Ob
	 k/isBqV1ZxmGPC1s/U/wVgaQ9ZJRvv5If7PxVqVOU3dIRbvGw7K53KjWe+xGbl6w4H
	 Mzd5Oxvw6t5DNMpQYk2hbtDL7I45AoLujZp+VFEpeoxXum4wHp6RFdgNq89DN1HGex
	 YVnl2FrYCTGJnP42+MsXz3n4O2Ry7eQWS1Y+O3GgwMLppLbyr4BgCbkc5/3ccwyDnJ
	 nkWyC8prxmTfcuMhc/F/KD733rVUZ2lVz56VyX9XSjEg4bEifqOg3qItPHerUiR937
	 QjVWNc0wIY6gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A47C79F8B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761883357.5286.4436956913634393424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cf88ade7e11b9617990afb2e30820703e05d1da8f7222f0155832d8862d67f
Date: Mon, 05 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767618833
