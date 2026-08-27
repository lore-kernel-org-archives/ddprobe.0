Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D544AB71
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787836235; cv=none; b=bjnOuTDVf4isDkLcLkbh2a6xNNZFc9pD12lLS46YAeW6bYy6SEs9AYctBkOEIC0lDWJLQzILNw/Knrkpw7AiHPnnk6UnCSwXpHZCQ24wdNR2VnYAWSCU41Ob8L5hpEHQAIaWmYBwIzKmw5iHamMdIWB86fZGk1r+P4NtIH4f3aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787836235; c=relaxed/simple;
	bh=3JZeLpK+aycNSaggXOaJwj6XCz8U6blarcQPrpPEP20=;
	h=To:Subject:From:Message-Id:Date; b=q4fpX1B/hB+ApgxK26stTURhmegAFE968beqQlnMWH/zIlYMqkzraRUoEnx7BmyDNrDs8Xwax2jTd17rDx7vcKcB61mh+z0RlZyTDhsGaudNEcIVBiVs1LTcCf6rSaXkZIunxHvNK581tpw21Xt+1gTSXeVtyvEN497c0MOGPko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aabX8Psc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aabX8Psc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5B0C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787836233;
	bh=3JZeLpK+aycNSaggXOaJwj6XCz8U6blarcQPrpPEP20=;
	h=To:Subject:From:Date:From;
	b=aabX8PsctAC8Iu42/n5aSd3ls2h22SUzkSwZ97Vy6hGyIaI7Zzk9FnGt4x+SWKqcg
	 Q3/e3hsKP+v1EdHx57rj3udPtrZsA059Ou9wl4xZ7CjuOL/S1YTvBkf+leZE1Eaoa5
	 PRiZeKJEsYVRYga9DRayet4Q54aeQGH4S7zKPai+k1mIfAEq0Xb0ykJOamrp1FLbLr
	 KYuYc6Oy2+ASqJvBa4SwPC+JvQE9tI5xFahYRLFJhCAXzP7E1Bkt+T952BoJMu73Vr
	 ppMwULZ/QYRTK5KimN2yuqFNIC4m/ifZaEAyov+efvzeXF90b+o8eOoAzoLA0Np/i/
	 45os3nTmzO1rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDFC61DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783623368.2530.7116204947759986795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b434c85d67c5698da0e7cdbae346a828439ee3e3477f53da0ae08274e8ab4a4
Date: Thu, 27 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787836233
