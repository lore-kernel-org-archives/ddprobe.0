Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED23431A66
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712644697; cv=none; b=kGKGLSAyfQIMle/ac6bqS73+V+pjnLekvIcGp4cSpQEuIx6YfEK0eAPKRV463n4xFOxTJFKB1Slf+ZqamFVDDxfO61aTmdHtRKKbs2PU+5T7r+/ARk5EFqO5nPFfdOW8hh6mYvOVI/XzEbhqSys6xCjDvx6EgNv3wsseOloYVMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712644697; c=relaxed/simple;
	bh=5AzVcvP1Elm2Rx1DsjNx/YBNk6s0S7/iIpuda9UMQz0=;
	h=To:Subject:From:Message-Id:Date; b=I5B0/vpVUzLsqIGQtW0ImF5Y9ClxYeq+PVAdwoPnKds9iTWUIc3AswxeiO0xWiLjZPOVIiyf2PhUOeslUvVpbFdzBrIDoWU7trG5T5dO9AaZU134Sljue2eqRMYzFtu96q2/013efKWVQ8UVOYPnnuhFT6UdqDCPosg9fRUS56E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFEuGpwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFEuGpwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76605C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712644696;
	bh=5AzVcvP1Elm2Rx1DsjNx/YBNk6s0S7/iIpuda9UMQz0=;
	h=To:Subject:From:Date:From;
	b=oFEuGpwKlau/SJOlJla4bwxV0jUlbPA4aasVudXS/LP8U9tJVgH+FnTeMFsuMlC5F
	 lc/w9K/4G/1CeDQacyWGfLSjS1yZNcP8mjFYdvJwNMvaC9DQ4Mz6yKXo+iXnv/xvDZ
	 ILDePoZhC4zH5BNrpDBlesCRKfKv9AgT1RjoQIOWtor1xS9KtIwOUFsoNYzlKPxpyo
	 IDK09EfkeG4mlJWm8oRcyuGwuoO8ErfGmqV2TSN/Cf3ShQn7JHhkz0v4qzjSnEoyv5
	 SPidCROsoKsAPXEKL3Y065PPxrmJA8pPSKQK+Uid7gy3Bituz3Ugyd+SDXOE82lA/7
	 N+2yYJ4n91O3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65610C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264469640.28788.9187591736662500526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b844fad7f077cd4800093ccc3048766b229996fae01d37653bbb2d8012238d27
Date: Tue, 09 Apr 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712644696
