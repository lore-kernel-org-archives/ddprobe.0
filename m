Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6432D249B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770173034; cv=none; b=muKrQeHtEooL23Jef6p5f8vmIYV/CnAH9bZnejMy/rfnx7uEn/7IcsENRjPmOV6zTSUa5q95q+iv64UI3iUU25H956TUb1i0cjtxDDPjxLRxyS+LufpgyXQqnuO+BwUxbxnqCGS3QZvAwbOnGZkPMAF6N6aSU72+FAjgoBJMXhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770173034; c=relaxed/simple;
	bh=6JZRLTJupnl08Eda/8fAZPI7ioEkAavuUuncv/J/9pY=;
	h=To:Subject:From:Message-Id:Date; b=aO8veQv5oGHxGLC6kLy4kRNW9G4jJ8PtT52EM0mdFvRYk1RUnKyEl9iOerQklL/Do2PbpLi5VftQYXbnLRTSzcuVKc5G7uRrmsSlB60FAktjuCTPT1pRNSNjOqgHLfrZA4kPWBNnRPKFHRWFKvU0r4Z4eZ0+gRJZZ5n4xA3Icv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFgW+Onp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFgW+Onp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A479EC116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770173033;
	bh=6JZRLTJupnl08Eda/8fAZPI7ioEkAavuUuncv/J/9pY=;
	h=To:Subject:From:Date:From;
	b=IFgW+OnpIJs7Lzrh6TG+ODcP6KCuopgwaHnojkfoHqMiEvwtRN5+5OhFBHJF+wiBO
	 lFZ4IqjLWzIAfT3ayECT1IchDs8yLA0wVx4KwcYYPRlV+B68P0cMnQmncdfmrPCDxX
	 ak2mchdL6jMUGwwPc32C0mnKngKGASxpHB6sy/qboG/aIX44T3tWDJnlZyNRBt6djB
	 rZZ/qrDbxVJt8bWrKpodUmhPTz1SbpPPLUfrRdk77BNMP9lKKTCSHRQQVnccLwebXR
	 G4J8z4lT3uk2BzGfv7fF563uRX459f54F7zCtV7+eGpAKGN2wPAWBJJgwfDmpcav17
	 pHO3bBmmDntmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94246E8B38C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017303359.15713.13009669893938123198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7015e9c145e24eb9b01b2bfe9f93adfad7edf6880a20c96b7295515fcf4280c2
Date: Wed, 04 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770173033
