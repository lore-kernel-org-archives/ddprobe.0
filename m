Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251731DFDAB
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728497154; cv=none; b=JhXLQShlQiFWORHAdXoX7V8C13moeTaX7SURmGhkgJJ9iUHBToacKwf04AgGaqNXhj3kiwpeKYsqmv6pmyYnODK9pHFNaatU/hgf49Owavw0XApCYmm3QG2pMWyYMXbkIPEl5b9ZeXsJI3ntk5IUK/aS3roZOhws3Dq2A86KZMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728497154; c=relaxed/simple;
	bh=KplCV9+kR5iSaDex8ytfp8Py71XgJoaoUdqmhSbQ/ec=;
	h=To:Subject:From:Message-Id:Date; b=f63T0rtc+kxs0cSY2hoLXVDUc79QyCVaWp7BEnfPFSh3FmkM5VQ01uAVPUTfBUUIqpvjSrdhlkL5bDEQ11Uw+Pgj8ywFvoEjXxjglnQ8pd0rENhxI+IW4riEkfs62EkRSsYInkDXX/0wJtlfhfd0H/Ed0Sh6U8CQcUfzdVizEhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCCNIDc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCCNIDc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27AEC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728497153;
	bh=KplCV9+kR5iSaDex8ytfp8Py71XgJoaoUdqmhSbQ/ec=;
	h=To:Subject:From:Date:From;
	b=bCCNIDc2sQPLeJzDH6BHlMZAq0/Cla8umIu3MgZrl5daDBfk/dVx+24ianSH3a/dk
	 2v4Pluk8f1d1RdtVmguFErFmSH7NNLWPNBirmJEjtbvEK3g+9Y5Dvh3+eDDV8cQoWE
	 /t+Z0Ti8gVL2LC38H+4jtBwdLiwDqntSXETKGh0MSfGm6FKBv6gos8JWOYKQBtXZnI
	 I+0CslYSm5Rr4rWcbEEODPPCrK/N5CTZCidqC2nxvs2jOEWUbF9EW1JnQecFMfeDEr
	 ngSmdefCcFf+LZMgwL4qvD3uhLSrBFSK/MaSBGxG7bvswfmWPT3pzIBgyXWYHYRUEL
	 OAjRxLyB3455A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93284CEE33B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849715359.1114.12232273778505060341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8c5723ecdeae256da10600d4cfa739336fc4ff25df6e252c1067d59801282e
Date: Wed, 09 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728497153
