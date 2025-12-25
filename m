Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E677260A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766677434; cv=none; b=lW5A4Y4LDR/XR1oFKQ30mhycYGTMlQxCLsRXhiNkavkFh+27rwt3oYUNkLMSyWA0xue27/cx09GB6m3ChBZYA+6uaCqsvCB3tzcwh6AMr1xd9G5ylH8Dm8H6aShrviCboQjkO6RzW+0kIudg2HPq8nYLt6vj9T3op2gwlk7/BAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766677434; c=relaxed/simple;
	bh=8CxnK3oglBoSflA4HlqnKMTQdSh7goRxUftiVVr09M4=;
	h=To:Subject:From:Message-Id:Date; b=CYBfMKY01a56sk60hetLPI6zhbGwYnyujw1q39y+oeXd9ShFDwnyxPPH3UVZWAHmUL5lLVr3qq1KjyY5HJ1wQXVCIHSfGOHGgHjFvcp/G/aKWeU2Y9RHPV0CWI2OsJ3zHQtBc3pKn/vezzGChgkQLi1iS1YhCVFo6oDxxciiaSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAVi+p8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAVi+p8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7793C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766677433;
	bh=8CxnK3oglBoSflA4HlqnKMTQdSh7goRxUftiVVr09M4=;
	h=To:Subject:From:Date:From;
	b=TAVi+p8LSEq+ZA3+lVj7G+igPReADWucVVDpLV0Sa3xIA/HYhQpxofwz4tK31PL4V
	 DvqUl52PwHbuG6M3mU8FK+DlCu27qygImyfRwmlHfhjSaWewj01RD2TZlIqDLJNp2Q
	 FdwjGR6ToMfOcf/RMFw9fafPYC81W9X6usWOqLQhKxt+sehDy0xmOWuugq2bMjzGg6
	 nENOMqk6XU6yh2eHU2UCk+fRl9UYU7LktBIakYLnzXjjPXbepcAntDnskTRfF1iGWi
	 f6MzIjBu0N9OF+alNwC55em+39u2xmTyGd8dU1x5OPNhgFp86xmLqkTtQPEnu2IWSd
	 r3JLlYEtgHBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9689DE7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667743358.3339.6145517507124414348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf84d4c9afafdeede7306438da20114d3ba4f8abda651481c175eac230f773ea
Date: Thu, 25 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766677433
