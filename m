Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172CC283FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777879054; cv=none; b=RNfjkGh8M5OjlOYXoo5k8QbAu31Ux8rZBls1lLPD3qkTj8IqZ8C2HmxHPserM8y9PJ+jS9cHg80LHBcfbMfKZfEQYPk1rpjzkJHGuuKg486X/oU7QhovwYzlwmusGpwFBLzFj2DAIw3cJ2BJ6+w7BjjUBO/OarEaU7c72eamKxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777879054; c=relaxed/simple;
	bh=gSpdCFiVUBZKIVT8e5k0ABRH7z+6hVqaMHRstfu/ONE=;
	h=To:Subject:From:Message-Id:Date; b=A1XrTq92YrzTyrV2I+FKtbBaR5kJQ7m7Eycg/AL8hQFIumhXubo8AW+EOzDKDdPkqU0Ft0dTMQFdv6mco6xXy9En3HB70qAmqI3vWcG26RSWLr3ozPMcjoXXBw+hTQg5OI7rdAxrAzKUYD5ic8tBVVjKK9u4EMm/rZpuSI6y2RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzQ12g22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzQ12g22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB63C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777879053;
	bh=gSpdCFiVUBZKIVT8e5k0ABRH7z+6hVqaMHRstfu/ONE=;
	h=To:Subject:From:Date:From;
	b=mzQ12g22hBlNFfnKz/zP01eBELggq78SPB0xVdosUh89dA9g2G3295QxyCWHB/Rup
	 SY084rV8dOBD6Xq/8qCW7g3er2ckQ2nqQ05gYgWUkspfB2WoRGhe4mpvtfhF2jBesA
	 0Ghdb4IONMjty1Qi8YixjnamxSPjMRx4j+IV1YZgpLrXVt6e30Zg+7V/crT90jbOpx
	 gKMNbDBantsEOJYoeVb1nis7v0l+lxO+AJPRuE7jTznJ1mYRqeKxe1GAO14FdJrB/a
	 uUd4pz+/h2H8aezDJNQ1eEw4DBfcfYsuptUT8/+7JIo70CVege9FaVplYYPAtwtJsP
	 y0Kn5ByJ/EJGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD418CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787905369.28029.14338105196624459779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4335274b78285a6db252b05100e719f0d74ca51531a08f9a85f8889fd81e4716
Date: Mon, 04 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777879053
