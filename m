Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1845336AB77
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777274854; cv=none; b=E++kJkstVsCkKeoWR/BSbIsGlBUMIHVHUuh/BNY3GuCX4SzISFvIe1TTtEPYEyCUVrCKSxXLjx1RtP1IwsOIkIdzr62KYtS2dwqSuLr02k2LykiTgZux4gpzh27g0Lp3wYd+M7e2tFzVGkE+T9oOfFG3ZQ13YKzZXNY+ySgs6/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777274854; c=relaxed/simple;
	bh=4Yjg50Df+e33+xt1KT2veM0iu0IWu0l+sZ7WKTWBo5M=;
	h=To:Subject:From:Message-Id:Date; b=KO7nX9cUKaw2nya9X7PnVUdaNE4tl1j/gdSr+ewtf5VoPV4Z9yju4iqxnDJIx92nvSIffeXshjRG2kYOH9VNOhOtOVSCWSjm1E7UzXcNEN1vXrHAHBwPLsoAKyRecm7jqj96YMWaZ2tVFoFrU5jQRsHo2VHUH74UJnDpNi6qQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euidVH1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euidVH1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB79AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777274853;
	bh=4Yjg50Df+e33+xt1KT2veM0iu0IWu0l+sZ7WKTWBo5M=;
	h=To:Subject:From:Date:From;
	b=euidVH1D5J4GePTihEJ3NxEWZURJOMBMuGHPiOeq8hPB/YNoTEw7zvq3r6JvW0TlQ
	 K1GAKSamub/OkzczGvxhCYFXCIiFHo082U4b+awWRMyliQZXBvV+i/6yJJxQ1nnrVH
	 wAJfwnOzxCMYNwRfKMpeiJYxhc/t3rZSqO5POD1oXX/oV0oTqPp7Ko2pUdiyqaUfjS
	 ClxxfRLIihboedYK/kQjQQP0VfLAy7vTY6Lsdfgdso9eN8dEI70hIBm1bs5XadJynb
	 kMIpEW2G10N0xDmtqieZJNX2kWkC5lfApnFZy+1fI6v54jwdm4FSoWp5pRXdeZ+0/u
	 gCTV1kM67tjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA258FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727485368.9143.2464903510420738302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8365c16b3ba9dd5cdbea226d2bb932031a5b5ef821fb1f0b7da94b48794be4e
Date: Mon, 27 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777274853
