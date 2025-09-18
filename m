Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3332417D1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758164394; cv=none; b=BDL6GuWly82/QWJ0xZLb0mrOAsLT39EuYYl3cRZysQyZuum7vYDT7fy/twNcaY8vtjg78Nd0CTl+O9gL1s6gafNgfPtuRWfE7qvNE2KsO5CyCW4ZhN5dc3YiKf0UTTzP4nOQSqgVkHIcG+BIw5juCuQ3B2EvghebebbpTZbkIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758164394; c=relaxed/simple;
	bh=JhFO+nHXL03E5igt8Vso70VaG/JW90Z9y8iAdFB2kNw=;
	h=To:Subject:From:Message-Id:Date; b=KZ6AHN6scHsZsJlgfGcio03Wv41zqUmO5ahvtQvXxgFLCfvoMdqO3rCZ+S1rYTSPwFvyRLY7nLLUnDriCXiJP/nNuhZMp5/ub9VThi41fRnIP1gLNOC1THRaePVwEiUMF2cLCG4bGGj/PW2IUHU5Y0p6bSH4v/tdKdg0nCRdqww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHx5j9jD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHx5j9jD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6F1C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758164393;
	bh=JhFO+nHXL03E5igt8Vso70VaG/JW90Z9y8iAdFB2kNw=;
	h=To:Subject:From:Date:From;
	b=VHx5j9jDlVLAtd3z8BUP0UKbSF2od0wdo+PwOZMPVfOYoWQ41IHqTE4CEGEwkEkJm
	 nykBBiDUy4b3kjl+JjlZmLDcjRc/OyO0HFoyIr8lN0fgRsu8Lim/TrWAyK2FGqmLfc
	 mi57cPtaEktEPBERtO1M/bJHrmYlvWJe3QQ9R2/1nNcmOREEfKY+suNGksITlqxZzL
	 /YEeeJ7e/w9NWXvNT9ITLSz5ujbVArS09cTtXrrrq59jiFu1K/6NM9cJU4WViBj7+s
	 njC839Hq1eosEf0sLc5pK5UXMp6gQAFcQJytG1RFfG5wRmvuZ+h5DWl/JwFTg8+NIV
	 T/DLaKO/dJzIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A9CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816439359.5536.17496741183854092835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64240c52c7c07ce2ca4ef2558a87a112b8861c468ad95d1fb4f3c783e4d6339a
Date: Thu, 18 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758164393
