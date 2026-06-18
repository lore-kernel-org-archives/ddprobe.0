Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE7729AB1A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781794594; cv=none; b=gZTWtLUkfhX01dG4U9hmNQ9D6lOJCA7Pqg3nyXhaR525C5X2mRxGeN2zShNrbaRtysz7Gh2vhJkf57lpMEQ/SKhMEwMKfAi2aRCrpMNOYAEHsVOG1VnV6KFVOsto3zDmlyFNa2vLnTjs86uqi+650rnhMPiaVEDfvx/piK9ZZ+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781794594; c=relaxed/simple;
	bh=wj5qbwiHKRSG6yXcwKitqRKczzuay1TPv5ColTz4teQ=;
	h=To:Subject:From:Message-Id:Date; b=aLXjtQSpHqNO22UfvGAAiws4Q95HI/PN2UZuCMvh8FDw4h+QjsP0bF4yKIIP3OUHv/z7tBqeRv/YZjuS1IWJjcmE0qv4P5eHfY19T9KBHosghKFAJa8pE8Leid0X2A2jgbfByofQ+kcjW2BGrxgAPXqRfjeEctt1DZk4wateDFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo9xej8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo9xej8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BC2C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781794593;
	bh=wj5qbwiHKRSG6yXcwKitqRKczzuay1TPv5ColTz4teQ=;
	h=To:Subject:From:Date:From;
	b=Yo9xej8An8psSUdBloEaFSt2leTkNR7dLTxs2RhktFu6HQrEaV6LWUtzMUnY75LNW
	 WaLkBqvYAWRFsDEb/QZG7Q7t9oW5bnAVjvP8hMC4sAG9wZvwXGKSpbWONLeaW/+UVb
	 Fza9ShgHl9nu5tLNCI/thpN/PkpaLXtTu+okdLux9ucAG1itTLtT24xeIh4nz05fiD
	 GPaY+45GywZPHRlTFaPhf9utNPSrKpYJsWAYiDkOA7aRc27AeOekxp/NAd3SSnPMXz
	 DjnxhuW8ufd6meubQjwznofML0Jca2Zkb7rxeMc0BaUg7FnLcLRWiLbmNi49UkdfeN
	 KWUBPxKKC12kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF9BCD98F6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179459376.2059.11761113402440620365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06142dbb961c3e27518b4be3e9a8e46edbabd7420189c00304d1b504044b27e
Date: Thu, 18 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781794593
