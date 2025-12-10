Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B612C3271
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765394574; cv=none; b=t7HqO35rvvIJvxMAZQWvngyvFIYrO/gwl8ab88w0MdGrSBDPBc11aFu2pOk9NsSMe0nedHb/6779lp15HehoYXf6a8RIF71mgmxr6dC8OMhGx1ysbtd4ouQrEYDeN+Ov/N775z7hF7hCLkSk6YkgdZElEen3id6qpOIPVrqsMS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765394574; c=relaxed/simple;
	bh=At8tQntWtMqHJ6peHQHHh3dkRAK6Xr7ZMfVsx2COHG0=;
	h=To:Subject:From:Message-Id:Date; b=B0HsiC9j7r4WNmQGhl8vlhWAbGzxVEqPcO9/dEMGk2Bf8i47J21S0dgKTcIV6CR+Lwk0w0U+grrE53gVE8Ho2XfgPhTDyYZITJWFbeo4KRu9+6TG6XLVS3E7YP1nB9OznG+obCzzyB4sh0fKkl8tj0b98/FEMXbQw6plj06975E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/250I1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/250I1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0C7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765394573;
	bh=At8tQntWtMqHJ6peHQHHh3dkRAK6Xr7ZMfVsx2COHG0=;
	h=To:Subject:From:Date:From;
	b=e/250I1+AbkbWDfE1Yh4uOmkdSD/dFNPD0COBe2mrA1EHYqVhn61AmG/Fy+94giiT
	 ftmPltPapV5uX1blb4TLMxYctPc7D/q8B+aZ5gBrB8CTm2RBoZvIyiiU51uvx5Caqw
	 utKgxA2yQlJzEvwRzEhwd1UKRT1m/USdAFfe6aID5YHp58FXa0hbiG8Qa0MFcfh9eB
	 i/BURLAalzP6BcujblSvxMD5lgW9p94ollqRg/VlTEE7j+5A4jhiDCA9Hh4UbqHcOf
	 uB3NZKoKyHg4Dne4sxq2D8iJB06ruvLKK7orK38JZRiPHFzKwdjl5zeeHamR/lNdMH
	 /CWf/B8GRpQfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9570FD3E77A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539457358.6529.733760122345140705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b53f117cf118600e5a98b21aea2d9f91922f68562a551c46eee73579e3d0a0
Date: Wed, 10 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765394573
