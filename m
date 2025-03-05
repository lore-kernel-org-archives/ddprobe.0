Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CC71FF61B
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741213135; cv=none; b=URKRjk2KpvR1QFzrJir5QO80MsAiBSIoj6/GZsa3+B9mO6Qrvazj5wazjIwvBg/Ci3hrapakDSfGapgs9+4EbmsjEt0WTpUVoKZcdwr3EGUkIfyfj7iMD+Q+lATpghkH5gPjpwDOAUn//B2YRrlCE+MFS2tbXNHigcNQeIn0z7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741213135; c=relaxed/simple;
	bh=fR2ziqAwo7MFFZd/nFldrKvqUBDXcMMszs8BgAsye+E=;
	h=To:Subject:From:Message-Id:Date; b=AlyiPsFdR2vvwm92OlV4Wys7brc7XWpoadEIZbZRWQ02DlSL7CylU7/rr/b/iT7cgsJRxviOrdZcWQl3/jiUlhSQKYllBpG5U3+3HTGL+qvJYW+88nyGhrHlPJ8zpRaZYWcPmjq+nbCInC4uw4YYW2WGr7hv5n5dfZM7tRMlCHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m66ec1u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m66ec1u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC57DC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741213133;
	bh=fR2ziqAwo7MFFZd/nFldrKvqUBDXcMMszs8BgAsye+E=;
	h=To:Subject:From:Date:From;
	b=m66ec1u9+HI2cedXFdRJTWmj5HJ1kWQB4gSIPxjH9akVLYWgDxa/xIDosBl5HgSQy
	 WhWRfW9l81hKC7ecca8s6aiVB4zzOyV1PkDTKNeFZl1bgrLTiqseJKHzxR7fRKn1yf
	 dyULJelW/F0E9QcBYqTfltlx1nYOTqLFhB1dr2C/9TpR9B/Y4iNGzdMaoC/6/DGKj6
	 7DUnr4GLemXAdfOUrlZyzRe9GDwtCifjU+9bkYZDUZ9DUnjhQAvqAwj8cTIiLj3nBI
	 UY3a1zQb5GXAVbqmgfiHxvZftItablOgCWe/hleZSPLzgD8UmMiOuqvyEjuT5Vo1Fa
	 FjlSo116RNQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB93C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121313361.18887.922658894794238280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d163dc414061d4d0e475f7b3b1b138f843c55195753133b23fd71a8711dfc0
Date: Wed, 05 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741213133
