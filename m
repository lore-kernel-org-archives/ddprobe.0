Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BFB2BF965
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747155594; cv=none; b=sLTT9/H8BGbidfr2HSk58bRpqHPqRSyTbyKuzEeK7QltN69FwW0AniRcxjEeWFOyjQA5QZFk+Qte2xzxBlprHvEfZnv4bLXj0nfA7EX+9lUip0pvpQ4Nw5hwpAk6DRM+U4inUByAR7DpNN81ABhRotKHkvVWIWkgUhnyzlsQSjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747155594; c=relaxed/simple;
	bh=eJWIAhcfxJvGdi/YXK1H8gtG+B7At/wnxj7j/RhhS1U=;
	h=To:Subject:From:Message-Id:Date; b=fwYjsBQJGAC6XAkLKhZuvpluUoXIYa2QzeeU33yTRyAbrf/PlJahamsczEUKW015fQQndQdXIl0QnL2ReVk68iLO5cvTJ+uw7l9gBU636wSwKRq+KP2BFjK8J3Vd4yI/EtzajBqwL0eOXllfdzWVLjUi5DfKRQaSFUfd4IWWh3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqmoTNxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqmoTNxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05B2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747155593;
	bh=eJWIAhcfxJvGdi/YXK1H8gtG+B7At/wnxj7j/RhhS1U=;
	h=To:Subject:From:Date:From;
	b=bqmoTNxdfid0YnIhnMmu1Z0wPlC8R7gbxmw3B9MjqNwht9mZ9kg1EiDXr1dxLKxBC
	 xkbg0TQ1hk3TScicG5JOq4OzRrtJ2RHKb1Jm/j2iuQGay3Rvva41vwwI6T2t2lAe6A
	 XCxrwvozQ1XIkAlxp2174N8g8t6NEpivFddBV4Hqnlc9EvdIKnsULsW/tmJ3ChJviA
	 t9dZhffohz/bsPC8Gru2pQ883EAY9ZF/LvLXvc/L4joHHcaHyqJbClPPaqhlBEZtHr
	 CRnrcgAHpuh1On86Hnb8ayB3Y7gLQMPQ6dwv6BzeAETWVX5qgCvHEckVrlwErfAIo8
	 IMOPYFtdMoQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F820C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715559357.24112.6884792692026407533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03af040e6169e22c0c29e63a42fb802273276b890c93caa56ddf9a066a7e45f2
Date: Tue, 13 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747155593
