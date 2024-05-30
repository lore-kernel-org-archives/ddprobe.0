Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551F517C202
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717080263; cv=none; b=del+IL1YvblkNjtdcnV1dWgw8qW6ijpbyq//EgraL3AHmem7U+lca/ie6Z05tRXjBkYi3Pz4+1Q8Xy1q/4uxVaZ4VxtaPPqkGw5mAiNBlBmViaCaTV0Q6SOr+O2wcA2/hzJsBTGk3TdCN7SZf4QakILSr2snWD2IOTLMxFK30Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717080263; c=relaxed/simple;
	bh=VhBrbv43IbKmv6ThXn96QdJQZz0dEowNxV+1k+l1SDM=;
	h=To:Subject:From:Message-Id:Date; b=cyD/ODveuyXUQrOS8BziYR+MEM/rYOz3jv5mOlZ85L8AuU7WvBNGw95ZaM7BcflPdyHeaXxjBpYAUSdxp8e1WpwiRMBXot4Xd5jYVIUhOatzmGrbCKcrtzWWp2PM9d8R0ex61sFF6b6VbFksCZ5DXLptWLcyTHeNlKUrcdse8K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBqupCDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBqupCDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9922C32781
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717080262;
	bh=VhBrbv43IbKmv6ThXn96QdJQZz0dEowNxV+1k+l1SDM=;
	h=To:Subject:From:Date:From;
	b=rBqupCDapMGtFj2NTTcF4qGxmP8rVlw8eBPTFOxWXlZ3/JIF5h/Ri+aBIKCfroUil
	 Kq+1xrhjuzQx9yiG7C9NMpqTw/e5Mhas7AAaXNnnzgoI1uuULbwnvCJdrB/wPsUUHs
	 RHhsr7JVSWmNe2VxSf0G4ZkB7zrAQQgM+4+u7GhNgKhK2rOJDQXaWr4q6LciK2xiFL
	 D/EdEAXKD+Ym85BuqE0FXV3aSwWBBz6GVnghNmNjxq/hzDvf+kHd1gOhG3/rQiqhF8
	 4eN8YGLA8TShthjM0Qj6829BSDO6VpWZPV2tSc9E1t24rh81Wuwdoaf148O8ykfgTa
	 eGp4o05wazPsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C979AC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708026281.29120.17931558717975576695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee47bbf863934cc55de515ac0b4c4cce5a297ff130c0f183eea0716799ec569
Date: Thu, 30 May 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717080262
