Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FA8397940
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788385835; cv=none; b=eWDTbKxwWiYztgxniBSvobQFHYTqW/t0L/cEou4LM+3AsfgN3d1zefcX1t/ZiQzFTlFLVIlURF79GyrnZuaDJX6eT7xA1MezAnxTS1yTwx9rvwXpJ2CgbtigPJmJbgpKEgF0pnj83599KCGr7B4DFqOb56B0F+uMy1nMtxYrNKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788385835; c=relaxed/simple;
	bh=EkdhrF8KKMh/s1eI0VnAzQBksTaxJaCximtCacuFwH0=;
	h=To:Subject:From:Message-Id:Date; b=LhneuQpML7QgDk9JwvB56MMjeH64+S4HFqO4AglXjPeRRb7dH4FrP6XeC528YP5TFK0+QW9y2BGpnQS4/vCcER2XwEzJWmJbsl+wQapxOyirB42leFp/ED8BeQvB4pWCdWmvDyaoWJ5J5c5WNIpCnDZ4PIpFRlHqVDt2G5wiKv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/li8+na; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/li8+na"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDC4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788385833;
	bh=EkdhrF8KKMh/s1eI0VnAzQBksTaxJaCximtCacuFwH0=;
	h=To:Subject:From:Date:From;
	b=L/li8+naVa0ZhPIT1shsM3RR71pdcp/GPzisZy5MAc+/9LnDiPw1QfQ2ummehSD/V
	 tjmKVnkRWO1NMlKs/o6DAxFRgw8uJiuvUmmruTxLQkXVgbScP9YP/FhvTnoO7qh9P8
	 /4u5nmAw4ehG67dIYH/8Jh1ZzCPODrliBlStRA6MJVyC3740sOlCZa/RjCMRdugGVg
	 CSMpNT6AsPgQ8ZKlwivUv+nHJ0aM0qPzWSe24cOfWc2/KbN4goeuPhmk9TV/g9CPfo
	 g7Zjd73afxMGpLHbCKw6UTgTOn6sHNXwZXyRir8qggNLElkIjm43IQoT807fyUE+pM
	 /UGV9bVk40pFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA300C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838583368.20294.12109391343984684409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47fc03107e17cbba9d89e126c19001795cc762654dce2627dee57fc87f32f2ca
Date: Wed, 02 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788385833
