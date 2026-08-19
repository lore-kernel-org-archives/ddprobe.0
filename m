Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5856D39A7F4
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787169634; cv=none; b=KbnmoZRMjf+4fLM+ltxr9LOnM8ptw751JXMjeO49XMtmuhofafVFGfzGH4FATU8DJ2hlO7APZ1smwjgQooogrqM8+P4kTh2bg+dj/JL6vgwqXBNREsalbXEEDROdI4tdEi1oLTKw2ZrEjU8tdOiHewcdrpWkCzVmKpHQiBureKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787169634; c=relaxed/simple;
	bh=8vSCNE3p8su5dnpebzLYnXLjUzEbI0rFF002wC858ts=;
	h=To:Subject:From:Message-Id:Date; b=tJwwuS/24sHDqNxF7CJSNKXpXN+9Lg+7va4kO3iRcMbGrhoceYukt56eynDFLl3GWPRa6Rkl5iYc0akHxqCSo+2XcoCni+HGPdUcQPprKLdwH6KJlnuKRvq57m9yo5HCLu9UrM3VhDS6ju+/1MNvAJiKfwkbpkVkcYmmaHhuy7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyw3VQmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyw3VQmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9482C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787169633;
	bh=8vSCNE3p8su5dnpebzLYnXLjUzEbI0rFF002wC858ts=;
	h=To:Subject:From:Date:From;
	b=dyw3VQmAXL3QBSO9UmbUAEMRAsKJgaH+LETU5JsbMrPXF/+TSbaAsg02QdnyeAlqn
	 7ZrWvNB5pFCT1M5Mt7rcZPANWLOXGqloBNQwYalP1hTTTJcWmCI3JTIL8L0wWTH9Wd
	 lqLzdu49N0gZCJ7Uhak5zcdytc54bcDymaoMnqcSZKPIkrZhEMXwd7pJkKuSX3SKve
	 yVLxHqXoexrTfNq2yXLaDNRIjzQOI0fFmNIU9FWYGN+YqJk9IpTS6ylksfSGznhuCl
	 qxqsNVAfJi4RtCaX6C2dgBinsRhqeXL/dh/mTUz/+U4WaQxdKNm+tgLm01A1NIpG11
	 zP6Ll/v263iaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12FFC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716963369.25841.8766247847099116929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d84ed80cc64706888a1bc0637a383ab842770b8695040a80fc83ec750a48cd
Date: Wed, 19 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787169633
