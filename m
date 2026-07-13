Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E35B274658
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783966714; cv=none; b=S5+ZdzPfRWeNolW5QelqICFqzxn9Lag98dUiEyJdSBznb4FlWD/2j5MA5LV54QcLPiPBRhngeZKPIJWt4/Axk9PhiXpi86M4J7oKVPwRVLcfMk8WwvviYj41Cl8Yv+c82To6aeyDQdwjhKCl7/wIS4p47Bz9NRrsQlcObCdFmSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783966714; c=relaxed/simple;
	bh=yF5xgdsXjOF7xhVBU3J1pOvvalVwvvlNKvnUm4eACU0=;
	h=To:Subject:From:Message-Id:Date; b=QK2IGysiykKC9OHbBL9hM0lQ2c3NBvOMwyIh8sECkuBCoT5OqJPxxbx+LvQoCnZkOEZ2DPetzhu/BWF1bzzZUup5KHMj8D5BODtXLA5HIZFmR9T4MWHhGWNmu7+AAf8PuCNv6Ee4STjadNmlPNndKfffxCMujuLzqLKZqn9oMps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMX8niQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMX8niQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB49C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783966713;
	bh=yF5xgdsXjOF7xhVBU3J1pOvvalVwvvlNKvnUm4eACU0=;
	h=To:Subject:From:Date:From;
	b=VMX8niQdbmcp9MhQaZi+yXhaXebT1MbdEVu3Pj3wMgUSF1okQx2D3t034GCKp07IX
	 cV/MoEH1ct+m99Vv67TNLMyd+NDg5xkqIdfLb1h3SxGApjwifftpv/AF/YIu+INWcJ
	 9UOMC8vDNq+v1tXkxkNW1QoC6VIPNF4J3W9AALRX3vEDR1KaHa8AcKqIdEp5f6NErb
	 hbgwM25IX0RuDCYmJw2qE8VYZDJgnnok3YytKRRY4QiR6SBsCYAvLhKLq8CG7wDyCZ
	 HeDbRLFw5zH4LqTGIdPFk3g323YBsqLZRdIWLiSAb0QneCpSBxNsWUoghSBm9WPVrx
	 9VljLWLfWcyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F7C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396671368.22143.17947689863047212345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6faf57f40999c318d5fd9933bfa89edd07e24e66ca3771661717fc868b463e
Date: Mon, 13 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783966713
