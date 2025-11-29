Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152FF36D51A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764394374; cv=none; b=Eukxk6skxEd6jEtpcfjqxzGIk0qEtjtelDZlQv1qIc20NPTsW0z631/m7QdTDQ2M+L/FTgtWx53OPdCZHEMjG07+O3fXZMpa4sb8NTQjd6MSP/q6YRmwR3rB+9Hz8Epo/gOzWJGZPkF0eZS6x7IcXHVYB8ZSZLP4uTi2koPrv4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764394374; c=relaxed/simple;
	bh=rbgM5NWKo4tSnBCHvBeKaNHyghQ/ulWUMdfzCN3gTgQ=;
	h=To:Subject:From:Message-Id:Date; b=bab0uM/yOX/o/hCsrS+Y0tyd9Ee6uOfSCg7Lz98gGV5PH6nPhUtO+6iWAz/+1aTiEYsRl9WIbM8slHpK4mZ29u2YVUCn0eVUunsaNaaAhulVaMbOKbpA9vY48lVlCkxy6WRt29ULvJViecnX68FwUxQK7lK2EFB7dE5X8K4z4cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkAjJihb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkAjJihb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A26C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764394373;
	bh=rbgM5NWKo4tSnBCHvBeKaNHyghQ/ulWUMdfzCN3gTgQ=;
	h=To:Subject:From:Date:From;
	b=lkAjJihb8J/ewQDXF99iI8kQN+OqTWbGjOMbUjLjU/v17EYbkcpXeitM4zt1cid4u
	 lqc6eyWOghE16EGliPyNDc8cxVWwIH6VydeVeMi6IZd4tjEWTBxLICH/hnpWOoc9p4
	 iwWCIiZ/TDRtp/fUtHv0Op/X3yUo4ZnXYzYpzkZy4IcL0u8PoSL6ZD8+nAPViOhvZB
	 m+xEWqnnGFgxACKNBORQyOp/xbBBy6SC7r6Agj1jLUCcQGlSZlPAWT+4SBLE0RWodK
	 KUAN8Tv9uxmtuCCR9t52IEHTOB4133qP8eG/r70g1j+LOlpNYdHjeznb4EjXHPHa4G
	 FQrhVEXGn1TTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F6D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439437359.25502.12109481740728891497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ffd8ecba4b2f08028aefa61e80d6165f8e0152ff93fa1331efc29eb7ad81f4
Date: Sat, 29 Nov 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764394373
