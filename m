Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96236130A7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711572496; cv=none; b=Vf3BMmae6eALXQ304kLRcwoj82cPMmlvvoOlq96Z2PJ+o3i6RXJ5qOmm4lfs3ETCiLqzO6DaXfYlFncfOzpCQWyb/V30tY8SeRRxJrZPX9hAhLrw2R2Y0ikqxhtfigyRnGVpWiurumIf/YNyALmRZwGasR3YJVt2zDUDEuN8Erg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711572496; c=relaxed/simple;
	bh=nSSBevIuQvtzsKhSy+kcS8sCPVA4Gl908lpb8lSzYf4=;
	h=To:Subject:From:Message-Id:Date; b=ANJihIfAv6hFSmDbgZRl5XqCT5yY+q58A3EQcO6dM5Ah0WtJr+SbBAI2Q37JXtOqC9ziDtdX4xTlHV9vqs8Lj30uIbL9ViyFkfT6kDMV8GmSFKUGqyyDYjmAiu0dRkHc6JBiEbvSoTQxDOQ8G4I/rnNCHOQ60A10Rm5n3XJMqvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkcI/ZtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkcI/ZtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78037C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711572496;
	bh=nSSBevIuQvtzsKhSy+kcS8sCPVA4Gl908lpb8lSzYf4=;
	h=To:Subject:From:Date:From;
	b=BkcI/ZtF4SKro6nMc4NXa8AdycoT6lfL6MVYxYUnsB6nQOcfxDsPJOjGcF5zRAl9Y
	 goEJbgK6OlLE2rUzoTdHo3YI08y9hoI843X7gF2qUSd4NWFagbi1rP4unzWX1rhAsZ
	 vKzp2xmwIl4U0qv6E0oxULtV/4M8a5YCHhvGGkayFEdOxgdXsGdyrOFPBv6dw7E/6w
	 /Bqrvmi+GwJ86nyYJIz0K4Hmk2EuKyatuRs9u2O6XZqPKORekz/FnAYJbjvJPFYPyg
	 dSh6v3qQegO9nciyRlP5GwYwJPqNngkEuHNaSX8LRSOe8xeGwqzbs54EdjmR1GtXyH
	 dEQmGSc1//f7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D41C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171157249642.7593.17860539623055329396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba06978a156a5e1e1917d05b08fc59af5145742d9d78a0c9936995f5eb8bd993
Date: Wed, 27 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711572496
