Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91E5228
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720748243; cv=none; b=V5ULlaX+/m1GZ1sGk3Gl65X7k7ZvgYFFVgNNrYpC3OC0VflH4MInTTfNIQS0BC2KkZPci9xWV6I6s5YbDWSR1JLbzhqgG6rOqTZUUyIbrchb13EmfeVqwiUThvpHZL2g6pA3UHG60mLCEPdpnhZw+2VOVoIwSjz/hIFMw5WIrak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720748243; c=relaxed/simple;
	bh=Yl6a0GicShS1gYiF2LMi/RjRXaPhQvPaKY2trskbMZs=;
	h=To:Subject:From:Message-Id:Date; b=arKAGNqdOYiLrmeprhApc0dbUWGe7w591Hq5EZ7lvsEVdCuzd6U2uxnNRZXod4JKoStlqSOPvoWwS3JESZNAIdyz6ToGwT1x4OuFuM/SyBPD2BkB55Wf7Wj+u2DC74nht90TW5wAzRPslUCLCipanUAlhUGZyLVKwcn3Hh3nGB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDEM3yPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDEM3yPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC668C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720748242;
	bh=Yl6a0GicShS1gYiF2LMi/RjRXaPhQvPaKY2trskbMZs=;
	h=To:Subject:From:Date:From;
	b=DDEM3yPYbzpXH24bmPucBYV4zxbi/ghbyDObr9NE/hfe3cDgGZMSR47ZM99Xsl6iE
	 UZaza5k7eXZUiKJMf5COLiXmobvU21D3SLz7eNr7k6xxW/3YRHr9OkHVJZUlXwQWRJ
	 59U3YjEXCfj4/ju03yzx/M6XOtzynIVytIZYMSWGVPoxnDsFqTXzEQYpefdkGQGmHe
	 kRW0wNfm2OfT8eKpofralVNal0z5+bvBAjez5s7cjaK/P2LKTAS7U7GrRIi0NeQN/3
	 /IwdpWctBQz3lh6g/BVNy/VaBrxVTy2YovQqNFwZ/TBJA+lp9uqk2+stG1UYNfkDJv
	 FhWgMAVpoouDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA785C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074824275.16489.3549167927786958798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293939dec66506321348aa86c82944b68669b10c1ffffe58c6c94d165c659b4d
Date: Fri, 12 Jul 2024 01:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720748242
