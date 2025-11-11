Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1214934F481
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762857594; cv=none; b=HFcJ0LuXy06EqI6N1cJTtWqJ1ZVbwf9ndVZbSc9RCT/dHeW0kfylcLZC/WHlKu2FfdcMEVKxS5fQkBCIl3m+R95Xnl7FJfeIp6aMAwbO+Qvu0fyIBK2z6ZkypoIiWtZ/tKiUIJExpjRTrU4TMnYRZevp0/BifNGyFQ9rN7X3dsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762857594; c=relaxed/simple;
	bh=UKQA8Zw+qFGNpHv0UyX1GXCOGoApJcyrU4SXkeWsdUk=;
	h=To:Subject:From:Message-Id:Date; b=BpixgRIb1b/pHjn4iRiL/oqvEpM7EF1ZU4YDjJyuBMFZWj7MIxYeUgLcvUPB+n+j3IzT2A6jo8rE1IyYpvyTAOFc9pSPzstNdcF9MXlVYehIXRCIkocUlkhW+jQA/I8k4Pb6bq+FvVsY+RiBsa3xZM6sLqLR4dFHtYPBYe3X+pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFTE745y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFTE745y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE2C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762857593;
	bh=UKQA8Zw+qFGNpHv0UyX1GXCOGoApJcyrU4SXkeWsdUk=;
	h=To:Subject:From:Date:From;
	b=vFTE745yMpAWIGADlEwlE/smWGjb+tBrZPzDL4krm4ZNlRWMupRrm8DhBgI3bW6Ve
	 BCA56z/dItXkDNhzEaVp6kKZ4p+tbHqVOmmyVr2yIT0YjcW94+0Lc3DgTUXj4FZ7Sn
	 +8pVV3YWmJWfhQFLZ+/eKCNaJRtBtSuGUWEH/mrKxeceutsP17q1mqhAV59ANwQijl
	 jm8XetxCReNlixwcFT/sIuN2PBWYFVp6WhOE4syJ6dnDcAC8VeijmDKMgtXJH8hJL0
	 W8APCNn2GS+Qz8w15/jPp7NyuLuJY+B5k1whoCZVYlI13xZCyLhHU868/dQDaBjFbA
	 NpbBCTTWum0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86DCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285759357.13540.575341755202877979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549563a5cb5b91bb20dc5853383c17f7b2de6652e1e2832de2386c86a023f6d8
Date: Tue, 11 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762857593
