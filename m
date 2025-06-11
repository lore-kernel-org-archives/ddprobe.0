Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1369E231821
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749626994; cv=none; b=rUNlPgtUZS5zrS6mblhMBUU+D2solS5fdzH2ANFoe0LGyR1JG22i5E24Lw9k0r/Kjy0y0FjPuKuNTNv3Y4l2CLXwJGiGP+OjG1kwfjiToK64KOGTrkw53Tct/4xvVyxSKX0Caex0ZZQQ7j/wjnL9uej9l3CuS7p+Sd194YW2Gx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749626994; c=relaxed/simple;
	bh=KxPI3s0bn8loJhEOd6Y1K9jrOLlhxYk+WU+rOOteZKc=;
	h=To:Subject:From:Message-Id:Date; b=KppXZ3IWN/fw9Rt28Fn0o6a3fLJxI6wL0DFBlIXlJrZhTWrRm1p2gFLWwSyzZfaQXWe0C9nUwfLJUM5wbZ/mA2xh9epMxlT72G/TGyyUHmONm1pANogehjrnz/u9TzTMEsEXOSokvUfUWF0PcoaK4RKNK9TCRq66Yc3folMcwD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0UWJlUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0UWJlUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4121C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749626993;
	bh=KxPI3s0bn8loJhEOd6Y1K9jrOLlhxYk+WU+rOOteZKc=;
	h=To:Subject:From:Date:From;
	b=J0UWJlUzBjLE9x1o+Amc6bl59JGERuVRUhXpmu3cgCh0VO9HRW3awniUwgFIK8cqe
	 XssjSS1soupwIhQ+UFUksRQgVWQvD3MCKCoZyVlhfj/VjAPg9o/eL08XwT5rv0UOKS
	 MMmndu89lEiV6Rq1LJ2XsiFdehpQ9iyEQQEzxTBfJPC2YeyMbusmR4kfG7glGfNJdi
	 V4AdRM7C2fmKljwiwVciaGXfIbIleVmmnrm53s4s/9Y2iBFc24vs39x0kFtmPCrvSq
	 jmMrzQPkSRQukP7yjk9KEez8sY5L/2WFaGi8S/BcINw31XZQPgNCXVjdyz+NEbwC3N
	 5hUT8BqtVb5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90550C71134
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962699358.18921.7209648581979932745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9ad5c2e3ce9b7e1fefc4e5b7b6cde9dd82a58197c06501ea22c6067f62addf
Date: Wed, 11 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749626993
