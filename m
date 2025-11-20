Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A88A30CDA8
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763628114; cv=none; b=lbtyicvMgpPyqDokLmRtJsiEW+OZF4CH7arNFczEY7ftnhvzoALBovYN8HK4FENB7doo+7/dHkGYO2tyco1gi16cw36n27isWXaM73fyPQUuS7W+ArM+g9G8O0JkS8tg67caffvEstybB/hPhbfLtT8Hc+yom43B6BXIgAyb2zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763628114; c=relaxed/simple;
	bh=isfbchFUfCo6FNDwWomPNc4Uk/JtaXGJYdd4BVI5J1I=;
	h=To:Subject:From:Message-Id:Date; b=F+ciE1ES81cNOdhudJfgBnS6Aq0m6czBg80/EPjGD8qpTmSmrBR8EGc+/fAIrkNNlNsHvmjMczMKT7WMcxnQAnnk70YKMdhnuSJpY3jm7MndkRsZJOId5XKjMDPRxjGnzd4qkKn0FUXbFOmCPpaMw3d0Mx3txUVrNT7yknMfWAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjMdbill; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjMdbill"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15AFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763628113;
	bh=isfbchFUfCo6FNDwWomPNc4Uk/JtaXGJYdd4BVI5J1I=;
	h=To:Subject:From:Date:From;
	b=CjMdbillBYh2DOHbzbBNb2UypgcYKwXJcvSrPbb0ikhbja8qN8rexdETgjDqMDSRB
	 PCB8oDUls6aOyccxFMphKkaH3LGg0LtkqUkfU0z4HGo0F5HILOxEcHV3jerHlqw4Td
	 xHw6TRaWI2hlRPSO4R2sVYSATL71Ox/XvtN5k+PcIkmeDIdvmot+IqN8OmWKCilcmP
	 BX/QGyTLfjZfE9aOkIYoRnNyh1V57yNWR90yRpnnabQSr+t1me2/tYFdSc15tCoQ7x
	 /LNWbHgAEWqIrX36ZRlUN1eB0eEpjjYQ7sqLqnHGZeM7lM2gbJ2AI1KebP7w8VIKyN
	 ZC6MHHEVBM9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C49ACF855D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362811363.19335.16000800028119227511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd1efa21e01dd3c141b9a7d175e294b8aab9e857e6fb3c92845ad9e2794aee4
Date: Thu, 20 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763628113
