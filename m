Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9389443
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784431114; cv=none; b=ujlmSLP0dzG7Wfr5ZNbRAy48myhnedwQN2mLFXbADbTSKHfqrDpQnrbXyqr/E95V3FNgNHOJQdkPSEdg1BEauBGELwnZ0/m/TSRVWeRqq6KSo7E3uYlbrRGSmIYYt+IEtZVmVlYdAnDNKpLTXrTiVFRh28fmra7aABBTVIP2KIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784431114; c=relaxed/simple;
	bh=ylA4HjkZp2Q/lfTnHIYEto61kqOOQWPKu1LwuJLC3WQ=;
	h=To:Subject:From:Message-Id:Date; b=SgO5pqOtYsVeun/wDzJrfQ6677HeggDHxAq4JfBdvJp/JFz/VdLXyv/JeWR+znKCN/fLnhF1g+uiKdGk3yDp8dYiIm7wHDAnRTiCFc7rcWOTO+nMUlvgO5/GWTR6G15OqXg7c2ECdK8ygRTyjiKaBNb2sKi88rSh81N5sDiRrRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psOyp4EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psOyp4EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D869FC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784431113;
	bh=ylA4HjkZp2Q/lfTnHIYEto61kqOOQWPKu1LwuJLC3WQ=;
	h=To:Subject:From:Date:From;
	b=psOyp4EH+zgMeAJlNpPnE104yW97CEH8o49SUlg//OQ3q5hIqQ/E3EcRTDLuEV2FX
	 JHqrEHnY8UuKCaCNvylljfsXijTYwXkP99OiNcmpC1z6D5WelGPJoThsr+SXweXmhW
	 q9EQB6PC46sO4+9cpPC7UIQvcJSD58fYcG6ALT8ad0sLtv5LE4Te/ptWszd+Nq1i3O
	 1gjkS+viI6UhlBPL9vFwIePUJKOQwoD21pyuiBNHA0t3+U95P7fqNnJLoMXFJ1SZ4F
	 Ky9JUEcLOSG0wRI3ogFCB/bNQMrjDXflERmiqMuvWlVqrEho9tRdsgYZKy1VVgkB8K
	 en9f2jMIPH0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF8CC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443111368.2109.11565424530386436804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f791e9cefc6c98531ec14ab7b9a57d25f9bb08bcc88e224df5b010b4a0fce74
Date: Sun, 19 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784431113
