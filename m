Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB0B157A48
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734730554; cv=none; b=YqCgiiCMrtX3ZpewIwoEZSkGNITHVaPQDCSKArOW7VOHJJycsJJwZ4An/nmWT+TEO7bDZ17aJDHvXLHK0AO/AJ/tpOlwjS21sBSoIucfmvNXlXezM49sCz8YqaMzCHsKdjJulsItvAoi5XxNfwFUQm59AlCt8y2Trhbhz4yZWUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734730554; c=relaxed/simple;
	bh=jNxuRjKiCqSMKpmuMdRtsekndd0PkiNDClevTdI4BQQ=;
	h=To:Subject:From:Message-Id:Date; b=OLdxfbpIrqRH4n1BEf6+Xq0im3lba9GPwK9agiqSyCtM3AIGBoa2b6KFX/tMYyZTJbnjIy05zRxbB+NJyM519MlVTUq2e3kVdb9846N37+fn7WBiQTZO5UJ377UW4XUuNk+ovVysg7ElkaQnZQqe3pad0l+NJO8ZpPS2wpmy8aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTQ1gynX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTQ1gynX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA11AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734730553;
	bh=jNxuRjKiCqSMKpmuMdRtsekndd0PkiNDClevTdI4BQQ=;
	h=To:Subject:From:Date:From;
	b=kTQ1gynXLwSeGg4nAykqokPLTdBwsNyxEl7mb1g/OUfowbB0h7dsU5k432c/BRgSx
	 Bvw1ghJRqfIGIi2I2vyKiSCNs7/lMuXYITGWqjg8iyvk0btCKxgj2jaDvZ89WHLQME
	 rJG5Tr8DJ5Dqbw4sxtzkqATsnXFWamUxdVh9NNrG8Dl8Lez60pDGL6H5LmJQg+aYeX
	 tckskpA4ngfNLctphHq7NKIHxL6ONDoH033aAKqYupDYP2M00jBZB1dd6se8jA9rj8
	 Y781rZO6ejn9DrN6mTEXGnncTc8U57Vea2rgxzDnmwo7R5L0vLQaQyFVo7lC1ybFYT
	 AEzwetSBzdkoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EC5E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473055361.5478.4348711743910889547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d5f979250d9b005fea2a4e40e45a8e9d9b7d73f1a2c5e26eec1ed6561228d6
Date: Fri, 20 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734730553
