Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64114346E67
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785756634; cv=none; b=T6WZ8J0gUEy9HSuH6XPCF/mRvpv+NO4XUs7KbFpEkUlfjuGU7hNzfuebFoKqRSmLDo0oT6BgGSkqTXhqA7D1N7UHbtAWIvD1Hk8YHtcldZoV2tY9f6FV3KoyR31Itv/1EWUlqhHDFadIn7pofwrht1QkKZUOpyTONi29qiIkfu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785756634; c=relaxed/simple;
	bh=odUh+qzBhDHY8UtL0FnbaOJbDjI4lnO94DIL2nX3PJI=;
	h=To:Subject:From:Message-Id:Date; b=fGlrblitYNUR+s7ncF80EDosCTrRYLdAI/Db8lmY+L7ILLPVBRGNiG9ykB10xdygsaxOvmi6G+w1lDIL2ZfEfSm+lrV4gAkt0LMIbSYxMY2KJxzMlkHzCHLESOv7G7eFj8hdQzDF2IxwHgNF6euF6B7yzczuNenyi/pWVW9AEdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJfDA961; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJfDA961"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD3AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785756633;
	bh=odUh+qzBhDHY8UtL0FnbaOJbDjI4lnO94DIL2nX3PJI=;
	h=To:Subject:From:Date:From;
	b=FJfDA961icoVX7Q2BB0U9gFd3HA+65rX2ZcTbd2VlhCNO3maYmJjPHKauhUKQ+S8m
	 0A2LessDfW+meJmJDxH3iokiGL9JGXdQocUoJeBGku/x3x3ughH5A3he+EUTwBtz0u
	 tj5h3XKa0z343WfXOuXa19xbPVfrEMAdWqS4udiQDNTwBngB2I9xmXbL6rVAUQ5u0M
	 3klJqCVQMaSj+mSy+7OThFTqHAN1LtH8K3OnYtf2NSrh8EKXAaH1/Y6Cs6oI/+aXV6
	 RrDjM3e6ChKGvPBqS6tR8fRwxjg9qrehwQo/lh33AofcSaRXNZR/aUpbxKh6p/dAgH
	 Ba0h63Qq3QvnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF816C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575663370.22561.680157826575500091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2ce66f069a03739a2b9b14b9728a7f5c46019bf279e89d72306cc6b6d9169a
Date: Mon, 03 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785756633
