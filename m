Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5BB3CFF61
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787349034; cv=none; b=QCVlwnVB7u2QTSqYLSXexUryxP3jfO1wNgUbhAC/aA062Cu2TvckBO8juHMubj8Pl+ZaytdFolYSMhtQ9kar5L0jOWFkLXGdQUmcBorAmxdJjgDkH0IHT1HfZVp/giXYK0Fes94NUgEJVdjLFbQLcJQOa2jeijto/ZxQSg8paso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787349034; c=relaxed/simple;
	bh=vv3CGA2RnQ6I+uDVk1RLXLMYERF0cPvBolgFT/I9po0=;
	h=To:Subject:From:Message-Id:Date; b=i7LQ58IwzEnSiZ7rh91XvMk0ODGZfsSOjBgloZwE+M9tl1yeQbaRI8dNj0SrIPQ0cxFjtjQAcoftIrY2tUNEcQFZ9cIpuoGXIgGh0+okV8L0YBbLXHAhOQ7PdMf8qBtQIQL1OAAmpRmaXyQ8rZXEoWE55i9yCnha1QgyIONMXI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfpPeDOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfpPeDOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67B5C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787349033;
	bh=vv3CGA2RnQ6I+uDVk1RLXLMYERF0cPvBolgFT/I9po0=;
	h=To:Subject:From:Date:From;
	b=PfpPeDOpjwR4CNDeSp8H93EiTW7FvntyvZ6WdhYxsiTXnEl+W29CdD9Q3zOZzbXQG
	 A3uONd3QYVCB31PQCZo3iMsFWmJcq3/pwzEhlrV8ExnoAl0yfEnIc8akeKIPpAT4RN
	 gqNGXRC1yPWdxF0Z1O+cJI2vgCOWUw4/U+rOlAkRPcmhLj1HkbkUt5wb8gne/cP3du
	 +74+B9Z8FNblQpSu4HEq7DDYprBLFg436suy9R/lHFhYIa5e/7TDM4g6BhWEW6GHjo
	 6493fTtP0jO8X/HZdfCGrStq+WgMZ8lMRaISMeUHVCbak7u9CMMYE5JUr6+wQQGzXi
	 cOq3bXUWLN2cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE36C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734903369.15725.11880684372063869779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a204f7d5320b7b7033d8410bc2c12840e64a93dd0afa6c3e82aa94bc47cb30b
Date: Fri, 21 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787349033
