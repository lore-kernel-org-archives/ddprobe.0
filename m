Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6D2D29CD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754916594; cv=none; b=sM1nGhzGb5qDng4tHMqDpDnKx5wahX4NjiSYbfTUxQU/oDCBaWtlhUoYa0d8Szi6+k8o/wHd75tccQgpney2pHN5K7pT2FZppYO2lEm6Q2AlQj/dpGYCafjOKNe8uvuFgZAqMEEJRAK1MiYcTyqGfydApsamJHdpErnmTFqePF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754916594; c=relaxed/simple;
	bh=p4vwB6LA97b3QHW7YBSvxbqVbYDDwLTca6EG43Nnvks=;
	h=To:Subject:From:Message-Id:Date; b=HyBSKoJRgvSxks4Mzi8xZZjMn2x2ndObTvUcVddpWHaE5P9K/HiLtJpS1ZCn1VSL4oelJIiePAgrJpuJP57ZEFQmH/GKB3cxvc2IcWhqzNvC2lPG05Phxh8tj0sHvDQTyowr8LobOQLTp3Pv8s3/7x4xF3IWdrT3EZTmeNS+J+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSCLwyle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSCLwyle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECFDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754916593;
	bh=p4vwB6LA97b3QHW7YBSvxbqVbYDDwLTca6EG43Nnvks=;
	h=To:Subject:From:Date:From;
	b=FSCLwyleqcETqLQI8wmtSEEN68u8SAT4DoYHxdQteAtmoVaEzX8RwSp9uD8rMNWj0
	 MIbdxDwQDoy/ieq+Jv6RLtoVRuTvmKZ84FvZF6sGEP7iYz3Ex5gITCy75W19A3bDMb
	 E7Z4qn17wOvUwsdF+KAR0sjcr+ZU5+wQ4KUsIQxLJ9/3FEFmVuTN2eX65225Q9ZJxw
	 c0n2Hy7DEy392X8f23eV32hlK8C7IP7BmL9Ki6kEm7aXBmbvuAPQzDe2qOaVx5oqg7
	 nq+Cw8Fz2RfiJhiGJ3bN9JJeiJF6Sutljm+VV57H4I5PCLKURiNCwqkgNHP4TfvxJD
	 JEn6umcVCbYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A8C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491659357.8285.4438847595553287096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604ad8eaf9415f2967c4c3e2743529cce8a5f4fad6c8f2b26d6eaf93a86a36ba
Date: Mon, 11 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754916593
