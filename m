Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC153D68
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736646354; cv=none; b=Ysddgux9qCSpY/2wbC08d+oz1tJPPqTDjehO4qcpSnDmRBF6+YoaM0MJm3B4Pe8OMIK/SWTIYKUHjRoXsZos6rxCC6JjGa7e9mG1Ma74XNQJnTkyMDjkY8tdd2eC4TqBRRuGGCjOH5eMI3TM388200oQM8jljNxCDJK9rNq9Zvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736646354; c=relaxed/simple;
	bh=gIUSbr4MhNercSC6cdHP43DDl3sRl3u+hAIrtXevRQI=;
	h=To:Subject:From:Message-Id:Date; b=S3NmDN6p75+hUXFBvLdjuoBi23i4xpziElnVxTpjGvLZ062GIXTXdinykwXdiZohc+5AESQbS6wq2gDst9XP0OdG8BOtqd3IkeDKJ8qYwghcuIaAHPqtTiCeUVVRLiAmaRxC6mw2KVCwAHgCEWe6fW+I5qKZq/mlXU8fnSufKcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqLgYtDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqLgYtDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D5C4CED2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736646353;
	bh=gIUSbr4MhNercSC6cdHP43DDl3sRl3u+hAIrtXevRQI=;
	h=To:Subject:From:Date:From;
	b=pqLgYtDmf+9ig6JLFAZBJ3w9DCZK6yy1qRYyOZXw0NLxtyKNtoT2wwZtJC28xfXX3
	 vQ/3tGKoKGhy1Ew45OEzRZBZ0iKASBN4vdu5io67mqw3sI9W0UeZJdJeDjad3UuIlc
	 B+X+rALfjI/EmwXuUSm0T9buZO2h0p2PlR5CLjZpvfToV4tuTf3SEHUD2Z1xlY7/Xq
	 JR5sdhkHy+aIyJB0iqPpdcX+LIP13X7zACuDkNpAPnwmOh0lphxEmEWkIvikDJ8Qc9
	 ocGNL9RnbrvdIp6l7ogwcT4aHtZXAx3HrT+oxtwGfAI4gBqalV8wbvAkJEtzeb2AjH
	 KcK4k7nFX9feA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989E9E7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173664635358.13073.12369200744801338404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e396767bbe6525e26a40749f2664edb20ec0d500c9bd7bb156dd381813bb6800
Date: Sun, 12 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736646353
