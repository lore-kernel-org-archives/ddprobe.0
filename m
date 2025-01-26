Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E1E5672
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737932154; cv=none; b=ZDLzzc0HsQ0rO4kUNUVnnUf/RElIkayQi0Y8z40Zcu4ae9dsAflybpTNN2lyv2COGtgp6S06TiRWqeCvrKbf6omh1fi5KCNolzpQ9RCb/aicwyd/E+EdAoZc5GxrlqJv5tY6omv0ocvNFKYl+64qljJNGQ985vSXVaiwsuakIEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737932154; c=relaxed/simple;
	bh=CNaqNcix0+9H1vwqu0/N7u9xMGuRiaiZSMB4pOxxMME=;
	h=To:Subject:From:Message-Id:Date; b=f+/QvZhpKTy67EhRm5j+Z9OjgQs0U0GZs6Vttmp6D8ks7l1jFmVSgutAhSZ6/dVajFVOKKRjOfnzCpimWxLbH85tjc8hsZm/kfDgcQiIHb3WCsLGppMplJnfdIIugwqO17i7phl/7XgiMmvlzMwyKpkZd+eYu8eFezM7fshF/NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvhcQ0KU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvhcQ0KU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF7EC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737932153;
	bh=CNaqNcix0+9H1vwqu0/N7u9xMGuRiaiZSMB4pOxxMME=;
	h=To:Subject:From:Date:From;
	b=WvhcQ0KU2hWGkb02TP1SBLT9lyXZJfxjR31pNAtf8mxEJ8aUnPGu0CpJPjSYuKNqj
	 fg+DKqYv200od94lyqyCM7oAgRo3ZPcryuVoHAlKkof+Z2pgxz7lI+a6S/PgIEg2Xi
	 7bfVNSixNvHY52M1UF8vtRhN1lRvEiXiSSj6pgW5vyovLEW9DXvMtZzGzaw6Q2V1Qr
	 KZOKYuoSAb2YZ9J6XxkQ2sXES+C1zBw1lr5JfICGCRNJLNCKsFSEAJRMFQkGO/3FMu
	 t6n4ysypv2wZLdCnyIKVbh2E+1DMRIqQ42C18/u+RqsjfZIHZd3lLd4PUxHMBYEadu
	 NjprnYjDJAgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E866C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793215357.4534.11964301946367003444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad58c092cb7080c89da8a53b0d468338dde1a3dcf63f304172f20684585810d6
Date: Sun, 26 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737932153
