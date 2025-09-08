Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D019644B
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757364594; cv=none; b=d51inbdRCSRypn5gImmJsa1qMQO0LMtj1bu6ASeoGAyWdbk2JaF9cmbhWt3KKGzYl9Fp038MbYKVVuO6Dh6n6GT4bQD833/Uob+EgkisR5ouzRSgAQ8K7rUwWL+D9a+2QbyxE146HLFOfo2OFyu5rzWN8wT4Ha0JDTggjpsa2wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757364594; c=relaxed/simple;
	bh=3jaBr3+0oTnnyWu0DVEUytWuh5yR/u+yhihU/P2l+dE=;
	h=To:Subject:From:Message-Id:Date; b=INpzyUlJH6zrCIRYOcP+JvPe5LBRkbwmUp53iZoYWBl9L+0NHt3gCYqMl5AWfD0JHRU8wIx8A32ijoFh8imzkY8W5hlvtJBjZAt0xPxVDM5py+YDv8wLm0xTli8KlsXwFuqCzhIX2qi1jkG6mHmkNZVVFDsJJgcuMfXQp0lLZ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBUrJc6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBUrJc6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757364593;
	bh=3jaBr3+0oTnnyWu0DVEUytWuh5yR/u+yhihU/P2l+dE=;
	h=To:Subject:From:Date:From;
	b=bBUrJc6XRtC+oGwQlensRsV4tcjDB34sihNDbsOmLpudcRrRpd91bPOIH4fRTHByw
	 7Yk6aY0iU7HiRe25ani2pJPSWky6TGh8QRFLbGeYLlqkTqYH95ovnksOya4DmHk2Q8
	 0H/l+JwQdMA9zPF/CgZrZpVVirbtAM+aGIqsSwtTvG3zAOASr/+GTIJ+MGSvI82gCg
	 VbLIVrA99x6G/y93gYTWNf7E9jzvUH09EIatAJrzgvNAwABg5jIhcm8UZvp4C54nD1
	 G2OshGnmdNhzsUp9qJe7dc21KnjLkikEtkilQz0B1PaDhRrCeNWYWXUVjRm8vvjDgd
	 +oB1K+fSWCD3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F3CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736459357.25515.15110157533675000624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48325402d9947937b0442b5ed752e7d6953f6f6148e45011c045af7ba4b1b06
Date: Mon, 08 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757364593
