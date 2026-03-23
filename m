Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1F82561A2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774281294; cv=none; b=Q5buIyoQo/gSVATGbvZL2igsFyZ9dwTxmVPp3r0OAuaZh3NDG0s/ID8SaDYJrSpTs2qbGdzSpxDCPkcPdH84Q3kjHNC5CsV590iPswolCzT/6pR5mKp6mkOxdsyeRhpocMugL1XeYVLNGaOquNshZDNnNhl4NizGYc48tCMOaGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774281294; c=relaxed/simple;
	bh=/mTjSoS5AxFXAWtMoAjgin5xzYwqZXcu0ewAyII3pNE=;
	h=To:Subject:From:Message-Id:Date; b=KURG56em1tu8aX4ATGvxqaUnxqG6tBWoFrBuVBMoLn1eEljc/hfeT50qnavttUr/VbS6RUJx13FpjFIZbOOdiOWJVGqLKcP/pqInLJzeYRtX3Y08Cc7Z7bykUWLASW2HGzvLXByRN6Rup+vX6RI9YVbHTXgNvnZDJc9ZKrO9FBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU6eY4mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU6eY4mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D1BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774281293;
	bh=/mTjSoS5AxFXAWtMoAjgin5xzYwqZXcu0ewAyII3pNE=;
	h=To:Subject:From:Date:From;
	b=TU6eY4moOxWYNMLUsQWa40L8jpDwv/yRHGeQwHE3gwYvc0UteMU8TLwAvRvhjyofl
	 060GP8qSbAcH8F344eyR5Nq2nmU0vvKoOf4YZirRzIeUIt92KVAmma0lwsMvFNwxbU
	 oJhD02eh7fGsQk9Xu1vfJbIbHbAVlJqkHijmRnTULJ/Z1KTD6k9YsIHlxL3o+ozBFG
	 /H7VwslctUb6GUFqMwU+wPwjWIbzcbxi4fvzdMZyTg0uEtzoXvEQRumJuwD3O8UTu6
	 /qoLIaNuM1+bTDHpx5YWYbFhd5gAXPSGaAUHbIVxDDRJDcVXsmsRTz/2fFOUn5T87J
	 QFpq6rTZt+DXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96169F4613C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428129359.18061.8505051874488131015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d1084c7d102bcdb4277d2dc580a6316039eaea9d70744ef5737ee43611ce76
Date: Mon, 23 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774281293
