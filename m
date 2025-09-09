Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3602D2FE044
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757397594; cv=none; b=scrq5YVnA5X0PjKsG8yDJBggyNImaga69meHwKT6tmgwStckY4mP1PuYqiLFD36mbDTzDOxJUO0OpnQehju7jrhvkQPI+QjVzvRUYopxZkjOT1KBfm7pd0OEnysjxw9dp9NLPcj9FHxkJVOQytMqWRgGZB+6epClxEDklKCM83Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757397594; c=relaxed/simple;
	bh=ZnA/tlrLv2LcddkbBgBFryAleoqIINoMn46VtLan160=;
	h=To:Subject:From:Message-Id:Date; b=JtZc6JJaRL7DbQD/JYC/64iQ8nfLH3CXaRwvlm9nWa2zRUXm1ozkvKPWFZLZgG5L1QwHEgl+sLlzdtLS4G2WtKuJXbQe+wDRRy9USPhVGs5DaS+W4FnCDWyfz6hUiQua9b7511btHHjKrRBHkFqU5gAT/+XsLmpkxhcdTHgeq7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l40DznNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l40DznNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6871C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757397593;
	bh=ZnA/tlrLv2LcddkbBgBFryAleoqIINoMn46VtLan160=;
	h=To:Subject:From:Date:From;
	b=l40DznNFvANdo3R6Up6Mp/uNjRrBxfAIW9ZAZDHijQS8k/YpmDan+v1pe9oDZlbc2
	 8o0/lW//sBIB/LPm8fuR0I7wFQChbiEDC+opaVcGu6TdTkui/7mCvRg9518dbYEQCR
	 z2zcfdmRd0iJIriDug2B+NGYVCVM/njSp851GPFoPp08OSQnbUSrQ58aqQGFnL1BWO
	 kEW4h2P6hupw8b5ZIKXguX5j5aB2ULo/Ol/5IwCmQ/TDFaiTfRw0iF3ukgMQOAc47g
	 2NYAsfr4/ALwFakiW0yiovxmy5lErLH/VHg9717vM2O2MHucra8bi9QqV+J9XVzor0
	 tcyjDs9TOAagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42ECA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739759357.18191.6889560998016665000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15723917c4e459d5186f015e74e93072300fc588c4682d0c3e918f1806750e78
Date: Tue, 09 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757397593
