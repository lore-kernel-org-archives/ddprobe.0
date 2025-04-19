Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590731465B4
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745059194; cv=none; b=W76juSXhPr+IvGhMzV1sZvw9LvhBnQkyhjEbb0h9osRg7lwSSUhszXPiT3B8wiKWitXgoWa+7UYeFp/LtFyEua5Y9r0jFOoyVHwWMMQNef4+137HmdTZNOYq9B/KHEN1xQdA+mtH1I6/Vo+XbR/rV0tkeWtqlaWGyn2IF5O8XaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745059194; c=relaxed/simple;
	bh=K1UPFHHMysfkoOy5RgmuPVJZuvwmc3cQ6CkRE+ShUv4=;
	h=To:Subject:From:Message-Id:Date; b=c6rAsad4vl+s6rqmSTaJALuyVo+yad3+wtCfVomHP1rYBF1bDbbybeHYyXlR4YnkX9AQRZVNIoEN/o9CPSSzp1kkpodTiPQ6PJoSd8KVgiORqwwxXkMEWz+HhEIIqiEdDddE7l5gkHRRQCO+eXhxH/M1RWgTjZoYrPGl33vXc/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhKkQbxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhKkQbxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D3EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745059193;
	bh=K1UPFHHMysfkoOy5RgmuPVJZuvwmc3cQ6CkRE+ShUv4=;
	h=To:Subject:From:Date:From;
	b=mhKkQbxnUiiKSoufV1ufDjrtf/xuVXGxV4/scPCiK9VN3slpPIdk1tzHnfGXAxdO8
	 0fVmCU1Afsl6RIlGrrCZqZyFf8IuWt+quIG/hgmRZp/w2Xue5dlvZ/PEoCRsBP/JCH
	 bGB8zX9MKkL+fgLy764qu0NnpdOw7BzvUvENZF1CEnUg12ADvf8lscJXfTCNw9u4FE
	 HzVRJ2aye0N4LUGoL3l+HsZv0qu/kOs6hveZc41Jgz/0M9KfLx8rUJVoJmsAplYMkd
	 4hgHwDlETVhQ5o6mQsbrHFTjkc3bK8KaGCPr5cyAC+ZRn/1YblkjKEBV50HfcpVfOs
	 w335HqVe5xu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B35BC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505919361.17167.7907324053806173062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72887ffb6d080ed7a121bb9d94ea1695fb9d2024b7d8130d1ac3d7de39b1f2bc
Date: Sat, 19 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745059193
