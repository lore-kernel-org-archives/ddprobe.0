Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1750E38656B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775819254; cv=none; b=p+wTEpGFuQoTNWkK3qDh7cg1sjZcTkn7fBpBn/Raz+I6gxdlOtR6gUmU5viiATE5tNWnEC1n/OFvBrjjF9Ia0bDGah9lMZEPvEL6L71vyTRyyzPHy368ywkOrVZHjwgB/v3YILO1a6EJtwbAHBA24ky8n37NT0r4vzaDiJPFz3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775819254; c=relaxed/simple;
	bh=lqHOOxiA5nuVxm0kbqnsy1QW/qR/R6ZL/gr8NVePQHs=;
	h=To:Subject:From:Message-Id:Date; b=DT2etG0H1mbs5Ab3O0qnGle6E718CAj4P4f/TA5bsGKn6SySwmWVkzj1q+dpD+23xt75qdF1+WaL+u0TsRc6Yv0trgv7ZTeurXKn51RVxQRW0vfDxv8YrbHtyQMBYEpxQhC0B+uBKadvmxb2JT/p+Gn+viTgCfnGl1e7zJ/78oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIygLTK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIygLTK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCE1C19425
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775819253;
	bh=lqHOOxiA5nuVxm0kbqnsy1QW/qR/R6ZL/gr8NVePQHs=;
	h=To:Subject:From:Date:From;
	b=lIygLTK2wyVXEkc7qFTMKIT9aIIoanpTJgyw93c+VieCetyKO83hbL3/SfC2yRzjd
	 0auJl4YUHxqq3rf8gcMRCi3tDHyHk72fOm5kWFYFRvT2j3tXtdf6LyQOaHIazw55tN
	 zmOl4Yncao2RuPGAGaNUPY3LgCsgEaAEA0riocL9rdWiXAccS9P4N+YjggbqrPF1YO
	 r4s6qUwZ25cx70yzvSUUBB/E2xXxtwsoTKHIvpD62JCINrB6E/qmAS7PecsT/YBXz3
	 gTQ8zjuonnjTVMtKmQ5OeDSVXONWD5gNKnnxU3l0Mbj54o4L/w7OOBiG0VFEgU20Wb
	 Ove8of8jpTEGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA250F364DB
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581925368.9105.17739986626878844697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf775503f7df9c2c7ece452aac17d11e340f0ba9503dd12bb6051a42d76fa82b
Date: Fri, 10 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775819253
