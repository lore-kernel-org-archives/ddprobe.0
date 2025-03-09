Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3985B10E5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741534134; cv=none; b=bRNDvQB8AvISn85qBLmmfSNC2mqKf3EBr+CgYJZBxRza5Q485Ww1L4PbyrtD/u7Qebi3O5DzT2SdV0jGyU/IVRjokOv5lG5scVW0HzptDGNcJb72V201vyiJ1Xv6TeTZWcYgmk0ZkqFlIl8Vr3gXmfcCmtEJ4S7eo2d+t3y+Cd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741534134; c=relaxed/simple;
	bh=89qIcOGR/9uQuDUDTbwKJFQ5n09CK/O3mpII5EyWwNA=;
	h=To:Subject:From:Message-Id:Date; b=LH5ZeOKQPsrqvi+L0sEHQX79wCCAyUT6Q0U938CySdRWl3UicsnvzLVAtjs3pMQ3HWJsIuR0w/EzVUnKvupUcLv8UyZiBkcue9FlYaTbmCH99S+dKxhaIfw0yJfh+LeP+0aKE4tFVoPKB/NmgxLdXd825m7mCyvvafjgsjbaKso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohuEqFYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohuEqFYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BEDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741534133;
	bh=89qIcOGR/9uQuDUDTbwKJFQ5n09CK/O3mpII5EyWwNA=;
	h=To:Subject:From:Date:From;
	b=ohuEqFYfx4pjUx/eMBHm7Un+Sv0mhse+v/nj/WtCWo8qPS96oaDQegJJo7HfGn1J9
	 2F+YwKewX2XqQuXTOoRgFHLYSrxJnVVqHGWHSTnuUwf3KeTVktqzOeYOyiSaPIqXUH
	 tHfKBs+Ge6UNlMknvV5cRzqp85q4nKZXTewk2XpXyBCw3Qno+PHZLXb5DZaxRZvYA0
	 BWsSCgNEz/57QwVqhHdShDLATtacywYz1sA7fQjEjAWDnMTzazD3tVlkN22EYvASre
	 LqvjOfgFsSeo5U4Y/t6kK3HrsnQX6yuKAy4n5Nj8DwqrM5yrOu0cGsamvBxGL7skl5
	 i59Qb4H6vnbAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9982EC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153413358.30633.2105276062664396959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245b1799c90741bdfed06b0c7b762a7fc858119c9e6254b6e1c6f0ae89269f73
Date: Sun, 09 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741534133
