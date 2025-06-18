Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF61199252
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750211994; cv=none; b=VD/eeD2LXi9myxCdpkKpTz3GZUZWWiMrpUJxejdlEj1M7qFg5yNxYGGtgKT+iIL5LrOoXEFgt2s9BX5xeRHeSfYsjbouquWwVpwhvkdR6ny0hQIHZB8HmvKzQSoADLGlcqe/hkvv+XVWF+87f+H+mvE7AhazRjCCaQJy3XW9NWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750211994; c=relaxed/simple;
	bh=2n35/EmMAcO2MGk2KlEkcqn8Zpl+eyUpuzGgvjKZoKo=;
	h=To:Subject:From:Message-Id:Date; b=PqTJKxys3N0ls2+Pb4QgBaeb7SPjS4pvL0en5PCAe4WUCrMOMevCCRoru0j8OqQKPkZVKmCnyG30bv1BJLCKCg+7awf3MZ/xf8noQHapLltpt3NfHrac4pd9AaenzTw7SxJ0d23HesezYMjcepDOHuIFA17JqrpEy9Go/1mhVW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6CS+Pfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6CS+Pfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1373C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750211993;
	bh=2n35/EmMAcO2MGk2KlEkcqn8Zpl+eyUpuzGgvjKZoKo=;
	h=To:Subject:From:Date:From;
	b=R6CS+PfmMtBkiYVJ6lrorjA/2BnhBP0yAW7ieoKMA0NMwVCVlCYwSmUPk9m/eg1Oj
	 xxdPfiEc76cds0SbhpPK4uHcbF1HwLRmCr4gn2KdnieoW1dmN3VIAtZErAe+M+OzGo
	 AaXj5N7J9jZ54wT9qEz4WqrRG19UCSzGFJUt1cxxs+x4d7QFJkHcglcC+Nj1v5/L+f
	 ekQAf/Yva2Lf0aijJskhiaV3WOhn5f4CHeZ2n1p/7iFFGla1QrjVpf76eyFYxBLgQu
	 H+epm0iK4Eu83eE1us7HzaHWtzZcJEGSirTWnqkIuZxRPiZhVsnSeHjTKUaant8ReN
	 2265/XSWI0iWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D2C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021199357.2726.17385877538494604135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4976fd1069996b3d8ac44297c9df91ef4d77c9883379c4322a187d4d58520f4d
Date: Wed, 18 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750211993
