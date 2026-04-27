Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E362EB10
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777333654; cv=none; b=kdny+3TrEBz9zVsDIjblkGDtu/QKOMo2T+vninHYzyQgswagNUsYjWU2AVzkTTVQm6LabJDLaundyekfAfAS/HYx4Ye6W3U8Dju5osYJKY5db/RXg3pUuSugS35Tg4PHZBk+Cz0qiMiKiEGHZlhRRDjwLB6gZMKQMUgReAqVZ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777333654; c=relaxed/simple;
	bh=dlDumQ/SyXy6pFKDMUSHMjALa/8Lif7GIAKYSjWNyjE=;
	h=To:Subject:From:Message-Id:Date; b=mbxmwjHHprdQ9kZ5s51vBEq6sL8u/4IJH87nBpcG6RK+CqVFDqqhSA4PTkj1t4/l8vp+XRy4/Y6qIOErlrbllufa0OYrrAb2UGOn0NvQYxoO1ZVOV2kOAdwxHVL1f0ZdYFUJKCB7FIYoK7ZoDNbsr6iLK0v6KnryRoBH0IcxV5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHTCHOC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHTCHOC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7665C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777333653;
	bh=dlDumQ/SyXy6pFKDMUSHMjALa/8Lif7GIAKYSjWNyjE=;
	h=To:Subject:From:Date:From;
	b=hHTCHOC06UDgUN3BOZLLNFbN9mPmeCRlz6ldBqGDjRo4Sb6dMDYpCgQ+WQlvJY7FQ
	 ru9Kf4ruikmn3qDxA+sl08hqJrWRAx15FPrx+1/W7GYFpMYZctUTBGi+Pz/fwcPc0X
	 iD1fgTwfKlNH/2hZHhVW0SN6qym1gHptz34v9TUyLQaH76n9GYPPcGLCqrh+jJHQSx
	 PSlm2LAtfbWkDChft2Qkc2ly/hKq0Xrn4GQldYBg5OBiVK1I2ghTO/NfOTCY78u9Cb
	 5MhrZ/6b489IpmxXUl1sxknYxBZsS9z5skjRybxAhrU9kG6CKvQoyk/qlg+CfvTTwq
	 tnYaVx78pnjSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A918BFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733365368.5301.10586891586647256796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a30b4eea2366f555850d43bd85830c1a8d4560ca35742295a2781eea709f8b0
Date: Mon, 27 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777333653
