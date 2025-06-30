Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB938F54
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751303394; cv=none; b=Mxs7St/xOHbeKxfjO3NxP5ocMPvB9SD0RjtxgKEYtJkUiO10K/ah2m/xPFPT3kzYN9p9S5djgP1jsa2FQa+g+hwU1gfII/A88NNq9q1NxsBSxCDaCv0+t/xINI+rJtXLhBz32VP4eqe76DpE1MVUDrrtLRbO6JD4gNL+XARPNyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751303394; c=relaxed/simple;
	bh=Qdr+9Xyd5zB08Emq4NwP0m1LaS2xJA8oEbFmxl2VJRU=;
	h=To:Subject:From:Message-Id:Date; b=cPaxjg6LWAoBdxVWJNx8oD2ngqluta2JPKfZwleuvzApEHlZvTG1w+NzvV+a8BEWk835y0LxfOowaQQ01516RIaCDdDPyBwupj7x14rh9r/dsfbDIFmp51PZpnbgckNiM2o9sEHLgi36vPlVnq5JXaOLKdHVgWKlRrz3CAhrwEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1jLye05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1jLye05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751303393;
	bh=Qdr+9Xyd5zB08Emq4NwP0m1LaS2xJA8oEbFmxl2VJRU=;
	h=To:Subject:From:Date:From;
	b=m1jLye05Zwbe+NrEcPaufE9KFaDceN37TgdOc0KVnJZuVmXIVqKKGMBPPCN6DKvTc
	 /+9kC/5pZ32XOoOSjH205+DAXMZ2ZZ3210hl/aJnvjmolV2egvC2YS0pRZao+FGurh
	 6rj5e4YZisyLcWUuCotxGL3aN9aUlLl8PDfCv68V7fMkWouaIOuY0DJEQisbUynEdi
	 rJMh06D8qtowFD12zsXPC2AhdPfRzMvrXNDQ3sDrxZHYCvPmeJfsoj11unF/2RUjGs
	 f9XN8Xn7YPG6fIVzveBeTVBeAhPP1bilr/M8X8l96o0N31obmWZIE9gR2Zcmw/Anyk
	 AJXkyeAGQ+ZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90013C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130339358.31939.15031989355655388680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b828772df5eea1cae2a08f3599dd222b1a6decb509a916386065cd3da1b1282
Date: Mon, 30 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751303393
