Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E0E3B28F
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716524003; cv=none; b=IO2tQlo+z1vLvycRUM50vtqxw8azM9eAXk0BgWHEchaz/COWq/adlatCWKpGvyEs9DcV9wEYmqWKfTEdEDDvgVPqTqwhz05sPvDNJYv5l/scX9rwjjHgbNv/DIQG7qAIp+UrEVuCyPmMda9SLkQc4CQjDKpn1TLUeRCCp2ZvR8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716524003; c=relaxed/simple;
	bh=p6/Xxdl7F220RbnQBBZ+awXcobLnVfbGrtZR+f5gm0g=;
	h=To:Subject:From:Message-Id:Date; b=H2Bge2+ZdixWU5mRjMWZvvxIqDGXNaeZnnvgnvtkrCcrfv2jwwCEnCyFXZhNxrelJ6ayUQ5/L/EWUWLShuSCKvjveOHmNfPde9jN5rt1pZe4maB9xsFyjOYJyWk1qBjvdcI7rsgO8hhb2yv+IbKpBsATwRUFMD4WOh11x6T8UN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX8/anOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX8/anOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0238C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716524003;
	bh=p6/Xxdl7F220RbnQBBZ+awXcobLnVfbGrtZR+f5gm0g=;
	h=To:Subject:From:Date:From;
	b=YX8/anOlxNjGfzxWslJV6qBWuhomxgwPuRb9VcLfS5cugLPoDPDIs4u23Lv4NDcwz
	 4Q83xOfWvEuGdko+sXF1Rv5gzEkNFEge3kR0IoWQ9X7Gthuc1+rg2uqyXNQr3xQTU7
	 S934GTrzLDdCIazo+4/Rc+/EATjV3NYe9/yRIOG9ckIXEzc+qj6svzH5tGs9PUHcss
	 RD25rmQrUPpZmZnwQtB/zPLpPV2a/bH41LgkvERaktaMcLKeWmzOx3up3nEpEz3xAF
	 BKnYGAHQrs2tTfqohJFiR0hC1zCCsJGyeGxGuFF3uPYrrADcVaYTBk01qw1SuFe0eI
	 TtoA8eHGROisg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA6AEC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652400284.17308.15592503495088641605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9776dcebd6d9be473359f77153f185b98b4d7348daf11d8a045d2b8806f20324
Date: Fri, 24 May 2024 04:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716524002
