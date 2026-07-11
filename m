Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469FD15E5DC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783778314; cv=none; b=oYxgstkt8k35NmQ2UESrIaEPDpjPzudp1M3fKt8q/MzD9rZdFkKDVZ6FDShD9yjHQ8QrCMbNprtjWBrmbOc2JJxs+ta3+f0AdjJuFum2REXVUdJwMrXcYEKTJVkMjduo8ZoAHMML0mM7j7fGKVfDbE73CiXJ8CBqlhzZEWKFhdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783778314; c=relaxed/simple;
	bh=Psb+JmHQObklT1/GHk52043qM45p/n/D1dCDmD9ZCIM=;
	h=To:Subject:From:Message-Id:Date; b=ODSLuzZVgx0GyHsKlI3H44rFgO3vDR6msmgSFTkZ84gwG0nUCTnqwsOknALHC4bJS/wOZrmNEA0CNVp7t48XC1CeOi2Q4l0uYWTKTtwkk8uSAw+bnMLJV1tnyUdFR9N/1V5gyKlgI5MJ/gGfYNQXSrNxP4rzPDBQGIj1Ip5z3z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdDHmt1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdDHmt1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD18AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783778313;
	bh=Psb+JmHQObklT1/GHk52043qM45p/n/D1dCDmD9ZCIM=;
	h=To:Subject:From:Date:From;
	b=SdDHmt1nEJhVWU6XInoOz6PTNtncjp75/dM2KJJJEYbFvOmBtUej+1juaTT2ZXj4A
	 zscmIUqhKbLKKa+KEwVovTPChlUpuHit+lykfcWoa6drddlCTskb9dnd5wxi/+KD3v
	 1bUiJiS3DpX01r3qUyAWbhFAmH//thNdrOSJ9CvHTDoo0T7+oorj7FtVK9NPPP/7Tc
	 6QivGv6Fmukb7TOmVLMZHfwdWjFcF3tkLYZb5F1YAFZe+2R0Lf9RSXBtv/t5h1bbY8
	 J5gZCiQ3jyr/P3Wpdh08eSiyO1VXHZntPGjEr7qOovv6j8nwKVmudzWZVDaExawc4m
	 x3yTnzfVPjgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB237C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377831368.26341.7152193256524028868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986fa7c9663fd457aa012bbbf91773ebe06b34b1ca82e93d067c56dc9bec860e
Date: Sat, 11 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783778313
