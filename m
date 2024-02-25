Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BAED2E5
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708844897; cv=none; b=s9utHDMkjBOUGYNbRfEHMgI4sOy2CeZhTXKOXM1HW5xxfCwGiXPIyE9j4uwKKcTjb52jXDnUrYyOetwQ06vOcxx/0TVzn9ZPBqa7NZiLakVyzEVy6RoV6Cjmd2kBa1wbXJQiHskOycxyd46dOJShAdymaj9FDCAPT2HeNvh349Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708844897; c=relaxed/simple;
	bh=QMjIVHl6ZTGojTvfRQlnnoHN75bmowwOXO127dMkKxc=;
	h=To:Subject:From:Message-Id:Date; b=NgYEmXPC1tht43JJr22QA2FU4odk5k2gZsKBhtTrVO8zfgt52M26Ox788hxWaR3z7LQ6qcnE3V5dfne3Y6H1St1n45gx/t70fbug9mZqm83B/MlKtfsGdA/ycUMyAs+OY44ETZdl8eklG7UhqDjbmx+FOEtG9BlFpfKLvqMktxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzPFHICz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzPFHICz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88972C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708844896;
	bh=QMjIVHl6ZTGojTvfRQlnnoHN75bmowwOXO127dMkKxc=;
	h=To:Subject:From:Date:From;
	b=fzPFHICzefaBKCs1glw4DlK6lRQyTBsdr5nk+XUPGqIUdmgHBVzfST7iovWqtKxxV
	 JGd/shawi1/ZBp7NBe3Wh/YchIQMmgrq0HCjH1dFFUStJslyKTK+U34tLhwg6KSYg6
	 XBSET1jv3Bm8Zx2KI9KMTXV+/4898N5f3lAIxqJXzfZpbNFtp/9GTWf0PL4zJ8R5Um
	 3l8GK9D9SganO48uiM/TF4ZesQoMu5PMPmI9+641r/olhHu39Rwpn3nHBXeCQMeqOf
	 WlsWAzBU5WoK76Lkq5Vw0Hlapb+yqUd6uZbIWdco5lk9eEzD9Y0/IB5sjXIBYvaIql
	 1AJ43tucvcoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69764C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170884489640.794.13561088332478769922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abac1121f9ba9803e44e7b8a2e18e9ed230af1babc3c1a5e88f3b155e01a335b
Date: Sun, 25 Feb 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708844896
