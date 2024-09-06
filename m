Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4A51CBE81
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725624354; cv=none; b=Mc3YgPQhjwUv5R/MaZSE+OHRHYFP/ae+kF8XOW5nDjW9/zggBzb3pq2MME++XMnEBQKgW0f1iZ1B1kPHDHmOVGvzbcyD1FNd8Exg+bSt9W5b9c1XDBUVA1d+KnsScrJjF0P1j5JauxYBjmwkhZsM0h6GwOMQNUgE89XiO/c1e4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725624354; c=relaxed/simple;
	bh=LCD2AiH9RLcoVLu5D8ZPnzJ8nWge78FDTUNvn0mgW5M=;
	h=To:Subject:From:Message-Id:Date; b=RP5ReH/lbVg4pXYD8yOovPXB2wKbwggShk3ahAYvyW2fUI+9LiwXZAyKr1s71cHBq9tWjBRbvue/+LvOI3FE+ZYP2KVBt52yXVaNdvbyKj0f1kjM5y54Zcu5nA04ilQ10uLNW75bA4ENL2nUmlybONGvEGneXioNNYBpJYpKZx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5WLWs7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5WLWs7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A9C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725624353;
	bh=LCD2AiH9RLcoVLu5D8ZPnzJ8nWge78FDTUNvn0mgW5M=;
	h=To:Subject:From:Date:From;
	b=R5WLWs7NWjdN6yv2yqVJBmJwejEI/iwG70pYYl+f4N3cJN6vGfNnathS2plldHNNq
	 1wvYbDpHRaiARqoA4O5PegcN3eBOXOg9CFhv0WYJrdvNV8wsLA+WyqcDPqKD7nOkcE
	 CJNM7HK6wdrQ+tCx6Vb2DOLnOJUnufUSF814bV6VAsXI4XejNBW28nqV1JuATIGGEv
	 LDsGVU+zXdXgo5Ui8TVJ0s+mUry+Rme1ZTBM3Txy7BoNgTtTuMd+zUSam/XYt/nB5x
	 Tpf1btG4JLA2S1fM2czdTmWMfzn3Q/+jh9lhXGMvMdhfVPHymdzm5cu+aYlEQQFLlL
	 CGqQ1mVKEvJcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DCBCE7AA3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562435360.11320.1055890744842262805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114c822f983797b36bca93eddb14f412ace39203e69a2a6f6ba2fe9e1983ef76
Date: Fri, 06 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725624353
