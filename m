Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C752F3B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743493194; cv=none; b=HgaiWOo3hoj3C1LuID9KQx/0SQ6hY+1U735LLc95Jrkdni5u3raK+6o4e/iQc8DJYzoCWJHBHDnV9iL1devrthrqDwYXj30OGPfJMgBV8mFabwUQmKrRMrSlsI4PUH2QLgIjVbZbyexm+q54upIcPbM1sIc9eMT71c9GMdJGz1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743493194; c=relaxed/simple;
	bh=DOYD4hSH9t9xjGjA66gXJHf968FnEaYrgdbeyB151tY=;
	h=To:Subject:From:Message-Id:Date; b=kN+9r3VpBP1Wrj4PwAJ3RCNLoxF8P3VTcApd2ujvETsvDOu96psUYk5Hlge3RHfRLcECI9ZHha+9mTkCh2ZNPPBJU47h0/K9+K+lrBWgRTFewkgUIovfhTyr5wmy/8khGvqyqBIXY2lmgx+k5kx/O7mgvZT7RwKC4K0265qZQ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvEDwM8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvEDwM8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE909C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743493193;
	bh=DOYD4hSH9t9xjGjA66gXJHf968FnEaYrgdbeyB151tY=;
	h=To:Subject:From:Date:From;
	b=dvEDwM8b5IwcLqhfxZwMxIYM7xAdlw+Yn8+xyxtXMV1U4b5mk9APxxoFcgSwEiwu3
	 k/H9EBaY2JN6IOA4zD+U4KTbKSOE6URtrQ70s91UPNU/TTnsU3ncSmRUiZkEYB3XEw
	 t9rBB2r/Xog3xXdkngrXiQK7hJviP/cFW9RmbDPDgYR/z4luEneQ+5LsXZJoxChOOA
	 Y3n7lYRbJg0qGJLfHMimQx50IJRpnCYNNQt102XLE+YFAdNZvH9+VfqD4cIqX4W+SN
	 Xh6CYQBC5IJDXYNExK0JBDyvHIfcAIagau/BuS2NJeWt0NeGJmxo0qByMJw4H+QFPz
	 Kvi2rq/GSytoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E6C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349319360.3421.1145474771747600181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911db2048b0d8f91440efd4ce18809a321ae952bf80a057e9cabaf84864cbb2d
Date: Tue, 01 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743493193
