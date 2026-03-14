Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEB232E121
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773461094; cv=none; b=RaBlPUh+lRZiqrmaZGNBNvexBw0V42efK9fqsvhg3IJ7noZKMA+lGL6pqLkM+L7fZfeyzB8IZ/lsNkcXKQzYGNyckK7YZRkLMg6VKhPThFuY0+JqOZDajFHoG7b9/1l3G3776K5Zc0pW6P6rV2TPbKiqd7zB5c5yevTVLb7DxRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773461094; c=relaxed/simple;
	bh=vJgG7teaHfnCtxnGuph+ICS5XN7tCv0rQmfh3OH73FY=;
	h=To:Subject:From:Message-Id:Date; b=PlHdoohIwLIflvVWwCFeYDRiR3S742Efgs4EKe7ohdLUSzkT4sFA8Ei6SAY8r6K4qxounRhYwrwdFxZK5vr9QxsVBAsYdCPtS7auc2rIKf65MFApzLCCnpxvJDUtSwMPIef1ROIA49rAsUb4oR0pgNW5qaWcPWBoBNJXvDhLlWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMHqFe2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMHqFe2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1472C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773461093;
	bh=vJgG7teaHfnCtxnGuph+ICS5XN7tCv0rQmfh3OH73FY=;
	h=To:Subject:From:Date:From;
	b=JMHqFe2wtKR29Pko7N1/u54ySaZ7N4mDNwSSUmbLJj+wkkp2ussVcAwEq28UT3xwH
	 3FEt2AE7S+2HnxgCajNgCdZG2IjWge6DOGqzpt1xHBB1Pkd6Q3WGs18nqYXWTmEXhM
	 4ZcDVZr9HKt2xkhCHNp0BvlFgTd+2MAutbUWeSrsIHCDU2tLu0mgs96L3AM+XbIQGG
	 zi3FnPTRnQgcjKnQbZBTepfAPbBdqSghuskdZMd/krL1CCE/mUvlje3DbGU03Q39Ah
	 gV5E9x3+kIPtNm+bVzk63bp4RZLCB2+O71yqMu5uMstkl4d1dMgrNCbpm+fSSkwYi9
	 +tQIjYvs4rOsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C1FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346109358.6185.9280299104328453566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd1121e34f13561247648e0b320ebf11c8014575b49eb9aa885ce461240c3ef
Date: Sat, 14 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773461093
