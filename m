Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BE31F5E6
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760494794; cv=none; b=uqpGSWtHKGreU6erCGUdoTzfJ4EEZrz0rHQrt2nUVjSCweOu90r/gvbZNb+43XzDQkpaa1oapqsk2j54peyVEyhDbQgg+Wu8XtnyeC4PV43xaHGZeMtI47JmRscNdEUkyWA5Q5QH8Kn4KoBBBaQ6+1dncJsdJGff2JazmQcDVS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760494794; c=relaxed/simple;
	bh=BT6+kYNn0MilMNvpv1j5xGK7zN/CT6ULS5dvNunD12s=;
	h=To:Subject:From:Message-Id:Date; b=jf1C5dLq2MDiCf5/5nSPpit+iqVPibxb1dcprCWGab66VaXaiPklMScoMKvYjhz5kyKRR/SJDJ2mtGMMIwmc8zcQqjOd2ZUXdeDHofRfiJkVS75Ile6yTkba0ZsuyXgl9+kyQb28Rzr8HWBRrFovBcAmIJdjnwwbp5IHEPWDHVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcOho0ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcOho0ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ABC113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760494793;
	bh=BT6+kYNn0MilMNvpv1j5xGK7zN/CT6ULS5dvNunD12s=;
	h=To:Subject:From:Date:From;
	b=KcOho0wsMbbLIoCD+kQQlYCtWatXZuQmDhddERjrpqOzcWeptEg/oiIhJxuyOawhI
	 3JufZDVphHMAYLHdzlFg/O+2i2My4fQ+6sIkqXY3VjF1zGh2NLgueYgJZ+5NIciVeB
	 idl384OilYhRu74uzgAfl8xz/BPm031Dp5mCDG2SJGDNMLDxftzcuBOOwYq/G21XdJ
	 4sODmzDtPWBceTeCxEHYXOyCFv6rA/m7A1NAYHNFllzlvP4J8YQp3ttg3f8uwyq+4t
	 etG/hAqe+umKuMlO5lMBf2fQb0Sg+lt43u8/v7lvsbybQUo8BbWHuEFPiwAlb0yDjL
	 jMQXMVKy5FLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE2CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049479357.11175.18185342996739497291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a468c9b2a47003160f867309b8f17440fc0e1360d4461197de351c9e10f95ee2
Date: Wed, 15 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760494793
