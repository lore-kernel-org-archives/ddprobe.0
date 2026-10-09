Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4478232AAD6
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791552634; cv=none; b=DXUg353NLHTo8D1/jN/nwMvQkLoQEbt+2q7QDYGEatRm0D8Pkpuhim/IStAp79ytTuMWfy2tGpMJEg40me1L3stnEGmVQmIB5CsxjYofGdir3rio2Z0c8/kIEYGlBH33qIwY0P/RphH/y0biTk2fljec+aSkE1Z1xSCo0ha3jVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791552634; c=relaxed/simple;
	bh=Mo7/kJT2Huwf14IqxxTrOqbQRTNxoyeJB0la6V62QTw=;
	h=To:Subject:From:Message-Id:Date; b=LoKxq9AR0sbfn+z0Y5bG5I471u2NjwX51ME2QZZw6IDsJHDDya0ke3laXi8BrqsokglwVnccn93K5/ii6Vdfl4yHD22MbABIfUIJSD+qlYN3hqZ5DkFVZpWlheA0XqbCDfd2/PqO35QY3Va4Ghq/B9+VhgZt4qB/cCL0ANAm/sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9HHynHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9HHynHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF202C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791552633;
	bh=Mo7/kJT2Huwf14IqxxTrOqbQRTNxoyeJB0la6V62QTw=;
	h=To:Subject:From:Date:From;
	b=I9HHynHByOLnzgMxmxpa+fvChGmWumQ/JsGE0QLRykQYr6vj+8KC670ulLQmOAfVt
	 FoaC1zhuoWdsM8Lp+0h3/KhLTwqk/mUwVjjDLGFxUbjaeckARB9OkZpHciOIomLktH
	 F4vZ4j0HWwBvJTteeaqSB+R0KUaWGHHGi32O1QweEbgyf1A/cyiENMTx35WZNqY/t7
	 t/hbYtX+cJoYQdxDq0CPbWK+fQyqc1VcB2NMs7WR/8C1pxuI6fH6A2EMmEsPvqlcEX
	 qxmHDBClhdM2touZoN4P+yY3GdCJm1NR/PPr/jt9rJEbPibISDpQOAnvW7NT+rkNo4
	 ADvjq1mLuUY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51DCA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155263368.24420.10231725541117856594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b15eafa01e92ecd0720819f6db5b496d162004e329275d483730fcfd816b22
Date: Fri, 09 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791552633
