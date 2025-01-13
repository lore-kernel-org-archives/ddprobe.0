Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC711BB6B3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736792754; cv=none; b=bTGvrWW91EJAiP1RRtM80GBI7LDN7cMDul3KuM6+vOIMcjRV6bsbQlBL1cMpBjILbkzt58QQ/G6d4WLI/ljHGCLfTofm59aiOO0QSFDdWJULukjgrFvF1FbKXeRWZCTs56CAvNBfGyFodW7ga8IHxDOLJGDP7Nr++RE36JANxpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736792754; c=relaxed/simple;
	bh=G2EKCTJs60zGyaYEVsoMk8FLik+9fTjUG+hLR/41U/I=;
	h=To:Subject:From:Message-Id:Date; b=p5wk3q4JrxWSW+MqYHBwk4sCTLgERNDPbNKlMiNiOD3ToJ2wkyMfs4j3dFgqLftBhYTYp4tT6an9N8dhoQTd+Q9zaTgMFf2UE3o3RzLbqbpFmysjbul5K5j8ByUqUHFtnYolw4aUnUEPFicDa5gaIKZUqbHL8cKQz3lLZHRKiN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrQM59dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrQM59dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8002C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736792753;
	bh=G2EKCTJs60zGyaYEVsoMk8FLik+9fTjUG+hLR/41U/I=;
	h=To:Subject:From:Date:From;
	b=FrQM59dZQvl2gUe4LXaTPB41Y9FpJfduAP0Mf+xbA3IIKhaULSTfvFdCW2JxRr324
	 7NwPx1SfOReC73Q3dbA5IhKbTRHPZ3+BcbQFLxTYIL4LnCzCYP11BSCYTJdazeGayo
	 nzl8mbInCuB60DfDnCl1dmCSyRenrSIUiEUpZHZbfHBggAccKL/bSRkwaaq1x0ypyf
	 Qr4Db/jJTE/ragEYwUVKgp+FClOeJEceCq2jbG9Y/khZVBy7dCKucVehG+fZLko42E
	 xPGY/buv7PK+/JTM8DTICH5XvFegiNV+MIDG1AJJfPWj74X2Yfeo/2pu0uDacY90XI
	 Jz7N4RIetvVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C682C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679275362.23898.602824900817119773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a705aa7be1d0decfbe1889840000b6e989332b09bb40a0a898649ed62135453
Date: Mon, 13 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736792753
