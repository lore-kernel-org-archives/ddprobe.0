Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075392FDC5C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771393494; cv=none; b=ubp5grRnBSe0fKjyPi8kojnc0tDwnD8s14abV4ldC4DFKxeNbTopa3W7Kox2BbJXbLu8G8UCIMX/YBH7wECcTkg+g8GirfhFq7NWQDPzbGYA5El8GaSnBBmm/AZe77o2TcRQYluVmYO3fIF+Y6/VNSDI8/uqQz1vJFb+Dx4YOAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771393494; c=relaxed/simple;
	bh=KrTYS5YnCFvwmJDHnpSD3MC4qrp3YzSJTb4+9mD7beo=;
	h=To:Subject:From:Message-Id:Date; b=X7vPxJKCtjla2CcKOjZXgN5rqZ8CKI8wtgZUTsVWes92MABtuEPN/y9ZU7sm3oMYANvKf1FSoKTVnPGGeB1r5BemifdltYpRXV8/SPj1kpG2VBh0ezQppUahYV/ReGxMPRQ/zQ7bbN+6AkgdbFmvX6HHXipeDxaJ6ffOnIKXip4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHDbtTP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHDbtTP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A581AC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771393493;
	bh=KrTYS5YnCFvwmJDHnpSD3MC4qrp3YzSJTb4+9mD7beo=;
	h=To:Subject:From:Date:From;
	b=JHDbtTP26SktHyW3xGRevfMgGNSR9/n6PE6vl/BEQfy0G9tVgnjSzh51Vang+NPs0
	 zj5UTqSodu7pE/uAVU3QNIFMXToQDBQ1sM5saIMzzjtEPJHV4gNiqaf3e7ARd9DZyk
	 1V4GkKJfcTWHSDTjp7c+yZNbPtJCfkfrdMj1Ra3IdV5wTXbBA7NjRXbwJ4d3qSflVb
	 mLFiLPb6i+yDpbIAxR/OfsU923VFFumxrDVB3ZYjhq+DRBZnK4aZLlOYLKMS6TxzmD
	 /I32WN6diguLuw4K/Bk8KA2hC8DxhqfqtnQdC4yhus+3+YXrHIOm3Ef9EMD8xWp5DE
	 lAc+Gg8lu29fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943C9E9A04A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139349359.31200.18332287241603140555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c887bbbf6f725f45fc0708c682276fa8ad06b5e52597a36d7230e009fe4096c
Date: Wed, 18 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771393493
