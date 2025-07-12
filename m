Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FD21EFF96
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752353394; cv=none; b=JNZJooSwq+eC+oMVijkdt/BAGWvKYw8E5YGHzDRDgr5/su7ee5uaix+4MYmi+A1xogXcT96NKWbMmJZEj64WQqwFaoNwSCMRIbGmbJ2TxNbwYWEudvikASLslTBxeOB5BrkWldxgeMyzGCEkTOuwG7T22NLzWlu35Y9I3ulTIV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752353394; c=relaxed/simple;
	bh=j6ZJ5iRPj26RxhEOAjiXaj8x0m/jMoJJuIwkIr4p2TY=;
	h=To:Subject:From:Message-Id:Date; b=JKQpPTOxuK5gNYcobv3ZHY/2c2s2WKJCJJhJ8swWsRrMTkMLeOPWkhbyIYE929UT6Jb61wIsIQH02m/pIO+UJsY4LbSIqAfFf8av82TZuRzCkatz+gRCTV0iH2Hmd3vu/6E2nPppXwaPlaG0J6VUGi5FQQVswwXCErxvzAb/wLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeE+PHHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeE+PHHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BE2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752353393;
	bh=j6ZJ5iRPj26RxhEOAjiXaj8x0m/jMoJJuIwkIr4p2TY=;
	h=To:Subject:From:Date:From;
	b=MeE+PHHptxgK8kbzLYveviU8gFyG80VOHtFd9eZAgMo9qF6tlZEw39QKvKHg4drwv
	 m7sfxO7x9KqO7UGFlB4Gvv2Yp6qMMAIRK7v3OUO9NMOoN+OAAgGbZbID3Kmkaje30z
	 F6lLm9h/lzbYzXnQ+OPNtKVhIPKTLTLp4Ho0R4CxaiMO+WmxxxqWma2xsNCr498klK
	 rZGoH6lISxLF4NGmnZOTAc/kA/ZarMg0L7OJXVeVp2gg9sZm8d33OVtG2ssF54Mq3g
	 nsFSugtOWf0P8jJ4DCGfXAoul8rWQE5DvsGySnbP/KOh0T3xUt4GcJmXHy1lbkzKwg
	 cFSvhGAp1WXhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D7C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235339358.21238.6245364205618179671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9241aaa39fa37c0303be591397c3b02f42d3bd0d3d2f7dc755452ebe2a3337
Date: Sat, 12 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752353393
