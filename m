Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5525629DB64
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789248634; cv=none; b=rizBMbfbtzP3msdkk28p+tVFz9F0+lEnmSnNYUSeHrotn/STTSRHzCe6qZnvliFY0Bj0ZChon6/L7nCqGldP5/ayVstXq6PkjBKeNzKnsoMVrVLhHZg4JV4Xi0ec+xW/3JUeEGG2MEvTWAOyW88g9atx0bnefyoQ3ES+U6XLI3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789248634; c=relaxed/simple;
	bh=kGQQ4VknZEFZwyFgiYJJMTR1DSk5EHXzVTgYPKfrC7w=;
	h=To:Subject:From:Message-Id:Date; b=hfv8INkkjYxfJpm7avqNL5m/s+a81SaLX15r+E7BBlp/uDfRp80SjcrQSTSVEnA7vslqs8tSq7d0EdsG/35170XItdaewg8Xa/DOD6BuvQYsYJnX6ioroQgpSDCEHaPgwIbq3ROMAg83q7UT66rIKiCdk4s/lKf931sQcwpBZUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYAmX151; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYAmX151"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2A0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789248633;
	bh=kGQQ4VknZEFZwyFgiYJJMTR1DSk5EHXzVTgYPKfrC7w=;
	h=To:Subject:From:Date:From;
	b=JYAmX151+wWhbEp/sgi73RRs8xLhRC4VUOVapOj7y6xwv2bucV4zive8sBrlmBBd4
	 2PU05J/6LdSM7ifgZ+8Purovwb0jq3O9net/BU3B4l7HcSdD3jJK8o15HLsbJovFKr
	 aKkohpXiaVdGP2t6At+XMRS+GXs4aPBdNKTuvf51b/JpdEh7JN+PpkiyyoFYnKUWHj
	 j5oM4UlrAcS02uH7crDBrQ0wdWwXn4BvSbCkcI38dAdNiBuVAH7M2LDqc3wDP8Y7nx
	 Bg2zR6gtTPO/UbqWsNKbgZsO5wtRtu5JH2i7q22eSaOvuMNqVpQWzTolWwwphbYuJt
	 92AeoTkaw5xUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B4C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924863368.16407.14984545882992353939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a839e74768509315d01f49383eaf09a3107b52eb90674988b5efca33f647aef
Date: Sat, 12 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789248633
