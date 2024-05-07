Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584CC1FA5
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715047343; cv=none; b=PNyiz3lAiDL6rUHonw2viVnq/CzBQXgWPZAu9ELXHSOrYG3W4/thVNWqWvfKr540DC55nJXdhvcwLolvhLS7xpfqw/OkHjvXGdig/U9pXfwxmpzQKo5hySsBvk+34fYRmq5YIIZQX0wU845KjbIbNX3t/yoCXW5ic5RfJiQiNwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715047343; c=relaxed/simple;
	bh=oIhp/VgA5mBuybaJo2x6gB/CWBWWmfViBgQgBaHt0Qg=;
	h=To:Subject:From:Message-Id:Date; b=jFPGHF5zX2+u0dWYbmAFDn1k1ZWYmgUJo3zxnl03/74Nag6Em9hZyd6jrhfHUkx94+r0VZgRXatdC2y+bebY5f+s63X+dgfZzCRiwaw7pJzYsTWdnHMT9el1sBjHsEiwtfIkPWM3pM29HcJ6OKFTu5aUipX6C4SYU/RrEprSLiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnmGwhIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnmGwhIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA557C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715047342;
	bh=oIhp/VgA5mBuybaJo2x6gB/CWBWWmfViBgQgBaHt0Qg=;
	h=To:Subject:From:Date:From;
	b=mnmGwhIfEMZnQ4F1e1bvrNNTFDTh14Bcj1otNGJHhwMnPL1mH8USCGuUcID0Afmw8
	 LDLBu/yI25RBaFMHYDWaGptE8W+waUX2eikIUR+0W+IB/Wb1OdxcykZwx5FON5MiIY
	 OmcXnvdVqBs72ITsHmkYO32sVw0oTB1FSJsR/NfPwd1QP16MFjwuaYzRqAhgJ1MKNK
	 +L/cl8hdzT5fH6zRRAZUaqA9R2UENSsoiiEO3IOmy4qSOhFwH8pnGESKx2LfZBYHSu
	 LbQoTRB63xy7sTmlcioefTXVZx/d1d+NBvbFwXzj0uOr0NBXzhXBPWu0VSu8JeTk0y
	 dWYPXx96DdEdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A8BC25B5F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504734279.9523.7840722098472532690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f19a30f1ac7d392b38f08aa21514dd01edaa738bd476e0cae373957ea7b375c
Date: Tue, 07 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715047342
