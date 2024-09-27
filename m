Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466BE14BF8B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727474154; cv=none; b=sbbiy9rFFRbp81PKlkOrp07/T6886ME6ItrVnGBjj6icgj+gniVHjbt5jEV29y0vuhCdYC5viOoT/5y2u49DmMz+4Fgtc15Bw7ZDVTvJmmlLMfgMzjxATi7B6CEdNX2oktbAZ8/nB6LKH+yUc87X5/78N+S3Nu7UwM2hmZA4Itc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727474154; c=relaxed/simple;
	bh=nAQj1Raw1yU61SxTNSX0DHlnI4jj/XQwuMYB6l/xNUo=;
	h=To:Subject:From:Message-Id:Date; b=OjyltLM1TZuKSiyDXWyHh/8iojPjr6NzVvINGpmaW3fX7pYKp9U6dkE3DielCjttb9z8uxyOEZRNJrijat8C9udwbBE4CUkjZk8A75a9Z1iy9sNgAHElccgfIyglbOCshx9Z8Cm2EnCzn5m0FlSc2xIR5SB4jWfmi19Ndr+wUms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B06vk8R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B06vk8R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF786C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727474153;
	bh=nAQj1Raw1yU61SxTNSX0DHlnI4jj/XQwuMYB6l/xNUo=;
	h=To:Subject:From:Date:From;
	b=B06vk8R+bpFjdKg35RaX1ZVq2zwM5tkrKuNUEa7m5lwenejs1PU2FpaPGd1013g1Q
	 CmCf/o8HmpINVsZ2MaTfDJ4O3YIqMU8RXwEOlPzufUT92yfMb8sE3y5BDB8v0nvCHC
	 Co1OKxKq0bXbJe4jSuDmLZ8FklPO/qaBtaO8RDHttrtmOPY/DKmOrG6reTvrKbRrdZ
	 4sEpYUy7FsZ2IOIX93N+bNHpW3G0shEswKS28ngJobNzCW29snxKO3sLiKZjHQ+bgq
	 Cul+Cl3CWSDlk2Yvt/R53xBqtRy7whnqMUK1jHfin476dcUNPljZiPdeUvxdGYcknm
	 w7fbaHcpMFqiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C25BCF6483
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747415363.21170.12568431614190935908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e8938fd02d85b68c2409e5beca10be609492207fb1211c6e8ffaa3fdc20bc4
Date: Fri, 27 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727474153
