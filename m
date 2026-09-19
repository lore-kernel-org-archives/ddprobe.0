Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5901E2D781B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789848634; cv=none; b=Py93N9ii7TMrttGd4bklMX1Bfo6o1axrpRNsxVx6N7pcci3dHtsBoKkXlgxDeozvKovPFNW42OAL4dP1lYixbyqBUajNgU0BLIOOysRVR6irYFGXJ3HxI22haQtYkh6gUlonse//YWOInCae+FcYIBscfY+GPIvWjLOZY71NK64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789848634; c=relaxed/simple;
	bh=ekEURaadJ5If3QN277vpm5sO0FDKdhruyMzTj0NH1ks=;
	h=To:Subject:From:Message-Id:Date; b=R/YEQg4QB+S5uzoKA966SiKl61YMGkL13PhIRQ+fRJVlE4mEFOIVnzP2eCDshlF4FkZPRVJsrNOpN8QzYohr+OThtWIw2M3oEErIBPWf9B1KbewqS4F+ODh7Mrft39tcpNF7Bdcu0kR/oWQrNoPklr6XSyJbVLJGrPnT7gplj04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVyY+yYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVyY+yYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2D0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789848633;
	bh=ekEURaadJ5If3QN277vpm5sO0FDKdhruyMzTj0NH1ks=;
	h=To:Subject:From:Date:From;
	b=RVyY+yYEldZkS/jX0VZHmusN3IQfe/iOioyH0WO29sc+caVDxvjI5QoYD5TnX7f7D
	 0DHMQbohHIEnC7h7QHU4PeE8Nkj4rnxAQ4L4YlZJgykJz1GQ0dbeGnQ7rpIbUTJnlF
	 BLG4UhbW0Yf66SPjEfWvJAlKtlS/G9PM7z283zbA709TaSeBxCXD/CbeDDYQ6UnqYP
	 f9z4ngsgI5S6edE2cpgl3w2aJEOG8X3YpvHQBffqHQU6ZG49LKHwY7yrW+QNdpV6gr
	 PzyYd5HRP7A++ZuKKEQMa1lZXEiUs4qnUPWZLD+vSEWbiW7rX+cuA6o+U5b0LtOR3Q
	 k26Dk3K3L35SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B1C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984863368.31145.16853656853798871280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346d09be606532d20c981863b5fbd2ebe0c8cc10b4121ab9b9af78471c2a7d16
Date: Sat, 19 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789848633
