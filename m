Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C3A38736B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833234; cv=none; b=LkgnsZAWkaPW4/Xik2BcgDX7mX1gFc9grZOCFxzH5vj85FLeKA6mflAWkQwBl/8VCh281DCg4DRafaIDb6KjeZaaQCiUg1TusEfcRTkolmbY4KNpdZvu1XdQb5suiiFAjLxwxq6KlEyDYiErYld91kQPIYiig83LNP2npYyEkGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833234; c=relaxed/simple;
	bh=79OoT/fVJojOQZDs7lg/bvApI9b6eqABEaZ0LrXcw+k=;
	h=To:Subject:From:Message-Id:Date; b=uV79FqD5Sqh7/nV0iGt5vybe/Sz4WHRVFnI2hBHrDf/SKXvoNzLcxcR5EtzCrAdOKHuIcHpBvLS85qwTGeFQGIgZukqcY+Iv9yv9Z2kth0OTpKejYMJ3qbrOPC0IAQF/QX8VK+5aTOS2UQQv+m3nk4Tus3BR3MML+nnHMhbtisw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwGQlmK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwGQlmK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D803C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768833233;
	bh=79OoT/fVJojOQZDs7lg/bvApI9b6eqABEaZ0LrXcw+k=;
	h=To:Subject:From:Date:From;
	b=WwGQlmK5A6pOWa0znTa5kLwTEZ256Yvtx33PAePzycq+fj5KJ6fNGvHR6TadxLhni
	 hGQ13oS2ZRNu0uwIVvMed0eyfNKDPKYKSzOXxBSh+A+gjILn9Vyg0BciIyy+ipR1YW
	 uQ1MJe0ciMv39+OuQhBXi1Ce7r6YKnYDEW+swtk2nQPZDsjC39TQncCdt/pGsIyzwY
	 VHvUgWIfkVBj6sexzNUk8trSWan4Fn9OBs+jQlen8onqFszK9MAbxeEOAtbIB0DiUj
	 pME1dNfwve8Pvfnle+cPkRHV6KkXTDc1NuC8NxSk9dEBILugWjnTUq1ugsJVjjaQnD
	 yGaOPVYUKua7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046FD29C2D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883323358.30265.13469634324254978582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a603c9f49b4b9286ec3e7258a698435e5bbbe2f6e93fcdc0b91295831bdf17
Date: Mon, 19 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768833233
