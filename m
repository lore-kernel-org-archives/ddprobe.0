Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED002AD18
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751806194; cv=none; b=J8QL6YOYiISSqCwn5u8igZZvJ88vMdArwy99TdnKQPA37uVZJbO0odZm0UA6idy/3nb3YwSHc/o+oYUHMD+JfWBVCnPrTpd9d2m4ZyzyMqKUtHvoYtFT4rKXqvd49e+qmXWVrwcOc0WaAIvSiEK4X/mLmbDTqDENH8X8VfA42HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751806194; c=relaxed/simple;
	bh=x4zOcpdiJF2WWHr4LSrelU2o9UUdle1fBEE0TE13V4Y=;
	h=To:Subject:From:Message-Id:Date; b=oHiSQTwyTcTpTRhI/JA+VGZB4e0ysqb/P6Hm+ukJlPkOPcx/mQBL2y6NlQVkURoF//wvxuaspDPV07zXBZD3+qgDsiXPId/skdDpSPDSoF3cB3/R/oDo9uAhietya488zQqmULFS/YLJ1xfWX94t3+5920ztAXhB7hInwzqTydc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNiphsyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNiphsyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD8C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751806193;
	bh=x4zOcpdiJF2WWHr4LSrelU2o9UUdle1fBEE0TE13V4Y=;
	h=To:Subject:From:Date:From;
	b=CNiphsyxDFxcJPihablUmYlEgwDNZf03Oe2KJTJZgewNVfrtmssiof5zJlqjlRUYt
	 s0qX6rYzXPzxSuDx8gZraifXVSkGYpweoZCHSojBtKky3F2LO61VRWngGfDp3kevUJ
	 FqoDKgJ2APhIcfVCNOMzfynZwGBvcR+E/I91h9Nkt5ZNqoeh5w7nRZ9gwIJ3M8oGmG
	 iBQeObwP1gZilQudQGZ487NFHUmiMWg56sQzz6Wpx/o4jqQ8bmIm2nBDXndU7G/prN
	 R8DknUNQVtR+gYvbc7dCOPckQcktM58tx/UcrlkC9e1uU8MnNiZSmvMoRYRl+7pXfh
	 7qa28NAQ3uy7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC7C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180619357.27890.11165764292928616092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed11a073549a702c74fc73c1b2a35c21569ee54629b1f2a5cb4332174ed63676
Date: Sun, 06 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751806193
