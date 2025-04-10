Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4858C1E9B35
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744288194; cv=none; b=EhaUEFLkLt0uPGwNcxpEVNONzLZ3LZVD0cY8JqW7XX58I6DKv45ZcezOXAafb9hGgfRk73iOHc2KTRLgaDvTqZILvyqM1OkNRYW2rG/VY4lajpDwBC7I58vlMNvVkuzs1gBCNc4h4i9nfqHCFfROnsh/ID9Df4sBNR2kdL0kddE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744288194; c=relaxed/simple;
	bh=Kfs89bRdaF6qJ9bxfdbJ6l7bxDACKaSs1pm21VQrt/E=;
	h=To:Subject:From:Message-Id:Date; b=njXmvsfcykVqT1hXCsY0eLIsjojFxkhmhAifl3cmIp0JEDhWXs07CWg4FDZKlPSs86D+e7k8t1SAswvcvJ9jAXdi273MildFxsS4TzB4k8kCQwN7ZiURmFTavKz/jmD2bkWSQesUywTR1cem+3hhklaPb6Ift6H9EV+E2kWX2y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isDDMuvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isDDMuvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3463C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744288193;
	bh=Kfs89bRdaF6qJ9bxfdbJ6l7bxDACKaSs1pm21VQrt/E=;
	h=To:Subject:From:Date:From;
	b=isDDMuvVtQlrJmIwCL3F+iHLY7xHw2q/wv+IOpRfzPpptNBV+KbDdG9ikMk/Vh3gD
	 rKKmYb4ALXo0iH48QCSS70dFDd7HySM1bfwOUgk0fmmy+oC3zJGg+CH88j6wRyt/IO
	 ahqLQtr2H4Bjg22Fdg27VNioxZs+vwIxgu3KTiUEGePvDjJtOjnSSdHYYzhtCgsRwE
	 8Hh80PcwmWsNhOu0U7Jxrb6a/tv3eX7m/7CAqZ2j42FpEhLkOcLlqJjtRTKO6028xF
	 ffAsmDqzA9I/EE4Ioe0gmUsXVKPUfg6p8BKWVUbYlqKR1l4tcxcWnEMcoHSxgvCtFO
	 uVQoCLFfxNWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B04EC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428819362.6046.9961520531462304117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cfe1cd8fbc83c68107d0186cfc72e9a9f345dc032cdc630060de051a26e191
Date: Thu, 10 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744288193
