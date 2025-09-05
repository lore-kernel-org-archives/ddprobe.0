Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DF2315D5A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757098195; cv=none; b=R5ajMPsIA7JYsIdZRIW10uxHDJ4RbTpEmlG7ZZnuFVml8+tQINvKKSovks2tX/WD0iZWcCOIjijSPqgeiYQSRQZuJ8J8o5OK+DyuOYWV+N9IfPqXrCCWltHKY7s5f1VHXBW1pP+o/iBtf0PdylqHvN/yte8UbyULyWSkDw+R7Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757098195; c=relaxed/simple;
	bh=TmjKuf5N+dbdUJTNqmDul+d5WQWd2Hh3Ud+pEcxKLuQ=;
	h=To:Subject:From:Message-Id:Date; b=Cm/dXILwFBqMKv2QarjHT5bw2tMIVsNSeJM6UPnAf8Q4UT9obH9FAc2YemLZlPwm4KkYdCAHaEZIl2pTp9an+5VX6r24pqVH9h2N2TUBibkAy+Y+OabDHBcUlRyKIdoe3qAdfrHwS8xJD6sGIibNWlRZkAXx1GswPkpnPAMXMtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZIkybux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZIkybux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9531DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757098193;
	bh=TmjKuf5N+dbdUJTNqmDul+d5WQWd2Hh3Ud+pEcxKLuQ=;
	h=To:Subject:From:Date:From;
	b=JZIkybuxaH2rcNZmDj2IQ4rN2LiOvfKm+xYKGuz2kT3Gow7u4x/OHmbjHbV+Mst+n
	 lhbndGJVGfSLxAdNFZiMRmFe5bCzBlZkoOXm4y3xmSuG1DuoMQrtH+zeCuwQsfO5bd
	 0sRnK37oLliacbq4ppTEkXrv3qj7Na7+P0cY8/Y5P1EdQ6EqIkuaO9/OgrCNgKxE8q
	 fyzfOIp8bLIlrr7Rc4rkr5zCPG0OJfyVBuAY8Bk42d8XCRHiEi6xEweWaYhDL/er9x
	 UuSqs88uGx3KAqVD9axbfyaAF67zyDy3mcc5D3RPDBARzx9os2CnQyy1CE70YP3ioR
	 zrw3yLwTfbxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E582CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709819357.24549.6506493708451049037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673093f465cdfa68e599e743fe01c86b84304aa5ef10e4c763b355dae6ea6125
Date: Fri, 05 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757098193
