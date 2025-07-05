Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FDA278E75
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751702394; cv=none; b=SuFPWVbtvdXzg5ZSOcigcilGSxFpjQjEBrnr0crBoQQ8CfMpHM4VbQKPtLl5c1aDtwDZ17iCM6N/GEU+gtOUPny4JmPSQtKIf5SRiv4MVzuP6I2s9viOSeb2pvT4pO+9710TJrL725KcN0YwqqKevvzdeQcSY/7oqBAReNJmkc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751702394; c=relaxed/simple;
	bh=wKS6YdwwwXqcPCcaScekL8nYdI5MVloWyRKkIRbauV4=;
	h=To:Subject:From:Message-Id:Date; b=oyjaZyvxWgdT5A0uvf88LgMOuV5peY+GfAMQbmTa8delZNzpJ4tr7qR9khKna/TuuMoXAU+PIVgfLJqW8VckhTPq3UJhdNLAk2KQwXR1WBvHmUtxcX6TGotNpQ0Al0mR1qjbGwMve5attVD6W6AlwFq9ULHYQV1f0vMcaPbMcDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvsdglnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvsdglnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A67C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751702393;
	bh=wKS6YdwwwXqcPCcaScekL8nYdI5MVloWyRKkIRbauV4=;
	h=To:Subject:From:Date:From;
	b=VvsdglnmQH3RrF6Ou2bqp/lzTdF0yhBCx3lNZsnY86s/TXHXZD5xmxCihQHb3jevM
	 +VH+delhLo5nWSuJ0BWf3ZRl9QwklJe/M/nl6Ude4qVjRzFflr5Ehdilr6vXzKHQ97
	 nemGd28hVL07wBmObUtAK22I9if2zxvbiTC9HNAi28C/vjcYb8ouYacuQH3RO65zQf
	 YYsHSHVeOp31x/8EFgfNEN/jCFVtSWnxuyh6WlcseBY6eOTO3g2cejLpSOAq4PTlMx
	 h3VFwQdDS0UL3xLCMW/FxWmqTF9Qhb85zI/ir0i8c/MiPZ9FuwKZiUeRicJxEqRPXq
	 IEeKECNJakAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E309C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170239357.26849.6338653807003182180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb00ec9b9af8e65e6beeced4be8ccb1de387856f2d3525f31f9ec1771146ef8d
Date: Sat, 05 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751702393
