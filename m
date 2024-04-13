Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F71717C68
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712972363; cv=none; b=FVbXzX/5sIusuDca/u0pPnAsIi4TbxGlwBcJARXySt6SY6IgIXAxEyrA5oR9/uk0aiaGUdicIxHl46SesbsPFCq+5eHZjk23ceFqeZfzqbxyyBI2BXGvIbFESFDW1rU1fsc0iBa1WeLvh8C6MuwxpxWdLz8itPS7A/OVf0UNCLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712972363; c=relaxed/simple;
	bh=tmETZvtyABSAy4wjqlct7XafBNar+eUGTeU2eFJNFGU=;
	h=To:Subject:From:Message-Id:Date; b=dXKiGlL/Ldi/tYNjWWaQMkF3jldXhm+tn+EEoyDqfcTl9IqvKD0AZnuo7kChx2o2y/UxFKb1FYzeu4In9mep5pDA4mocPsppqyC3rm0JrU8VBRUBjx5CI9W/upYsHwSYm0vFKWAk92PqVE3qQzGPAHwHcSiLZvUfi8jq73AeX7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9xvfBhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9xvfBhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0651C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712972362;
	bh=tmETZvtyABSAy4wjqlct7XafBNar+eUGTeU2eFJNFGU=;
	h=To:Subject:From:Date:From;
	b=u9xvfBhhOEnShcEvOwGT2ik9Ywq8B6YV+hb9FVaqBraMKWC3dQXKY3fM9UPSWxtgc
	 5kt3+yntwVNdfd7PQysjc+be8RYkiec2GTvs1lDjnhdX65xTJFS5EYfcpTnBeYVn5m
	 aH2vf4CNFVWFtLtpi77bvHRSYSJ1Z7iihFZUy81Owvrr0MQtiTc+NcRHmmmL44GPcV
	 t0b2SUsLJPXCa4E9d3HvxpzNkmsa6ZZZSp5p1INRj48KFF7XiKdBaHajA6qWRI2fn6
	 Cg+GBh9iuK7GGNUAciFo5Bg8qzpkpui10cZLEeePSlIg/13fr8OLfYglAmVFFBKKNn
	 Qc96l77XZ5flg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2F2C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297236275.10174.18275894604019084859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e392f49d6c7aefba41660e8229878ac8b7544ee4a30a37038e5940896f02586
Date: Sat, 13 Apr 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712972362
