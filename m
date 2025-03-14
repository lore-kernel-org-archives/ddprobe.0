Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4E131E2D
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741987734; cv=none; b=n2suboj877srPPAXjKMvGeWrRjW36g98ArSnxCtLr3aYN8A7cTu6AeppWXTgj3ux3XjjMD0s/f7oV+ZSPhEBvhcrSYkY9iFAfCID8Xty4w8z9F8gB1pEbcRDCuJ3lMuYrBYdgTDMb/YudpOCHArdc+Vm1Ko4J6fgNajb9YuYvzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741987734; c=relaxed/simple;
	bh=AwwiP3i4haUTKEVuCchnGr5NRsZu2WgmtUT4ek+Z27U=;
	h=To:Subject:From:Message-Id:Date; b=NRzsWF09tqjZTL3pehJArf8/8HQVu2C9RjjUwAaL3s5TbyUialgkHLAufctX//+/1jd8vCTONVxOFzyfh47PpIAHVNzOLCJYwjQcsCbyOpllkgCX5pBbwOGZX0IxxEOJp1bFt59GjLE9R91re82exRJCfHlI3ihsuLLausJNMak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTCB94wD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTCB94wD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3A9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741987733;
	bh=AwwiP3i4haUTKEVuCchnGr5NRsZu2WgmtUT4ek+Z27U=;
	h=To:Subject:From:Date:From;
	b=qTCB94wD9VgOaLRDSBw/sU+JQOlr/4ieWtX129BNu60hiFkc5Ja2MpzKVkftvw6cY
	 LIqajiZi9Shf2P0IgnxwsCM0spiG8hNf5Xpqu6JCjvNxbielnIyF7gVjxwWEH1KbiP
	 rfO9nA/qEFwFnrlgkJajHG9ea4+6v0Qwyq7BlWd1DeRSINCIafYnyBbdYa07DnonPI
	 MqpZY71NgwmuVnAwYLE0Ogi2iXfy+ug7XixXFCOzoR1sIqtEy4yKCNaJUU7cpImKSn
	 JVVABVccefKdsSiSYbDt39RwyjoKLJyS2TlY0fU7fFoAykC+dhMiFTtCBNMEKyS/lA
	 L1LJ0RIrc1lwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E2C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198773358.10787.17347284140506031916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c18fb00ea028cccb4ec44d3f84a98e3c9cb0bd97be03e357887bf0b8bbc926
Date: Fri, 14 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741987733
