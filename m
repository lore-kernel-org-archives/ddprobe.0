Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A331DE4CD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742680193; cv=none; b=tNKGOYvykaz5KsiIUT7/uhvxSXhqyYzxc4I/gSUcNn1nJPgJGxNUtqEDluT3Vo6PJbEdgUSjwXi53jIC9/To6XqK6mv/qtXW9Bt3ONovL6k2MsEvj2PXfRDiaGrG7Ai53iRsbXuohULiMKFcx3ce+ZbABcwbKQpngAj5bGZ+6Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742680193; c=relaxed/simple;
	bh=MPo41RHJ05ITMb+6RYCjxz4IGMDfg+Jap30pA6ySCd8=;
	h=To:Subject:From:Message-Id:Date; b=tucq3XFUmOSN8HOPWz4ybS8PuFTkDEg0OGeGRIGoyOA5aWHZTfH1cZ/cTi6ogNEx7AMQAYxVDn9sLvQpuxteM6GNhx98SKKGY41GKeRdQucqQLEi5UJ3Lc94V+RfCEnQhfo+2MttlTArUMvXZzmAEDoewPcZ9sOOgVF9ojwwVLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2ARry8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2ARry8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D9CC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742680193;
	bh=MPo41RHJ05ITMb+6RYCjxz4IGMDfg+Jap30pA6ySCd8=;
	h=To:Subject:From:Date:From;
	b=K2ARry8dQFU04bs8l1E6tW1Uu3Hdoqf0dyJoIl9e53H7OhKvpDeaVlZ1GXsZYdJjA
	 HY9N1C47QjOTsB7EQK82lLxDZSTEiHvsd0IEhKvE9NuXU2+yoIMwRLt0pPOylijNzA
	 PNLlLLuPBq573c5xbEC1Gmkq2PiKGtdW9TP6uuJ3TI80ye4NFuRmYXAQnHiUeSbrsu
	 o1by3yoxBbZ9h102LwoTvSpQrepwBYiUHB1rH952/re5IL5b0g3x5+D2IdzH1AKlI7
	 PpAoulut2aBAZ/Sbm+6LUAJn3VfhIUdVUE+8+crUX/Z+DywcxIo2gBgXROx8oVug4f
	 DfP5Kb37julRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9ADC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268019357.26447.15768226866727116947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58a9a5d8fb4f5666900efa76987eeaea4219bf7d241249e2525ca62a01ab711
Date: Sat, 22 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742680193
