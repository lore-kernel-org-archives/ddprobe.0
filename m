Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B14A2041
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788529234; cv=none; b=DFdzsJXqfnwXwp+kjnMFFuUxpFe39fGejA4or1ykahCikjOGEga4DMKO2Yk2G297rqPGuAzl5nPcFVL3aUPcFzrrnT/+mby8SH5sW2AUYV3ykUFiPadVK/PQp8Qspp3qWfWdWo399UAL2UDLOXMeNljZlB5M6cykqCjrfOiBvPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788529234; c=relaxed/simple;
	bh=+wcSA66idOy/BEooiLfO0DmSJLGk1/rEM/YFJnfsvUU=;
	h=To:Subject:From:Message-Id:Date; b=QptQ9Uy6ZkZgrPNv8vsgl/hRelnf2cKVtni9a0EA1cbcqVI2M92rhcgiVkWyujCD1lsyxTfQrzlBEO3ZGvYg+1sP+23PnsiAIPx9Mp+tWLxEPltzNtDaup4QSVfwSWkdN2jEwOXQzV2kR9ivVCAcNHSsct6+OsvP8L7Ta/k6yHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH+g1nrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH+g1nrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85B1C2BCFB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788529233;
	bh=+wcSA66idOy/BEooiLfO0DmSJLGk1/rEM/YFJnfsvUU=;
	h=To:Subject:From:Date:From;
	b=PH+g1nrwbAEzGV7HThNriM6A7zSk/ciatrXvW4NKLBRe+hO+HTgDB5Tgyw9i9ZEtN
	 9kVHPaeWqvAcwCLZ3ssqiqLUwKRNqC74CYnXBVOPEnwvCInIFre4Djcz6mafr/tm2V
	 IwiHX0fP0ity5kB10KwilenJHpiRxR+epa1+bP01FG9tX/SIV1yEm+r8F+Xoi5kxp7
	 +aquh+4bMbC4Qdl/mH6li4lg5t1DEJV1535mzKhJCmdBHgChcH7OnEGkOh7L6eVYyw
	 eFgoUvrc/KBlaDhQuIUEKV0Q2+lT2UKHjPB4TEhqJQUk3PVBy8AJERfvY6AXnwqp78
	 BijOwG6DIo9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31DBC61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852923372.27042.4602338796162616272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f239db0cbd7a7bb0a8e6dc10fdeef767da53276fac4307649229752561948637
Date: Fri, 04 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788529233
