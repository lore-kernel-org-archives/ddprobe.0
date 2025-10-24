Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE962E63C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761265194; cv=none; b=IHIkvLlOLfTyAqLhyqRCCNcXN6YENP3e/wEpuYiDip4S8QtkK2M3lDnGElqtfLxFI8EiDz1V4SL0QAmOrfkQxabJ0WNslW/dqZh+xQlitA5UWPJCm1Oji8F4EGkUkIu+9ri98vUDt1D6Oijz8I9UIjRLWOZ4C08kiaQ/M4IjO/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761265194; c=relaxed/simple;
	bh=fQFgumKGNNs0Zaz4KelSdKnZnN0Ecr6MNA7ovg0wgrI=;
	h=To:Subject:From:Message-Id:Date; b=b5FkH1fDVUKZqsqjcEw2gL3Dxiu+M/EAL+v5151e8v32OAK7L4JLtcoYNTpqUJzaB/cicWPUhx8Dtrg2UrMc6I/XUxmPz+CoFfYL+cGlHFLW27leDi95/piTTXnWKfnCJ5iDSQLbBUIkkBSHWbq5gOBTFJUDoxrjB26f74En4To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYOEJV1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYOEJV1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ABFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761265193;
	bh=fQFgumKGNNs0Zaz4KelSdKnZnN0Ecr6MNA7ovg0wgrI=;
	h=To:Subject:From:Date:From;
	b=IYOEJV1DbFafOH1MdQSmdPdj+Bj+WMJH5n4sBpCOOJ3MFuFOslSHMQ6WjIV+8galc
	 Rxvl1SHkyJCr+znYMD4Ilq+ERG4UB/X9JQYJMTz2cD3BQrX54IgTZbJThvwt9q10zO
	 1zFEKkn4IZHA7wn5C9QuGgC/5TByTTxDXzktivVSTPHQzx4gEIBV6EznWSpuS+S2sa
	 YywHUI8fG4C04RjPwoyQBb6ASWtB4SkdUVtxNBQ8dYH4pba+iUpS7cUx/2B9kxCtAw
	 ZPrAsyAduMskOdxqesc7u70ruifBNY5E4pfmejxINcV2KCfQi3HnrK46xjOPz5wg78
	 zIUqkc1cy3ryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7BECCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126519380.18222.8176263402599239855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99798a5b8db565d1592f7b3bb15dbd6bcbae6ac5e4e5f17eb8ecd17d115d424d
Date: Fri, 24 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761265193
