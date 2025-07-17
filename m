Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208EC1DE4E1
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752793195; cv=none; b=MsKdEqJKQGTWy1BSIOcY/t5a0pjieyTreQcbENGfIkhM0LhRg0+xOZsTh8zeoLqn9luAjhbcK/49epDg0bOviBTlCFuRmbKLZti4Ge4Owrauw9o/tAVnTvvCL7ug2j0UHM1lULAmZCcQtYFGr3aB7CfmG0ZNptu2b/s6hiiJ2nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752793195; c=relaxed/simple;
	bh=eE2h5Sxjn9fhYkv8TxqCSc35nU0P1T7aF+u11mYyb/4=;
	h=To:Subject:From:Message-Id:Date; b=OOeWjycn8BhKteChy9jWy9clPKfYA80JxZQWloBgEW4zKTt+j9DxaMeukr4NSgKqFbvJDbqhqmeJuuR86h3GXG1Z20CYyy/Ro0C058KsOc2UXCHB1ocpmt4CPqJ7BeSp7qf35buSMYdMyX1vu2Ui5UjUGgWFbMuepRr3szp1+2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0wMWv9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0wMWv9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FCC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752793193;
	bh=eE2h5Sxjn9fhYkv8TxqCSc35nU0P1T7aF+u11mYyb/4=;
	h=To:Subject:From:Date:From;
	b=H0wMWv9TfLlOZsk3JAH4ZO6VvxRbnOlkpwccADeUIEWA5juPpcpWoxcDCr5l4onc7
	 2/bz4Dmeu73+MsoqQsMBieakITG0icefF2I+/Xq6BC5U7l2A3OiZGyV0m/ACScyV/p
	 GVnrmf4jSVsI7Z3ESpJXNf1QcrepdpLFfCKcb0KBoy05jGamWIO0NHNVDyc+/z0vUA
	 s96uQveB7S6+A/WkcaPkO/RwTELOBJROp0HKlIM/1M6CheWtsWnhcs/KoEBn6KNXc7
	 im4oHdyjU6O8qlwQASCXo5vHfRf2lb98oanOjnsSH6LZpqEwltsOS5qhbjYGGqsXTN
	 Ulj0jeuPm/Rjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C55C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279319357.13376.11428340899218670115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2bd8162374ded61ec6258a173269bc26ff7058f0415bce2f05ab97669fc9a2
Date: Thu, 17 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752793193
