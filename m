Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272DA19993D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737408954; cv=none; b=PxBsALOHfJgguzjDZTgxfN0ff1O9yv0JzW33Free8o3WoDWtxKyP26n2Wpb3AdANP0JUeARdqPKmplDDl4lf7bAVYweH6j/d9P8lDRsWMLtdGyNClXEelNUgZWeXrUYApDGvXfDcCLJrdUHd0YWiTSvEgod4JMaO+E4Zpd7ydw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737408954; c=relaxed/simple;
	bh=jbTENLozN0khANe9f3nVLBv1AGVySAZqM2TRECtZexo=;
	h=To:Subject:From:Message-Id:Date; b=qqLd8BUIpIAyShKWIVzz9V5ufYCYwhFCnac+buhB6+KFcFvbSLgG+zLqUB4cJkrdPAXKvaPkHtn3aPhYDX5ZYxYQZqaZE86z0tscHzpdvCmjhhCAQJqiXSGIiIXZXE6P6nn0hclJu+woWJhi3RpkQABNfNZcRdGJp5Ac8gboCbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Okb7gvlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Okb7gvlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737408953;
	bh=jbTENLozN0khANe9f3nVLBv1AGVySAZqM2TRECtZexo=;
	h=To:Subject:From:Date:From;
	b=Okb7gvlMUdzQiUA7GDrLfH3sD8vX+RQ+qqH6OXmQOwAirBw8P9hyqdu+qvD7WrdzT
	 nHEJzDQWjbpzelbRehmOL7xsN8Bdl+Y4Q78OM2ok0ink7gNM+M1ebLMrA7dt3FhuRU
	 prjaC5C8LaHvffwE2nXdRDsF1evzHBGybm4oe1kOSpBK47kLPhbRg3jcZ/HL0b1eqU
	 QFcWTg6BzeVi4gpjWkxyKyMcPD72ZE4xEJW0Hg2W9pNtMPq8c2OAjJnO7H7ydbjzjd
	 yxSXl+8ySB2i3QvB/gzstVTUDodmXqI/aMfKRAzxQa1jdpHbWt4AX6t4Cp8jYIwiPS
	 wsOmFpizYdqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91474C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740895358.8016.10122237411278620630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0d95c1ee55c80a543cfe923ba40c4f409587daf2b527d3d0bccc38c488c385
Date: Mon, 20 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737408953
