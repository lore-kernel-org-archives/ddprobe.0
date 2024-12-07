Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C053FF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733589954; cv=none; b=hSRIks/kmeOZTx98nVhKspHdIk2aK5tiX7UbiWlxRU8d81AguPwtnS25PqvqPQ8FHrnl5h7/dxIO3BsPakxiZtncY5S79BZFaNL/G4znkM4j5MXUU1SRUpmRo7tLKEUd7k4EKCdPtrmYaVKiQlH3Zx1uSRZlk7XU/NHic9ASTgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733589954; c=relaxed/simple;
	bh=9S9xFPylmJrxwCzHVhc5lKamYJBIwjFzAgRZ6Ijn1ag=;
	h=To:Subject:From:Message-Id:Date; b=ilr6q75H2CxIkVwce9h0fk6gfQn0rXZRgFI8fHjlO9SdX8kYzgiUk/iz/bqQ5nahwKrk0IwmNHOgV5fP3kYL8F5eR01c3umkaMg3QctYioqnh6oDp15xf/TM4EycB9kTbe0A6119rI673Or7/QhskTpChKHz4NInMb292C/ALvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLM5b1LE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLM5b1LE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1735C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733589953;
	bh=9S9xFPylmJrxwCzHVhc5lKamYJBIwjFzAgRZ6Ijn1ag=;
	h=To:Subject:From:Date:From;
	b=aLM5b1LEv11+G3afKCkNcji4QfBkty1HyZSju9h0hgisZ8eUDd0lWB2PcOql4Cx7j
	 ozB/teulrindasBX5dXdP/Ua3eI38Z0kgPe4blMTqYc4yWNOQGO60m+FVQB2I1z0q3
	 ahzNORnntsEQedotQBgQ84Yw1ROvGZLoDEEVdIP+eb2aW/UFKNDsN/01w4AuwsYbE2
	 W+d0ap7XvMSBcSsi+rIGppHcNOgYB0rZB7v4JyslZPmjYzlykzHP3Fhb5QqdDvrBUJ
	 dnhDi/w6yzRlARlVd+7k+imQi0hyqVOKZBuXCfgrQ03o4Vs3v4XW0mLFKBZwaSqEA1
	 fNTFuGElEB/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF8E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358995366.15033.12133723556091689400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12dd22b3587693456e2de2bd068456a4f2045410d89d41c00289d318156f930b
Date: Sat, 07 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733589953
