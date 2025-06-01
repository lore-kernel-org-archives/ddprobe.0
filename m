Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6654400
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748774394; cv=none; b=iirwGgrIurAPyJjRjs/QISOFT0uMSYb9kXF6jLUOOLc3jBya8eEQhcG8M7ObxdyeYsk/Ex4kK/27G07AKjPiW1JEZsK42MzUH14yGTfGwAHNDeYsjCwLgPGRTh0Oyq4pedf78hoz6G9cHcYXc+eMMszJw/b+LV+7XNBMhSyxTP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748774394; c=relaxed/simple;
	bh=/nUny71LlhV2LlLTxLXHfG9PzT9GMZW45B7BVZBDM+k=;
	h=To:Subject:From:Message-Id:Date; b=t/+xSwwCfiFichiTgFFWkc85ZFqy8eRaBbGWXlu3uUXaSCcbmtfvL8CPXwtdfp0mpGlu5zGEIegALzV5aCsP4DT+Uv0Mnv6jCPyumxtwn4lvXgdT7hjf5e49B6LPUZSzJqmWoY27FHEr5Yk0v7cockZ2uZe4hL5SGMsMLtj7njk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LciRAT7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LciRAT7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1283C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748774393;
	bh=/nUny71LlhV2LlLTxLXHfG9PzT9GMZW45B7BVZBDM+k=;
	h=To:Subject:From:Date:From;
	b=LciRAT7y9YCuvqVnkBOH5BMTjRPB13CsASDM5VlaC0AOyMMwbu+OoI/0KoMAtRpVb
	 qouvZIoqV2ZEXRPZbuIKvr123eznLXI2lEL7uBUNRfgqwyglhTDk4tHGoZZXRt8v5C
	 cWdIrY+U9bOGlBgBIeqg2KhCdp44NrdKcnDl75GhkongkAs4IHLaPZsVaYAnMcHyYp
	 4IPxZOO+gelUWMHzeggIWo5S0FT73AM3Q+Bq++eX4ZNj0EAMl/HUa+H9RG+DsTDosq
	 qLwM/xQOOVKisrFobkE4VpAEVyZBOmLqbD8T2jLD0nd+JNW/qoou/eQtYcQAqbE/kh
	 /93bl2xtoSE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0B6C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877439363.18907.5526114831580499272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4757eaac191675953d77948db0536e74c4773f499199fc9c1e5250ff651a8430
Date: Sun, 01 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748774393
