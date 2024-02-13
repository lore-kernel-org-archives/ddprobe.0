Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B3C8BE8
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707792497; cv=none; b=uefVv5NTp5xZTN26tluJ3uY8kAVPwCzcdZLX/tK5aOEntSyB1BYDn12cwWLcpRGDYIw7g62pGzcosfYjhkaKlacm4Xs/C9gUUbJOpDHHD7wg7q8fqmsxzdSQKDMyT9VowpgwSKFnVYBX7RyLoMqs9zAXuou7mYHZUrNRLyhQKH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707792497; c=relaxed/simple;
	bh=cfb7ntvZKEbTuv5+OZjbIPzGIkiW8CVhg+Ywg4pRDZ0=;
	h=To:Subject:From:Message-Id:Date; b=BnL63rNgwWr7oMoPMpEzJRbSHMBe/kwtZt5tqJX0x1Ft/ID+oPuod1cDR2wqrn41J/l+uHH4tUis1WKlWHGXawVg9x2QsRQo1ay10L95FkB/qTVQtKvBhrAbEKX2ubYtSQJ2VktOx3j5YgoqSST62PPBlxv72IoClUOW2Ex2DGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vER3Yt1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vER3Yt1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2FBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707792496;
	bh=cfb7ntvZKEbTuv5+OZjbIPzGIkiW8CVhg+Ywg4pRDZ0=;
	h=To:Subject:From:Date:From;
	b=vER3Yt1hcixk+MPMwt6VN9dzpiLPwsaYL4Fpd6oa/4OHgdmY+tSV+9kjgoWMVQ/Mp
	 9WDUwr0BbZCcU1frMQ8Id8K5riL3YRDveqfoJM5uyQCSO9jl72EPbyVFo0ezsXnPay
	 ur+94R54JRt9GC0s6UCAmm0A+1pmGiuGzbykGMfnLZye/KFSrXjvYCeOA4Sabj0mOr
	 5vho1kjKaT820+U8vW+A1xomh5VqFWlIcQvI8aT34tmO4eAc05QsLnh8utcvD9aVy3
	 +FJRNYOsOwOhyE3Ki2VsP7ys+BJIkjK6VDa5j6YmpSMCM5KF753s7zAOjs8vW7BEBI
	 r7yd9M7zpaJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DA7C4829E
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170779249638.1402.17459355429913390625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9029e4d2d9eaa658f08ee13f42c8ba4e678e5ba468b9e74599b248fcbd7a9e0
Date: Tue, 13 Feb 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707792496
