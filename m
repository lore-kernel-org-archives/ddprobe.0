Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F703538A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726769754; cv=none; b=kyJpics5aiHyatVtNAdJrzTDLp0nRdQr4I5H8/qHoLcmcErTxne32HJM8TlIyWkHwEQqel+HG6LCAnfcrmkt4un30la+N+7Ff+BXeDQClYE/vlzU47gOeEViTWfOyut3epoli6phQ6JB940mY57RSZni5+1QUuHqrF/veoV0hrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726769754; c=relaxed/simple;
	bh=CgxVop3ZwM+hT1yA5fX1O73D/kcFEsr46unG7SGTk74=;
	h=To:Subject:From:Message-Id:Date; b=PYH4B0N+bZmwfd+OQJAsYVIhSifnXBZQgUqCGmMEVFSLs/UcxX1DYKIYE1d0jLHgORO1f3J2+ujrpolkZCraSB0BM3KgXL1abb+rMtl7EcXRZOqHkrMx6WtEC0BzdRSgsMQRPRK6NpoRHz0YRyW0PmhYgdeHCpvVzi3jhRLOaY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0tQ6Sjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0tQ6Sjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A93C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726769753;
	bh=CgxVop3ZwM+hT1yA5fX1O73D/kcFEsr46unG7SGTk74=;
	h=To:Subject:From:Date:From;
	b=U0tQ6SjbqNQnFfY6/BSSurdT2HC3c5GckUORxESbUFa2rBd4iU7rPZ+D9gxr65zd6
	 iMW+tNtENU5AXRe+2/ezkgYq4djulazCkwEpfYaR0t89IY0DAnv491ffSY+NmR1I0n
	 GVLN234GPyekLFc6FqR5fBobqQokTczuLM9NgbHdQ/PStv9Lv85zyvIvpTMHjJoDyj
	 RQDv+F7vDZvxldSVLTRrlUNoJoLDYUgtC5Qyobs2kZWkvj3qjtjVP6c3G7y0iIFiwQ
	 hLezuenRJDfORN9G8A7ulKXk1SkAggD5i+v05yIFhrecdkvohDgqAJZ2IMBu4gEmxg
	 Letd5wf21Ik6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F716CF3962
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676975362.4608.13355548039097607829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0665f8d320539298998dfa4d979da69e2d1c5c3aa754f569e36cde4bbef5cda
Date: Thu, 19 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726769753
