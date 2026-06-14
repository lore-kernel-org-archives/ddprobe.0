Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175B61E832A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781448994; cv=none; b=OMg2+a48W2jBi+P7HVkylvLN16LVDkInixGx0Z+ffJJ012Sp8nEgUCyGuuC7xk//8xdQir+Qb7VYM2ALLeWI/jrymMr9g22MpV0T8vY2w+WooycxlOXN8wirDwuRD9oKGY32bguL5NPAiWo+18mxTf40YPEbtWKB25Dt1crgSOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781448994; c=relaxed/simple;
	bh=5P9dDDV1t67JeArCm+UDzO3APgcTj4K1Owb4ZVAQnR4=;
	h=To:Subject:From:Message-Id:Date; b=BRZF97aI4elhZMAZDEUdfmgZS9nLxyVtphs4FdsZNsOZ8BP2Kpu54MFFIMOYCcVLo2MrAyDAZJyDuCJ3IQd/5dQnc+HZLVu0EiBJA1E4vejpV//Co/270w4oEo25q/1kljJjsswguHhjQSriE+dsOGfBrvS9Lm0WFwa78xim3Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbNppZEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbNppZEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2467C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781448993;
	bh=5P9dDDV1t67JeArCm+UDzO3APgcTj4K1Owb4ZVAQnR4=;
	h=To:Subject:From:Date:From;
	b=MbNppZEh3TWxl945EedWaFfOOnHJGaTt/MSuucH6i8wIEMTSZVyIGECalNEZWscVr
	 a0EpoWlvJcQTg3/r6hKzErvqmYF7rkDty9vibGACp65pKbsYQzYAERcY12px0QaFhd
	 r+IxeOXJrD6UEdrQ4eof8s5/4r5BSnTNGanuE6E6boRJsfNwI0m8465p1AXOj4UfmK
	 Q0bRoRHpaDruDBrTsiAEQwzBGtlX7bcbVi91WTZu+gkR5vJkAud96X7RQYDMeaIGzN
	 4p3DVnyg5czY2aoQ6OEJAgzLwBUYvbtMu7I84t5hKdM6NE9+SwWCDvWSIXB7xeVA8r
	 UtBqGHk8aQxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7279CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144899371.4770.17659994077108261414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e93c24c379530e578129776f00cbdf653442d4d74405314d3584ffd0602c272
Date: Sun, 14 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781448993
