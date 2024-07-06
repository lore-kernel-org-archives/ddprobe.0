Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A937074040
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720276523; cv=none; b=IIb8AoeTXUlT40yiMfCSGYQJLAeKXZ8zdtHI80BsAx3euTGB5jYwadHvfYon54ejptcuoOC9p4sGfeCvIUhc1Jmv6m5efZ+cI/oVQE8Xi9S/SsUHzB/MLeUFRe4N80TntvBj+p+Sv1hTXsZg5uAIBqPX6lbjKFpFVm1+qCaulrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720276523; c=relaxed/simple;
	bh=VAdUoJI/1Tu/W7OvFvUT+ZXbWjnVnf9jm9bqDsQZhOU=;
	h=To:Subject:From:Message-Id:Date; b=C7n/AfB8nrtYeyxvO9aU2hPhPWEfE/7jUCaGeOB6LdYkAA7Y97ccsq3FpcCleZz/2Rnaj4FelU9OktVU09xJvXrnYbKzh1e+ooA8rogCyeah2KWiI56kDXqz3e3ZKIVGmdT6Mj5793wyXMCRjqoTSr4eecBUi0wWqPAS9LghrPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQkDPDmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQkDPDmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 487F7C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720276523;
	bh=VAdUoJI/1Tu/W7OvFvUT+ZXbWjnVnf9jm9bqDsQZhOU=;
	h=To:Subject:From:Date:From;
	b=OQkDPDmhtNhixn7wvsMFHl3hC2S1xhuTHcQrgY5zPGEMf1LH95p99Emz8X4PrXgBX
	 0JWfoDb977icasYYmbpEtYvQhnJ4w5EtHQqfEUfXw+kpzu50IgJ/NC8qTMBlvczlM3
	 cogpo/LrwQ51TXnJoJveUPd+Nvjgpqx5+hqyMXts3paZI7urCqvKEJY4kHincNjygF
	 3sKUZv+D5pvs/+SnWXffntulYfpCSOawRtaB/4ACmiF1zAr1A7J0jgjEWHyULRIy7Y
	 C3NqIOCEVdwOg3gGcPnIa9MHEGdvHTFyta9GNqTs85hFzJ4g7yGC3TTuhzwa/DBtll
	 is81l8VVlba2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F6E9C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:35:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027652301.8514.11582164702243542417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a811c1071b646014e8ae05227372c9792b246e18309d97ed1039ba8d6c455230
Date: Sat, 06 Jul 2024 14:35:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720276523
