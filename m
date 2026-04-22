Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169DD2FE579
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776841054; cv=none; b=mLqi3yUV5PYo2lQPM+bHGAzGgabAZacoMelcpopitySNcRrgu0dWkOa2CNHXh+0DYxYX9SYdWWEDnwERclFOYojvp6J5KtqcShxRj+04SyPfVOvYBqe4W+QsaTRn1lvMTdyRMFYN/EHr+T8Dcx8p7Mpgs3+2YBl32ED2QrHngHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776841054; c=relaxed/simple;
	bh=5ch+CKsjfbJRKp5Hws3NsW/lTXlzG92Kmx6D9R9aCqw=;
	h=To:Subject:From:Message-Id:Date; b=bf/FEKxUmlB78KNG6pnRkyNBgFnJwwkhjPAweh+qzmQtKkS0VHAKjrpQA6ERqh0XqkXXYUOct9J5eaqqR3pd+BYeRGWHh1ck0LI1AIsGWxjsMgeWiSD8S75rWDyE3NtQoPueFJzp5y1NNVb7oInk1Z6W1ILWSZIR0AZoglc7luY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e22LnRCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e22LnRCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D72C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776841053;
	bh=5ch+CKsjfbJRKp5Hws3NsW/lTXlzG92Kmx6D9R9aCqw=;
	h=To:Subject:From:Date:From;
	b=e22LnRCh0gzryPKowkSmvUSpO6DzlYTrDDmYXTSruZ7myFIJaym+2zqknBlI1Agxu
	 qS3G718y5TXdya0o6qwy4+xjqUPG8dLitlwf17Ywf+ZVA3KiTFcNBwqbqNY45cGhv/
	 YcX7u252Ur6xvyCA+8AFx62ZUqkgwIsoObmrNgDSBSpddbz5QzQuaTCLaRr3XU/xkj
	 YE0Ba+f7afsHZChOC4yH4xp3/Ymwa9x18NGshzFD5+6dQtdk91tBSEpD33yhkvLhRi
	 Q1lm4CCkDZROtOGFKEVnh/fkQ6pBGvHomNo8lD2XChF59gEWnlDBvruzx5EyWWJ0cT
	 HeR5BSN2d+45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A38F94CD4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684105368.15563.464770613245722431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5d51e6dc47944d348b114bd5f1402fdf775ace5ceb9ec76644af71d15af435
Date: Wed, 22 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776841053
