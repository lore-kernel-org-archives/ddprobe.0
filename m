Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5890C37883C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782132394; cv=none; b=MuFxNGCoDSCNSj2/lmMoZ/hvPAn8Jg6qILGz8Jq1ADBJbS1xTCtvN8W5ffYJwD9403GdeKLTiEy7lN9c1OxPUoPloPJWNrX/MsWQRxWyF2gyoKfFdWxigVEWSNHDAdtFe45WHdAR0AmEPA23Y8JG88ZHo9HEJHAITv85PHkxYwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782132394; c=relaxed/simple;
	bh=T+agDHw/Bk6PscbGasJJtUiWXbU7pxLhGNHlLL63Jik=;
	h=To:Subject:From:Message-Id:Date; b=FZBwdv9oGL6OimizesQRk8b9IF0etdw7Lhvnt4/ah7wXBHoKl6/5TS6g1v8RpAr4VuGX28ycCXNcc63uOytFQk8bbybF1IxodWVOQwL6m+vMrViNpQ+djCsaStJa81lPHI+DBT+yd40LM+3mzoC3kI8bTykt2ZkVewm5VMbYmz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfrMMIOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfrMMIOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9349C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782132393;
	bh=T+agDHw/Bk6PscbGasJJtUiWXbU7pxLhGNHlLL63Jik=;
	h=To:Subject:From:Date:From;
	b=XfrMMIOLEze7fxN9SaKg/hzJCUl+00wJYkQU8VvwymA6KX9W5nk19aPuKqRfl3u5V
	 r657BseILcGIfSkZuF0CVn1uq5M8fuSr3XMb2hGTPubgRdgCBqFQEaPSBfdgMmemAV
	 1QhB08cvw3Ef9L/rzaiJn2XWzHNaxeAnUOxPc6hsbo28ALq5+1U7A6as6Nz0XolQVD
	 FXp6/9gDiB6wx2E5W9ywGvq5YPCLefAxqH7++zAy39+Yi25trpH/gnSopPbcrtc7T+
	 Th9xv+fzBA6yvCYdQJ45J6EryTJ8QbrXC+ldlGNLPGpYHDusERkokCwOMVqMGYmi4D
	 2Vuk7rNqZbezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB4BCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213239376.14240.3088734355833491864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3cbdbb4d2ea69e4faf2a16aa1438bdccc1bbb4d2cc4ea3892f73708b0fdf7e
Date: Mon, 22 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782132393
