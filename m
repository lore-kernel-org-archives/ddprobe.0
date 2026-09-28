Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F0730BB8D
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790593234; cv=none; b=QKhnosU7ZRqPWbAUgpm1oHXXrFJm8BgfHmo1QIQNN+tCW69aTX9lRrT9s76pjLzc7As+Dlh8uEP5XJTjG0GIWqdGAz1fm5GEfy9wGGnDvzhEDNuwqxfjmmcOxoEdNu/CFNFsYwpwt3P9mqDIfZQBqGq46gnhvrKFT/8lK2qwwRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790593234; c=relaxed/simple;
	bh=Habkv/ZUoInY7/ItWaBEgd2D8d7wvOKX2enCj4vPU8A=;
	h=To:Subject:From:Message-Id:Date; b=s/DsUZ5R3EuBuGUoplKvxKU8nvmilQQ5Hjp7n3uMrqie+NJUZ56d1nGkXzWF21hFTigGBgdzzkpYVywXpek+jLgOayeWLIoPTeFviskhRWfHlCXXgtlFOMLugdZ4aFz+AzmbTEk6/9nAztgeTm3uc8bDpgOCX+HkW4dXMr/NlA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiRbLsuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiRbLsuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D759BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790593233;
	bh=Habkv/ZUoInY7/ItWaBEgd2D8d7wvOKX2enCj4vPU8A=;
	h=To:Subject:From:Date:From;
	b=JiRbLsuHgP7ZIwzjfm3cLht84v/0dsSJTuKMdGW3JoKQkqemlTfsaqGdripyccCPt
	 96hHLszoVbvhOc3khl6bQylKUmPLDWz/QrAXv9rJQ31L/BSME0a4nHBdwT37tp7b+h
	 y9tiT5/TjO4PvglVFcA9dKflChNn4869CfgXWO8p7CSfK6500AEYE+6tLVQn2DdlI9
	 t5eyc8u3TwtKgbl0JuXfK2zM/sjdo4mU564E8o/D4y6+2qct5CCrjRPFhhmZgHAy2F
	 Xa5ZOcKcZYFsl+DkmJAhlXbyXjKiMjs9nv4fr2V5q3TSW8vpQhKNui1M4np2oTLZ8h
	 HWrRkOEehQ5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CE1C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059323373.22741.4012458405341834718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09409a2be1e85eae25353225f89a64d8f0e89756452a38be298227d137f8d287
Date: Mon, 28 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790593233
