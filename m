Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5667262B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750047594; cv=none; b=WGqoPpB2JY2CaraZ+EV/JAWz79XDHvXo3dXtEh3Z+56d20dFB19xAhjn+iskECfsBsVhTbyDwYM4+kEWcP8utswJemIaHuJrZJSGRFO4jQWLRTX52dKux3Y9DI03cWGTxEaIJyMsxhsJSTjBxffgQzO3i9lCge3G9y2RiabKcxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750047594; c=relaxed/simple;
	bh=cVO4fmQHv3l/7CLhPFN2F3AiGYnnNkM3KscboisdBC8=;
	h=To:Subject:From:Message-Id:Date; b=BZpcVfaDtTG98iJ3bWRU5c0zx4gpCf30sanQhHkFAnwKtfi4osj/D+TLZMlQh/2jj7yDY4YruW7J3Ad3QCTQN7Iu3PyHfkweKyLyZ01Cuj35RnwUxTDIk09l6H2Z2+3NM1mIMz/yIVHGtFRbi4u3Dk4tNJskb3o1e8cASytdj5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwlwlCsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwlwlCsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE526C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750047593;
	bh=cVO4fmQHv3l/7CLhPFN2F3AiGYnnNkM3KscboisdBC8=;
	h=To:Subject:From:Date:From;
	b=mwlwlCsGR68b5FmKWzNfwtzL/nVZkJ6oXLhHNcIf3bNPwYt577xQFqwQmGObb6QJ5
	 XklizwmmRiC4E6ZmjQUji+WUNpgVIJ+sR0kv/+DaLDtVl754rLMGEFfbN4JwaYsI9S
	 94lhbUL0lEliKt2h3+dMFyt5Hl5spgKDnu5vgAq7p2JDeOx6FMk7ah17R/bqsvClhu
	 A34IR+xHxflmtxw+QsMi1OxIKuUoBx5RvqF3Igi6g/VEtFpWNCz+tTyhXNIwmF8ZXY
	 h4pOBeLrC6/ZIKJsU0Y7YSoNOOR4i0EVTIeBSWUSGOwtBTvCx37SRDyLyvD0BfuM+w
	 caP5O+vCpNeIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97337C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004759361.21172.10401541645343327491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0b1b3cf8f0dd11d82ecd42783922dcddff739454cd42290a3372ec4ceaa2bc
Date: Mon, 16 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750047593
