Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A63CA4B
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759639195; cv=none; b=W/5nW8ZWYSZkvRtmtJyq3lZuvGqQ9jvvquZJnkQ0LxTA6adLtTvEmINJyfANp/rXFLbdIlxkfiKpdFPKDlINncjdSrQoSlDMm57nSLB3cB9UOQLPv2VYQpuMMEQrxvFNHq2/LgmVxIT0KnslX22qzTfpTU8h4RDt8P9JJokzoWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759639195; c=relaxed/simple;
	bh=bH+kEuLC8eRAiYCXhfme953rh5Skzm0BoIMvHY1lTog=;
	h=To:Subject:From:Message-Id:Date; b=oos0y5h4hvlaM8ygyX9HUIuRYTyvCaouBr7zLns2EaLR8ymfa5CC9TrwB/QrdoH6N35GO71UpLzWAH2JxZhiOstz4z5YBRswP+DkH1K0VOy2ph4Kk+5gQsUGUwvMaFaXNwsYEtNlRKx80WFf3iLEXVNo6J9547FP8cytlDI5X+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGg9Hco5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGg9Hco5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7999C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759639193;
	bh=bH+kEuLC8eRAiYCXhfme953rh5Skzm0BoIMvHY1lTog=;
	h=To:Subject:From:Date:From;
	b=vGg9Hco5or2pkIW7AtcPCRPVq9u1QMRH1BaFyiRr9uBM73CbEv3xJBwxb+spdQ4BE
	 bdBOu5kT0L1cAw1k4J0EF98Dz69E9P9+B0DggrqStloDzEYcbLgKGR6xF1ItyccNQk
	 vnzxJRB24oEpSJJFdAEh4lB9bE0bWiU1mPjluf7qDodIqVsdbjy5HYB0LOYmQpiCTc
	 4DzI3qjFvcS/CxvEgNJQPpR5ppxDWhDDO/ieHZysYnsTCRDYqW5Hf/Li9KydR2NR8F
	 nfyWSLat1qe+F3ZabOlMHpjKvgc1l7aN3jkjJrD4jLD8NEbiAs6aQvGUSuz2LNLksB
	 6OYUPOvkSUSAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C1CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963919358.30139.3503942409008099324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad28ea18e5e3b38b775b7200da19f15c2580cb8584ddbad16b1845a82634c902
Date: Sun, 05 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759639193
