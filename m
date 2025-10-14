Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390B8303A27
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760455794; cv=none; b=nHXv8EtD7fubrBTwUDG8j4gb145zKnr8XvqWLJRfwGKfqosng2uH006yzAy/sBEHv10htZM6whUFSNWvu7XnLAIU0mIrngqxtndAZWp/nVvbKS85dFLHkaWX3N2nRg+b0nvFUY0lqJlfG2PHXyOs6WDCXJG5LegBJyciwCCWi/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760455794; c=relaxed/simple;
	bh=sDTV9srePqn6JsmU5OhEU5H0sQeFm09Kf+vcw42Dwdc=;
	h=To:Subject:From:Message-Id:Date; b=KOEY7Vqj7hRrDQVjHnsxdtxRNEQ4UTxO7RWh0XUYixmPfkrKZ6hRZsGyADNH54HKmumTtWhFUh8bMLHbB1G5q3UwFFeGrVpRkbkSu//NIL5fA0AR01Sv+FDf+sgAT/CfYIJEnOpGZV/rhHRMtG9e8z/XYxUSPLQTa6kCU4pzB0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dI9RGbed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dI9RGbed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E78BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760455793;
	bh=sDTV9srePqn6JsmU5OhEU5H0sQeFm09Kf+vcw42Dwdc=;
	h=To:Subject:From:Date:From;
	b=dI9RGbed7ieM/0QjnEGq0x8C/+lvLPaJHVaRG8qzLotjlA+B2rrFCCkLHONsE0/eO
	 sbzcYqXtX56SSjQQsynNG89eRAP+ls7+IRqX9oGtCa+IpBLfiCLRdYFlvjNyLpk1cm
	 21rj6jpmM65irH/XyCQITSFRU2X7MCjT1MKj7pCimL8R5Wu0MtipqrnpvKkMyanvrG
	 c8veIk7y7I/w85QkXAmHbxG1sQgRtvmKMBZ0ViT0Z0fyTU4F1Vx+yPsNqXBHSyDIJ8
	 rkvScG4Qr8jOhIlPIG+3Py3a23bZBqCuy/8YJMRfJQvqQo/fFULXWkaw4wOcG98z6L
	 bmxQL6zs+oytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76FCCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045579358.6079.7907597618585080960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fcafcf168656f3846186c7ec0eb9e12d605c75852933de0c4645f38ebce779
Date: Tue, 14 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760455793
