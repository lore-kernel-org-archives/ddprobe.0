Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3C354AF2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768374836; cv=none; b=MRJokepovL7kfGkVv23XWiP02iVnYPRk5TWfxPdnZ8aWoRgdmAMeSeeMPHPe3QSSrA9tFjd7Jsr6ZAXIFAFqAht8IElVmxEs2pX2Ap8acqbhHMT2aQk0n8nEwGTyK8KB0WOeZphqSbiOZm2uxp+uwwbruEaOzrzg6DJP/xXbGgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768374836; c=relaxed/simple;
	bh=2ouXysF0pY5lzaf4cYiaE2fcphMLvv/hXsuOiIPmLHw=;
	h=To:Subject:From:Message-Id:Date; b=IF00iK6ECPZhjxOGfXJN0LHbGgDsJRvo4fan7Ei2sDN1rdnG/yKSQIsqbzgXYFQhvpWXK7j06SfQMHuMLdW1I6FXnYFsZZwihWtAHDvO7bypF7Q6ATALV94n1waCk8Gn2sAPX13iiFDVT7xgamNIysHocelXu3QMH/Aog4GRpa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2rOAdzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2rOAdzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D40C19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768374833;
	bh=2ouXysF0pY5lzaf4cYiaE2fcphMLvv/hXsuOiIPmLHw=;
	h=To:Subject:From:Date:From;
	b=m2rOAdzRpCb7mXxBEl8q1+Rf6aWlZ26ita96jeJIBYzpgeL98MhzlsYCWz6xdLfFK
	 vC2eHuy8aEGZkqmvfsybvLNWrycD3MsJ2xnl/kmSAMmCxvEdQCspmG3KPYjzfvA5cR
	 bbGJn2ykdg9QSR7/aIsDWbqnqvU8hIgPCEsB98/Lv+Gsv/y2wv9kVNJl8JU98Sabnq
	 z69AZuMrCe7JSnxvCllQWqJWmIHqCuSbSbYEFBmgjN5V8NRlXqPCZg0ZSoOHT1E/lp
	 S39aRDzUV0JypCPqOAIYpEil6nIYa2ONRQEJAOvV1kYgUx6rTsbSjm4PtbxAUep2VT
	 OWOfpFzDFExAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004FD31A16
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837483358.15095.18036851776907848661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b8208f78b1b7b432d35e032add47fd5417a7525175982af087ff65147b6a3f
Date: Wed, 14 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768374833
