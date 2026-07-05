Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF047081F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783213114; cv=none; b=q27gzc+ueLUWCrvfKZ6TYbwlyzljZkm8dtt4tBRzzfBew/TGyLeMFzzVDM5wpWCe7KXr3jlxLTou2dEib+UgyDb3thlqQV3Xlb53bM+160OOTxIycFYYCP2bJ63iCvCGn85VuoVn8i0O3+sDN15elKwpXOfNGzcpVYTmujYuZ6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783213114; c=relaxed/simple;
	bh=i9yHenMJEaaR8R20RPjhFWRPVXmy1XTP4vpMuVqQZWc=;
	h=To:Subject:From:Message-Id:Date; b=jRNkvp7iTD6jw2qG6HmgFqCbuwGwigmwXBxidr5LcQnx0zpl/RelOzXnA1lCftt8DAIcILQPfvwH9aijWIqCU3PjjCV4GdrUCHILhgxkQ7EBx1FTCwu7nHt+OzRDvkvKsqiu7ChL8PF2cuV4UFhdt320Kh46058AAeLbX/w4of0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYpt5IUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYpt5IUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC96C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783213113;
	bh=i9yHenMJEaaR8R20RPjhFWRPVXmy1XTP4vpMuVqQZWc=;
	h=To:Subject:From:Date:From;
	b=qYpt5IUUj1/G29FH0FNjwWsuyiT07AsL0tWHGje0I6i4oy1dI1H2eqgQHVlclB9V3
	 9kOMsq1yDe3+tYL9bx7k6c4OvW4mSyEzYqDiDtO/9SnWPOQIfd1Ok7VwXDmDRgt3QY
	 04EQchE+LS5dZ//XVCvcqu/1ABDNViu2ULTrMyki75kPJ/SPwujuCO6ToXZ+HFTxqt
	 Hjrv/JcC6pRy6T2DqVDLYWg0bCxycyEQdaHWfnSQP2nd+MZ5HTij0tYnEzDXRXVbcc
	 5N76dsjG89mLfXfnENzTge5m0EKa1T7KkB0v1bwhcyzmb0JuaH/ELEg1lcbqFc9QqI
	 xASlevhClISKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBFC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321311368.15516.3862246327221685556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35694da73a964983e67c2a3181e5a6b31759ff49f9a93f01f2778cb17c119351
Date: Sun, 05 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783213113
