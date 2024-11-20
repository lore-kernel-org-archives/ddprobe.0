Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FA8146D7F
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732124754; cv=none; b=MDy1i/F2VC3SocBucOC8KYhs8qxnxkrsuM1UfCBDDjJnuNHJGwrnG+xG+WXn/pLp0J3ZHHjS5Ja37eoSTMulsh+ihWwVSMdcQF2zqwhGZUS/78O6DD/MlNv5enDAFYG7YEVqburf/dk9SRvyRTwH3w1XyNXOs3bhfOSxQg79OcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732124754; c=relaxed/simple;
	bh=zx1C2FAJCOqmFPvUOZUHh0jQ6YNPUdjX/KZ6p3wzUt8=;
	h=To:Subject:From:Message-Id:Date; b=Vwvvbbk5arVhCc9Blk5bS/LUGRp3c8V0OVR5KiA42nSN9Du7ojbbDVuwepEBiKEWra5hR3aLaoyjTQwNq3IAB1+vMSJ3RDDG/F3/KVzsb1RGE6+wYTfDfsI0ddXD+5n0viHAQU1wsHhOMKwD6NTRixAlyMd6lBjimpMK9UdYmGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHqw+JGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHqw+JGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF9FC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732124753;
	bh=zx1C2FAJCOqmFPvUOZUHh0jQ6YNPUdjX/KZ6p3wzUt8=;
	h=To:Subject:From:Date:From;
	b=FHqw+JGuFJ/ITDmbWpVpZk7eXvF/YtIfAjobrBfWojgYyDskvKCWsGCDT0fzdj9U2
	 fiuaQi1vYduYNFdr+NhMhn7eflZOXk2rAgZRf5TEqWHOHI8m0a6QzEpQlpYur9TaCO
	 kWfEF1LKU9qWH4P6LG3xUJY8OJvLW6GyonxzO05xM0VjxAXjYLrKT9g5H+ll6AqbXj
	 9XWa1NyE3lYQYCMTv1J/giNjp+2KyMdCz4+ZApHppNZfwzqEuYLhy5klTpOnuesSnl
	 /g2+KaNz27lvtjdNcU/Cl60Thlx1m3y5ilI1ZL63BZXE4SF+0RE7vR/OUr6GEKC9q3
	 PsSfndwHRCOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98749D711D2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212475358.9006.5797342834655748165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53c58c8a973aeeb21ec792f4a0932e421d06f7aeff2c1da0211d0ba480909a7
Date: Wed, 20 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732124753
