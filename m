Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC93286A4
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764547374; cv=none; b=O4SO4WfzIYTYUeHZ8lN3TuJWzXDSIl8UCMW9dDKrcQYkaQssmbUn9BnM0O0iu2sWdeFca0TZfmaCB+3C49aOt10AbZRDLc3Y+H43af5+/eBAls9RsW8iNpXE52SQ9pry45MtL6G3Gq185I9uW6RmsCb3TTmX1L4e33s/46rdmm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764547374; c=relaxed/simple;
	bh=VAsz4bdmOvJGm2DMrpogIYWSsAnwKGwvAuqF+i32NO8=;
	h=To:Subject:From:Message-Id:Date; b=n12inP/jaoK+I9/DOeLeC/WDNrQ8BRP2nT6p14hluNdHthGwv1uv/gz87IYsopFIS8P77OCyi+LRnb9QkcFIHysrUPpDAjNOJ3xETqPNEDpqBuOrgR2oFDPtLVN58lAug8W3e0giNEFPCSGQjsAuTb4BxCcQuR8RMdOecpYV/AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg6xjyNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg6xjyNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3382C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764547373;
	bh=VAsz4bdmOvJGm2DMrpogIYWSsAnwKGwvAuqF+i32NO8=;
	h=To:Subject:From:Date:From;
	b=cg6xjyNTlK8EP+6586JJuZcQHbYSUiLsyK47ldS5b6HibN7iQWQs1IsiOjqzLoF3n
	 jxLnHXK6Pb1lJjfj0TUwVAyHal/O1DBkH6kDrE4b9KFeyEIPNKCGWu33VSfGF8xtwk
	 Mb4jZFBx9ah2Bt4vskvt7Nmg1DQkvJPvovmMDMUnx3XpadoFxF1soI//boWk7lzOUa
	 VJtP20VgvR0LXCDpiMbEiQKgWgmYup+fN2V2UeIHhJzHhBzQgWrYO2FXJTTiqmAHaQ
	 dL3bs/MTQbVHy4ZsW6A7RNeYIGNvQ338vRYcIpOFqaveGR0U9WvQvikHR1tW/0rx0K
	 0rQxu6lN19Peg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044FD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454737358.15058.190247114015301543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf00582680c2fd785b2bc2b579b627d81a1e41d0600c958dcafb7e821348b15f
Date: Mon, 01 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764547373
