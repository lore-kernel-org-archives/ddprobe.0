Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EA5282E1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758933594; cv=none; b=uE1GEnR3/KLxxostfIWjHLZPAMDpE33W4HjTa6I0f16FY+MyU7XnO7MpNvnbJU1Z2d7BRNACqtbfDggnWj9pcVvWP2YS84hKlKGjdVMY132ISp58I0Up0gNM5LfmHVJyKeeP6YshOpkco2p6qxxVBn/CrxPFaxcmaF3cGB11g+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758933594; c=relaxed/simple;
	bh=3ZYWvSpkgWCdtW1yfqdbnjqkpR+L475cq68O2NAQNlU=;
	h=To:Subject:From:Message-Id:Date; b=ndSjedngmV9KTmuEvdF8a2StGdtV0b/J1ugbfQcaU3U4b7j4Czpk3fzc16grjJrp/4B89abvqQQwi4fvik5cXslvPjc4/+DnLXz/Qa1jlhWAJ3RWhdZNxhbTT7jLz2fHCgX3IT6b+0VObT1poIq8AHfV4XxATFAY3+L+QezwjKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYgyJv6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYgyJv6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5300C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758933593;
	bh=3ZYWvSpkgWCdtW1yfqdbnjqkpR+L475cq68O2NAQNlU=;
	h=To:Subject:From:Date:From;
	b=sYgyJv6u2Mxp0NeiI0zyrXCc6StYgpct10gEWsy8dn7uH66UeGXBeHZ7pmeiRYQWI
	 kOjGsSVRefSdBYrLuJIQAnUW/n+KsAeE1dRUixYgfP5BSA64+7IK3NGhdrOuAYYjsN
	 T8R+A/D1cmMBmZPQyk4mfVZAx0/O2hGmT6iahGLQmvuLLwSMoVjywZAf6yzDnC++q1
	 i7yfew6vRTSJb75QhJcGePVmosKj6+csABbfTIoSlvSnuDaBxok2di5jBqOLTFdnJ/
	 viw3gHWoOLOoocFZlibi/Y3XIIoqMfk6tiVhpESX1BFB4NiKULxuSLSTn4C1vDz7y0
	 BEMEgN6bZyqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156FCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893359358.12987.14368616881886605096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6441d91ca44bc110ed27ff95d1218f312731cbe7824e2c15f20b8f1aa57072b3
Date: Sat, 27 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758933593
