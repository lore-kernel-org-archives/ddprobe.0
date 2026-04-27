Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F09540DFDC
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777268854; cv=none; b=WrsjmfJMt0CTWtK463H+5H75dxL4HuUs8sWXsceVgZMe16TiDHGEE1kuRCHtYIU3jUjx+NtMmv52v5XWkIHCG5LisqLIuaZy4K+1TSlITdnQLrUEk7egmAj+R6FSN4E5+UogavIIadmr8FgY75od0pK1x1U+MI1HCHaBiweeDbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777268854; c=relaxed/simple;
	bh=r7I3zxBeb/g8YuTZEH9TK5jmxsjhPuosxBXmhKTO3uE=;
	h=To:Subject:From:Message-Id:Date; b=AChg9CoDhAuKstHPsKajvoIvU/+e2YtRblaVK0enyCgN4LLZlj8XStqtRdgzM9t3xZQklAFSxE0jDpmduagGgBFcXGfJrQGU13xgPfj4pshnHvvOFcb4mb0okAgbsUKYzZWcP6rV33Bf3NCW8e0wBh+TKsCRi1b7JM4I9IdmwW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpDWmszS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpDWmszS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3167C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777268853;
	bh=r7I3zxBeb/g8YuTZEH9TK5jmxsjhPuosxBXmhKTO3uE=;
	h=To:Subject:From:Date:From;
	b=HpDWmszS5mbUSjcDp9kEKojLQgy/Dz8D/nzLsr9kfZHNxQcizLHPypTmjXrNTo7h7
	 5WnJagQNhHx/O5A4ajvaa7XXgfLDV0oD5XOtC2+PoVp+IhE4gRjzchaKtLKZdWt7nL
	 tpS97HLE7fgP6Zncs63LBSg7zOJQSyTS4mgXZFlvAJ6G7znFz5kCBTtfPoSzbHa+Ni
	 9ZCpu1xaQpYlMga+32zKAzt95jjFBZZumdiI9TN4MTalAihYdpp914p47Cwij3W8rP
	 wtBmAGdtl3SoEzUjmppQt5V023yFjNRcccURkrafAKgzCC/B6C8knUWh6ChcK77bNu
	 Vb8iuqHAc7nCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96EFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726885368.8523.2057927947672494998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d361e9523d7fa3cfc9029f43579c46b52218d817b85618d727059f7588e78c
Date: Mon, 27 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777268853
