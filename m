Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB6726ADC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769997234; cv=none; b=DKZ4BhICLFPWj9JUiDe5S4r58A+kMiX/Ilhl9A7gRSmRE9LwZkjRVyQySU4fYhPtV3a/IjS807JiWh0IPgNrP8gEbZj6gwKeiIvPMBZEpNARcQjVXK317+2LP4dnU2qE6/VwYkoyesFQ07GYbbOJVfo5zAtxfb54WDmnhBXO6WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769997234; c=relaxed/simple;
	bh=xTpIzfoTaxPZq6GFFjJ+r8M3A1bqTaoYo5wFjkqkahM=;
	h=To:Subject:From:Message-Id:Date; b=k5lb42U/59VwET4Dt0KWRxkWBsbZtrxgJj68ASoXUuRItRZiCc92P80KxaCosOXVLIJfabk24vd0ev7XhDlArW0UdeZowZNmMHEPROmBVPXujy9bskv0VmuUw9xZMHMO5M6p2SkRpGaF3GW9AjfwAqcfaugYvcI7MuNN9qdcBdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePIdAqvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePIdAqvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED9FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769997233;
	bh=xTpIzfoTaxPZq6GFFjJ+r8M3A1bqTaoYo5wFjkqkahM=;
	h=To:Subject:From:Date:From;
	b=ePIdAqvs0oIWMwMEq+5qWWBobKsT5n8nN9iptWcMynv3X86BkTMVIdQGZKkP0AjoW
	 6QVu4DYQhqBqq8pV0L7SWGF/TY+a/wkuDtaKvKeOtIh5S72Rb6YK2NVy2xE7kd9Jjo
	 YnTyTnvfg5mMvTJzh5/rg3wxkjqtPyxmBH21b5Ow+YGqUgBOn5cpOMjgluGSxRHs2R
	 PKyVEpZNEMcxub1qUy3vWKoz+CbKO3S6M+T2H4lvRt9gBlSLiHUqBB4T6KFOfz39pd
	 LTHkdhHvpY9gCcI9RWbYfgjCf6xbLle1kb2Q2AIG386dKVdoPpWwGOyzGimfm1LY4p
	 RIr58dC9sCgDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF16DD172AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999723363.5248.9797306719726035557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2800f28ddefd3cc5708a987532b2c73b1310533955959e3a5691a6863b0adf30
Date: Mon, 02 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769997233
