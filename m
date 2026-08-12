Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4083932EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786512634; cv=none; b=lxbsitC+KBDHuNryX3TuAtkjavmDqbgmipUQLb4vRMQVvHKqeQ5lkAbY00Bk0zDtnsctS6PwICBIlSKH1xUI617c+dQFhd868ZXkbGy5LFF69J7wDAmrIqFu81OlBT0eanCRPJixw84ry/5JZfG0juRagBmvDYqyS1s1bVK/A5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786512634; c=relaxed/simple;
	bh=TaTysc58qYvB6A6Dv4ndKD1V2tKnKzC7mj/cqB4aHss=;
	h=To:Subject:From:Message-Id:Date; b=F4GRJa9W9OAnUiZfxAN6UQ45e2fzgEgEI7e7nVv3qO97HA6wSO2zRpAN4WTFovFXBFoPymiHXWDVLDDCE3dMzfYw83D5f/btXNZ69yXmECWWC/gduG832okvcLcaCTAj0jNqjjwmn/FfNBrk6T8D6xhu2JSF1CtWfhYEevS44xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtxAy9Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtxAy9Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE100C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786512633;
	bh=TaTysc58qYvB6A6Dv4ndKD1V2tKnKzC7mj/cqB4aHss=;
	h=To:Subject:From:Date:From;
	b=FtxAy9AqMP5ebwEr0+ubTtysIB+ZGqOG9RbyhCEjgcHxLAhDyX7ZQVzzXSPKHGxfc
	 w/nwVZRmKa9SAtcKgXZ9QU9w7H2kpo9qeD8LpEMWTtI82Kb1t8wfZx5YKMADFm3Muw
	 KqcafkpZUCTB7PI42XCqwe4p2xR0mhH0EAAWO7bZskABQ6VDPF4G5u39tDBw/rUQe2
	 wWnnrAmbi5YxvFur/utBP/VQ0SalD+IOjQyTkf5vGYZxruWRV8GVMU+l6cAjrlF7T/
	 HGiZF+Z/AnNdcG5aECcfye5wYkRf/yRP2UHH27za09FzO8giMX/fhVv5UFpQzlO7Cg
	 QUbpnXvCeuTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C67C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651263368.14574.9639623382998297279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e540810f988b6d6128e79aefd8d46e7cc5168b4170c163bcd5040444921de30c
Date: Wed, 12 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786512633
