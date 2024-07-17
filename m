Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB3D1C36
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721257523; cv=none; b=NVb2lqupPbS1/8I4GFqyTNvbJWnnzoYMj+k+GTdqWMdwIz0Q3H9y0sEIh2ODEEW6F1e3CfEKThsoSBB+tYgJa/ViD/jq/NPLlm+BoW8ApZMQ7urevMsYCJDJRYKvVreRwCUtP9GIlXJy8Y/u6asTL1VyEV5Ux9qTz81FBIWUrBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721257523; c=relaxed/simple;
	bh=o1x/HcIPQYIcaSP8gpG4O3k7ZygQMSTVaMgxRBvTKRo=;
	h=To:Subject:From:Message-Id:Date; b=tUk23A2TbF7Jel+lkQWypRCM0G6stusU9nynX7y43fxI1wHr7yx2680aYrFtbA6uoet24qr6wwMDjtUFnsDcWM3Ri1QlAQu+tv3Bbo14+WvuC15efcYmf09XGPTbaxrbRodQVHYZsfWjaUDNATI9bZWwf6cimRYdzFaivtY9ukw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqvN2FYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqvN2FYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1ECEC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721257522;
	bh=o1x/HcIPQYIcaSP8gpG4O3k7ZygQMSTVaMgxRBvTKRo=;
	h=To:Subject:From:Date:From;
	b=tqvN2FYZ46NyLxyRdNmN9SFdOayXwpO6uYwlnSq/u4Ko9SvWRC+K+OJCnqeZ3Y18P
	 qpL/q1XeDONCVHy1TXfykxbAmTkNOJBzfYkAPZi+3Us0bW6ixrvyt/bWGwhb4gRDGp
	 55KmAVvj2lIGVym8YjCV1Aw5ulnukvFb9qx+kQXb4AQ4uxF104ag4BY5QJANEeVTzu
	 t7mH5UcqvEETWrk6KGMeZjbAxRZy1C4/pVgkSWG+68Qmji2Dp4h/0LKY0rW2eq8rir
	 cLVcp/dO4RF9N+u/N9gGPAXZJAC0ZoYd2R8o+luA7zM2ZplViflj5EIANtgK2fruGB
	 XS8Qvn9idOEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA95C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125752282.27406.17574199087521053098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd9fd1cab28db4757453791886aaa4614be8b306f62cd4409895e4b5279b8b6
Date: Wed, 17 Jul 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721257522
