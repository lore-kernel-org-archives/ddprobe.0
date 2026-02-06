Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ADF18D636
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770345834; cv=none; b=Jkif2eS/tH5XTOienn9QEK4iHCNL/qo/JV+92oD6kvxv32tNaxFnYz8q1icC8L9iX7MFtTWCtN7rIciQepqrTA0hzUpxPjBfk1p7g5OODetVgzh8cD9NFfA6iWxssX256TcZudupQRn7YsB2K7PiuxpFsEt7ou+gyUsjcWDfMFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770345834; c=relaxed/simple;
	bh=DzVb012GsvXaql4x9CR7+HAiQdDgiMrwiTyN/2tGWac=;
	h=To:Subject:From:Message-Id:Date; b=gJRseUs3cdMTFCP6U0hE+7jbHVYS/3A2DBKt1tg/PrTkTYZhaT1QxMze2MJGfUU2k3GB/T24x3PZ42pE9AqMlj37xq8BFSxPx9e3mH1HjC1aYzetxXDNhJ6L7SAzHwV+UpXOtIxyd8iKkC96GLmGJcie6+meQaLo3D+VDYKo2SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrAuTpy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrAuTpy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB018C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770345833;
	bh=DzVb012GsvXaql4x9CR7+HAiQdDgiMrwiTyN/2tGWac=;
	h=To:Subject:From:Date:From;
	b=PrAuTpy1cgLhi/CowXphrfFlN2mM7ZL2ALE+fd3j3apX1ji7WlNZNqPihnuYk0dOQ
	 fmvLhpePLFSoQUBh9pbwp8FNqsufCtH8WCJaI88k/zXXbhma9J8MNKcBsVe/PljOre
	 k+0V745xZHCCUr3X4t3V5ErwEOG6WWebktaFnQVfjucbyxZ9weajFkQsb0n2PpL8Mi
	 ybdkWhUotDlowISBjULnUBNpkGOoeHSjoZagbyPJpPKqAxKMjRrMyE/C/LOorRVaPh
	 SqJ1RdyKCQrXbV9drjyTqFGviI5FL33RAwh4vh6QMkuONJEvYOePkAhdmCvgXLOtNy
	 or0hje8erskaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A5ECD9BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034583361.10039.9601836913772886486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dc52cd5f77a04fc6e4762685593c2aa77980105dfd352ccf79464b51043a6c
Date: Fri, 06 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770345833
