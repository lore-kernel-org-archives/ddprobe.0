Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B0D36AF6
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707518297; cv=none; b=W9SsO11curHttTnemCyLJhI0R12LW1rJudstAd5fmdmp+G5W3/azucrxWkVbhIu6aNJp55grCk+hBKbiHKNtHo1JR2YdkSVGduEfq+rqtr3pZwWiFya7fsket2g0cqHO0wvNKmOInX/yGgAkjbDivGBOpqqvOyQLFllVR94LSwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707518297; c=relaxed/simple;
	bh=nfIfNfCZS1ca6m0E8iF/0ACHUSiUrAl/rmWP8yFN6+E=;
	h=To:Subject:From:Message-Id:Date; b=Gxci7swYEGIqZVKP1h8d9LJ2lKsvYYWO/eQdTNsAl9cIiT26/oMNpcDyOP29/hFPLg1vhBmik+BmnTs/DcBXbuDAjmF4jSDUAA2TODRqizakWfBZ4rwd/og3A74E92qKQdsfGAVPoDIK4LRAxP2/XcOKh+R/avLJ80XQpKtRKks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVdJoKKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVdJoKKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75571C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707518296;
	bh=nfIfNfCZS1ca6m0E8iF/0ACHUSiUrAl/rmWP8yFN6+E=;
	h=To:Subject:From:Date:From;
	b=nVdJoKKOK03aaCgYMvOX86Ros+Fj9ZwR/hBQItpy7Hq/Da+I5sQlT5WGMg/JKbans
	 hDYqRRzvGU0geBYqXjbTSTXV/SSn4UgFfsGo0fRk0AFZc9clxxI2mpnz/opTAssQNi
	 vMQS4bkZDqnAb2BJqEW3d1VPB+6xTot9PyJeM4c5kdDjAmjbuE79MeENiH5yA0Gj/T
	 HS483dp+H+f+IPXnzhrvR9Qr0WmxQDOk0abhfGrfeg/eyat/8j+skg8xPMrLvaOaNA
	 XTw7RY0Vrqd/aWq+SdSZ0i6NOA+5WIQzfnzLxo3cOatlseH5dinxvlXEvO6P/HakUG
	 y6G7DbIjKbrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAECC4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751829637.10952.3791168216382596061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff031e5bf8d105327cd38a1b419a1076f1f55d7cf47cbbaa1a4fa1f5d6d4c6c
Date: Fri, 09 Feb 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707518296
