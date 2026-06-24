Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522F13DD53B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782323254; cv=none; b=ZZpjmxcug1JMDgD74ILuR9mhlmoZwDehcZJUjOkjk1Ytu0v+ezsuYQ71Wag+tJLlESsMKsNgouwBYPd1kItamE1aeazeE3/EjvKF81lnwjHF2VIQDNP4brCZLOTxEV9t7hxyUXW/30IxblMvK1fAcQr8+LYX9uQty/xaxVQBy7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782323254; c=relaxed/simple;
	bh=5kfA3OEF+ybtMVNrURxEEx4YlHIgju8wNzoMNTYvfpY=;
	h=To:Subject:From:Message-Id:Date; b=dafnpP6yhsswUKMfXEdmZ+t/AbT0JNwGokNJsgFtQZjixmUrSeELq96JLz7CVik6kAhIn+Xw420f8YJtpqIvKW5SDoZxLVP66jMf3kqAnM+15Pc8K+hT5EoSnRnsK6OZXhYukSece2Li+nd86DsSShTZ4RuUgJXfpEt0a3r2ntI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNfugmuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNfugmuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8C8C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782323253;
	bh=5kfA3OEF+ybtMVNrURxEEx4YlHIgju8wNzoMNTYvfpY=;
	h=To:Subject:From:Date:From;
	b=uNfugmuOHM5r13OcLWL0Hlpouiy7RnI8ud6o76eWpDHEUrRC3blgtI+8pmofOT+fm
	 CGrunIYTUNiCWUPkpTegPiUmDIT0rzz1A9qMM5UumUKR/5zYnjbrEjdNxWzTcd4NbJ
	 greqmMo+VXjiKE941oOaCeySi7jj2HNQKNQ+4aeOS/1DbPX5ym2fmDsDrpJbXh0MfM
	 MWsA2XOdc1z6ox7iOverCQe46GXI09QImrCjADnlBbWM7+PlQxqKqDrCLmSef9rzKQ
	 bFfe3jWMuNzeN0XIHCc4BTu8f+8aLji8AkWDo2hUUcFhoej5hLJOcJmlvAq5TCoHh8
	 cF87lHiVhLM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA07CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232325376.8835.9871766114548343082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac0e5bd26063689fbf928e958bf6ac979e798e2459b59b63be7cbbe754eed37
Date: Wed, 24 Jun 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782323253
