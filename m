Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E1823BD05
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771060494; cv=none; b=KUM4rOQSlW2AH8paXuojg/YGgnUdbJP++lro61oZYTTdaSZdC9/jfue13ErS6v7c9Q7Ci5SCJWnlloQdgBM13fD0dfrV2hAX1C/rAoil1v0O0hpR4vfDDoL9E511Sre9yuEXFnPDG/zjW9fc0wtufjr/TjY2wi2XU+V9S0LGOWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771060494; c=relaxed/simple;
	bh=O2WYLt++dLxObUBWnDnWvwM+jUZIEPuQoEMD7UqO5Uk=;
	h=To:Subject:From:Message-Id:Date; b=k22LPU4EAlh4ypKDinNSp8zm4wAftdn/3I3AFaQnXgJ2DHlYHaxXUQPYW5bMiXBrhKDgykE+JYbImun06QHKPVd/5zeTA4HJ20vJxdUEkf8NdWmhs5Bd2/V6Ktub5gfEtMBHISULPdEyBpjNc1lwY5CfcRLv5OL5bNqFf8M4Fdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2sCdKAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2sCdKAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8891C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771060493;
	bh=O2WYLt++dLxObUBWnDnWvwM+jUZIEPuQoEMD7UqO5Uk=;
	h=To:Subject:From:Date:From;
	b=t2sCdKAaEmS/TFNc59/QDJ2t/PSZxS/JzJKDJTD7T2EdT6hppBeLIJHxeXzVXGtH4
	 dW3TWzPb+WW6SwuVsMritKspp09LMTJ3HW/wTiDKfrWQomOIabFJy0ZET2AOBhbISr
	 8XfFzcM+9koXfDCG/f/nRPKJIuKShzjsvZ2nZEwRoIZNxuyn3ELz+kAQ1crfDNEbl0
	 JACKLQ55sLB1HiwBRq1AfXUwlI6JOX/myDuYAnS84pwPwhSQL+en9rrHhul4t//kc8
	 rStZSTPCbGLibeLVqC8ndlCa9sCfQYgSL0CayjerrCFRj0j0yIBtn032aOHKpsACRQ
	 ftNUeWSH67gGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E2BEF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106049366.3052.9102099120675444532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856124379f201d7098deee7f6ad42a4fff9a964d8bb2acd2eb41ae270900fc82
Date: Sat, 14 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771060493
