Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCA1207669
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744487994; cv=none; b=WYSt9E/LtBQnsbCIryhNpo063wnW4a+5CkLEUPr2YcbK//s8cWvt01WrjgBuHF2fPPERzheR94s0Rkt7XnzseLTldx03NGX5IccaAvfb3FJOjeidZ/aWV8759NWiLEqQPxsy+S3xbyp6N2LdrzuMDmNTPyFUSlll/RAm1keT66I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744487994; c=relaxed/simple;
	bh=IisMiwGsB3BhJ0hd1g1Imi19Cnla1JJRnsABp25NAuE=;
	h=To:Subject:From:Message-Id:Date; b=Gee3AKbUHA790BEyquABEhNtOcmE/pWpl95USfT5ZFpAVlNIJVx2GyCYKpUtjfID2wiJ2LO4iEU3nchrRqVxa445C+Ayxw5vNoUSGHuhB8b7+oyTVWfOZ5ovFglNH6zgKrZCg7oHAQlYpULcxxU8qv/+cJY5PytieGIHPfip4tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oj+Zkbz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oj+Zkbz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DF4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744487993;
	bh=IisMiwGsB3BhJ0hd1g1Imi19Cnla1JJRnsABp25NAuE=;
	h=To:Subject:From:Date:From;
	b=Oj+Zkbz7dbhLFd8WvBvWfX2NuArwiLEH0wD6q65I+I5jzcf5ggdpZo02mm/XeIm2o
	 msIjUgd1xwGfgOdcc6J8EMJeCiE+aU6ZSfNsCiQuamsal2dqe2RUeuCWRa0OdalEiK
	 lx5lXJ/9J14PZsgk/8hBTNn7iE7Uj8yQnQV3nVh2flxiMZs6iDslUL2xh1CTtSGiRZ
	 LDV2YIx0EJeqXft8WI0A9cc3p49RIEWRGBER00TWVAkfjfDRRSmi14jSv3Bk8NOkKa
	 sissJ4zWrCdsN2IdOIptzQ9Jxx2tGe4XGDpOWffiM8szN/Ocxm8/Fb7B4pnnWUXLg1
	 NnqmASgI5KJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97559C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448799358.22479.3000371597026000728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88e1a6ab437ae791829f822a5441988365ddd6529a239fbad0c0471dfcaac92
Date: Sat, 12 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744487993
