Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A65C24B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786317034; cv=none; b=cEH0VAFp2QF+oxvujZXYLze2P1cCf3Rf7brznsy6zsGu+ds+RZtAvzpGeb0ZhfPxuLnylDAI4Z6ukoEftxYAHZJzSOls27DSnU+1jMZW2T0BzbdIuO+XwlZnEzzOzKtUTf2S6YXwP6Qic8aOr2eN+WE1zo+GrCOR+sp2ViAwl3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786317034; c=relaxed/simple;
	bh=UlirPM4oRjdxRPTUWiilhCJoAGFBpEHJ4R9DyPOnS7Q=;
	h=To:Subject:From:Message-Id:Date; b=uC49JXwXlEad0bGbZ7dLPxhmgjMlpIoJPJXPXA0r71nxNoPJ7tnFrQRyZ36HYouSzdu54I0xpvolX7OZRc9J39rmWky5YtedwDsYgzX76cwBWrseVNvuJCpQGKMiV6qX5go2xW4ZKX2jsOM1uavYlnSKRJTFD53zPTx0N3yRV2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0t/NUba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0t/NUba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0ADC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786317033;
	bh=UlirPM4oRjdxRPTUWiilhCJoAGFBpEHJ4R9DyPOnS7Q=;
	h=To:Subject:From:Date:From;
	b=W0t/NUbaDIlgnOF32g/DENIg0K/RQk/ddeBv+3w2CLiiu10sGAJYi8gXKmG+HGIiG
	 GUBWMHswwbGnJw3WsepdCK71bduPAkJeoR+cXOaO5mHaaRyvmtebG++mB3uT1tLrXX
	 aJS6HP7hjL0Ah81vHx5dCog3VpOV93gol7ij96uKvRhacPqALQQhNuzjb1tL3Ra1Ko
	 DMXJs6uUq8f59t3YNn29D8rrYbr9iWMoWcjENLvvSAUkvbX5h4pKi/otoDHGLcodJa
	 2WvBvZ7tB1F2nxGNVtzAdFFSTvj/hzUaH+R3Wv9DSTS6GKNoNh/jWvSpgoV514tBsA
	 smS/3UpA+UsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF3EC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631703368.26372.5950092669978032841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958d3fca55aaf9fabb742ae908476491e9f56b98eb219928bcae7d7dd601d6a0
Date: Sun, 09 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786317033
