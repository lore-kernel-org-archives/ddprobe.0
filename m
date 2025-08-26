Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0EC306D47
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756250994; cv=none; b=Q2fZiJuMx0Ze4lSgdhY0gLrw/yrK1dbDd71c7UWOocUpeiFgiXLoXv5euQv7wATFq5P1KpDROAH1zHt5EhMGwhe/eMIV+odUkUfdCPqcZMfRhDestlAdn5+3qgb95jDFZkPWulhzbeCGR37lLxAFe+nOIL+fIFUA5CELusC+Cc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756250994; c=relaxed/simple;
	bh=FC10Yx2wrIrASueEua5ujCcXwRp0rZmVo/oeKPlApbI=;
	h=To:Subject:From:Message-Id:Date; b=CTX6A9+1JZhkjZiRFbamPxFTCDWEuiLa04574/N0hr5uEPm+s4Azu0O2Vr8+oB0KO4GI8J82c4J02qAh33l4yBvvMOygYZQts8cwlV3pkXelVwy9dcDK9NbmmyJUI7Qjpz2XPoQZ4o56Lyybk1Jg3bW0ws1q2Zhgu8JNsdt2SDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TogdVJ5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TogdVJ5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3866C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756250993;
	bh=FC10Yx2wrIrASueEua5ujCcXwRp0rZmVo/oeKPlApbI=;
	h=To:Subject:From:Date:From;
	b=TogdVJ5jGGxJ9mr/KCuSEKB115UG6vxX8f0REx5LXJgyvS/Aa7cFn7739r3q83yV2
	 7UaI91BgvylMpoTlpmRAEd/LhNtSe9Y6yXabwofARTu83++KWhiqWAB0E82cc/XPV3
	 12L5os6VNE7RhF+JgxBGHv9Tuf4FLLnsSUf7P8Meabs9M0pK0YPe7naxRymT58IDez
	 g3xd3QzJ9YMpGQGG0ITdW3mI6Zsjj5a25VZViJ4nVr/ifTgeQD2OqX5tunlDt61t2x
	 1nYtBK4yUQwTIT75FGPf3Z+KV6b0XkJ7VTJSbcfFcxfh0FKGmY+9EJfu0zqzMWOtl8
	 dN8nF6igR9nNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009FCA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625099358.28890.675139894924456317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce61dd76feb5d31ef59a117af5941520141f32d93b6b965f2b8985897874fd1
Date: Tue, 26 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756250993
