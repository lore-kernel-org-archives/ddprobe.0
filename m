Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1930C2BE64D
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753362594; cv=none; b=gmGoN4qGnNZkcKAWZ4ytA2fbRQ3AGBAIoJtqn9vuiW69aefv8fSz6sfI10itLo/AVOlPPVrjw3cxHWOkHwEgoszOLD30nnVjiOGMapTSigQGsFsyVOdXvrtgMcnH8aHx83px6IBKArWQJ02Jg2a0v+9xzKXf70i8lg8fYkjyivA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753362594; c=relaxed/simple;
	bh=frTSjEZhioL6jy32PPxb91NAZ3uv2TxR9HxdhwRywq4=;
	h=To:Subject:From:Message-Id:Date; b=Vrqz8HjNw6r+TRN4chUq76aHxIXa+nrvnPxUFVRbdR5RxkqPkGpKdKYbXXFVwvNPSz9w9PyrtOy3ocR2yj9WKRlY6zz9qPu0zTHGNnFxg9VdrrLdyrJV52g0/1QO0DbIuOu0FGB4g8x8o59OHvKoANt5DAEEmG1R7B9+41/bjPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USCi+Wwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USCi+Wwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECC9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753362593;
	bh=frTSjEZhioL6jy32PPxb91NAZ3uv2TxR9HxdhwRywq4=;
	h=To:Subject:From:Date:From;
	b=USCi+Wwm54AQPvt1BOj3scraLLB3x4gcm7umpX24ymrpISoSrvTD0kQYsaxlnepXc
	 FEuv7di+m8Nf6FatKFsrCxsmmhZBiSQZEXI/xNj55QZHJpvoztze/y9w8Ab9XNSOws
	 JWrXoWrTO95dqtJkyHBtbkQMwg2dVLyjQ5NHiimxy7flg2sBvau1Hqyz+DV35oKisu
	 rq0HeTgfvLnR5JsZx+DeePYTSamHkCExJYkkp4+YheYrtLZHsFYjK9y7quCJnIyX2i
	 LNopXMPRiKmQFd4KHaXAjgTtxjll3cld9gdBLv5jSjfovaSeRm0I4RWln77kElSfO/
	 b+1Fzz+iYrbwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ABC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336259358.29610.14268824067578399213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89b28510cb4b6e677d15ced34d4aa24918ca2af5eb493777691e788d0f63d41
Date: Thu, 24 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753362593
