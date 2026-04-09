Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AAD38F636
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775724934; cv=none; b=V6vy+1iNGTZS+ITaYRl5H7kEsdJWulVUyXHkJ0Abvg+po4YO47lvak42zmOs/ZLvq2SWJu5O964vmQtLoAG+qCZgz9x/AD0yv8Z7PDjT4wAkmWfaHIcwJCvBPO2asfZd5iP6gMLqjvk6QdfW7Eg/mX+0vsA/a1vjq0kiuTL7cLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775724934; c=relaxed/simple;
	bh=FnpPYewYx0sq/IPxKMvRZzn8fe8m+ksLh6znirFfnVo=;
	h=To:Subject:From:Message-Id:Date; b=c4vaaud0C9aaufPuHmYX0RDmtE7fY5V1hVl5zJeXMW26FBLlvRyl1b+O4lEZrk66nHX0e1ndK5C+o1a9BsojCoCsgABVXLzZ8wV6ptoBrr+ZBd9UL8GGeZV0KcA1nbWb/cxoiN5G+qr/F3wHT0r6oqE8AOv7krO7c1+rjeSC+eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hy3pc5ZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy3pc5ZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE664C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775724933;
	bh=FnpPYewYx0sq/IPxKMvRZzn8fe8m+ksLh6znirFfnVo=;
	h=To:Subject:From:Date:From;
	b=hy3pc5ZOGKSa5INdZeGyRdNabhlaXPIlmdQR9+SBEhPqSZvOD7eNJHFL9XhlzMiuO
	 b8vGjRxyJjmFnlWMXyyYy+70gUpHwVvTFqvZVrfpW9trVMzxZLEK7ydbpmxHma8c+S
	 Rn78l3UGhWOK3mgjLHERr+Rp/wldoTdTgXOUrwmC17sglsoAtEIiObJwSQ8EiRq1RR
	 g3BkCdF7t9YdufhJdU63oY3OWxLLgu7TiTtUnKFjP5EeCuU75D46MFy5IzzAuUMDp0
	 lHviVFjtLIl9mrA5M+izj9CTjGwtOOZt4giLDPUse0uj0gVA/KWeDb2UdX7FmZcfsb
	 G6nYm7tq8i4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE09E9DE68
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572493369.16449.4201216240292427928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677d4855998c71c93fc58bfddfc36af65448d96bd931ed1ea335f5705cb7b7ef
Date: Thu, 09 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775724933
