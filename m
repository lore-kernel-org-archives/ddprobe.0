Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B9D1A6834
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785678034; cv=none; b=rLoFUKCBsl0/+SJWbOXJn7gxQOG5G+6y1DhOYbr+upEzBhXf19o6IBRCFKXz4UDvLF4o0O8nJ3U3b+Z6V+cST5kQ/SUrswa7hGO0FF5yJsZjOiBnU7mQNVJlGjipAoUdYRxI+qSSULd7pWBor3Y1ZQpvyVOyYr/WJQZVbEW1ttU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785678034; c=relaxed/simple;
	bh=BV+LjClCTUsNOC5rmmvf5w+IvUmK+mm/2jmDhQzdAUQ=;
	h=To:Subject:From:Message-Id:Date; b=nVDs7nOti+NMEc3C9VFHKLNReY5nk5th1Fl5iRUHGAE7i9S+CnPAtGOmqS5NJ9+jGr8Fy0sO7b+PgL8Uu5knKRM+1QTyi4mrJDmUE7p15Bf7tv/DSnw0xSucjZ/kd7U759sw3BtgLqM1w/AWfbxk9+vJbDnHjNRU4mVPa1EZWn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhacsTCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhacsTCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8846C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785678033;
	bh=BV+LjClCTUsNOC5rmmvf5w+IvUmK+mm/2jmDhQzdAUQ=;
	h=To:Subject:From:Date:From;
	b=bhacsTCBae3r/7V0gbK4pkHBKEtAEskwpwTbpwDyKaN3IR4eGid0+QqCDr/IE41H3
	 XAkKyv4Xt5NC1+JLl0KAcThCwjjdS+NId7x9gVOFs5975jSCPyS9ZSeSZYFc/3rPNC
	 Saimi8MuRBsXIN2YT5Oezbv8qWU7xLDz5XZR0ng1x86vv/yOGEm1FRbHbp7pUkYhlZ
	 5FJj/kwIeDTX3Jvq1mLzWJe+kQ8TEZHkI5EhstZEnWjo4ucv9nQuHWqyKNFe2KS7Ig
	 1pHunuihKrEjaBx+5m5oLPyg09DN1QN57XkYqJvkoLnu+t3FA2FFytJiMF2LtzfcDH
	 YtzHaK7E0gpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B5EC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567803367.6685.8564030008348892701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4a6874e14c610fe1112107642cd3bd6c9828f25522d5f359fac4c6ee52a45a
Date: Sun, 02 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785678033
