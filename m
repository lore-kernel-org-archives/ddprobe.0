Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA3712E7F
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729128354; cv=none; b=WwEdXQ8L2vDy4euvjAuGWU2Bls1z6VWhMoCnTIZKxf9LO243FpWOBWFIyAky1Q2OuO4ENEJ9a8mmZKckQjNwhXTBaASjm0+EIbc1rplc5Urpjp73kdoEQwK6RmyDr2D0cJNnTO4KX044N9k4VJUArq8+tzs42qH9NJlP6DeckqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729128354; c=relaxed/simple;
	bh=gVf+dfHSExTvGFODpS5fYxpn6+H3T5Jab0LS2xzVBd8=;
	h=To:Subject:From:Message-Id:Date; b=sVE7Jx/brGR6UUpu2BMly6UY8rrUH0nLI8o4Pcq9Dtx+QKZ74ogSsn6cj8Ycr12rrGiY3SGKl6WdK3xw/6c5Wc+BLIJ4w9fPhklXRRqpq3lD4CJfMyPSNQGe0a5hosMi/q7dy0HChNzZvQosG2hZubpRepd3tidXWnGYHk+Iwek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4x1k9Ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4x1k9Ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D00C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729128353;
	bh=gVf+dfHSExTvGFODpS5fYxpn6+H3T5Jab0LS2xzVBd8=;
	h=To:Subject:From:Date:From;
	b=R4x1k9Ke9Jdoep7bznAzSW/mYhUcbXS/z0P/XMjwnLkgkvAs4qfe5GN/gYgJB6j/X
	 X9bUYqQWymVGuVEPvpGAoEnf96eZti8iyJcA6nhAiRF0eKZX/hTI8YuFAkiq8x5TsK
	 ifLgNA6Z0Vg1bVusNDiZw3ASpp9PltbHrvbius0nrZ/IrNQLSIsTr8z2YUVBeTLqdU
	 +DDIRfWGfhCFISbnUhEBjc0R1gxXoLku+MS6FKkuxxXwykJckzQ74nq8GQza0pJdoH
	 bqJRgVkEYxhc+Qvoukf28kSi0NU3SFTEmJPJEznQFSIV9P9tDvr5/dNiETRZOiAkyN
	 /61OjpalOVmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE6D2F7D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172912835357.26395.17353433012980482915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb3b8b6cbb99686a3e8cfef9adf5bd995b39e7980ca1ebd66908d8446f97aa4
Date: Thu, 17 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729128353
