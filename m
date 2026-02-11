Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7096238D42
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770847493; cv=none; b=Ix6B1Z8p67lNrzdh4FQuAWCGjhB8hH/sEclvTU+g75TB84FIUdsksTRURlilWjqmYFSzfJUz6pxXBkkmQw8pHfO+C6iv5QM3G7XmI1MiaPwRSWARF/uZwB3TyEyAbv8y87lm8rinQ+seabmHbyscd65Nol9mmuEUcG4GEUzdXLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770847493; c=relaxed/simple;
	bh=fNfhV9rKfJ+oV7nIxxACsCVxjFSHtmw5CW9arpIBN00=;
	h=To:Subject:From:Message-Id:Date; b=ndA0k1HBgQ+v/6YxVlYZNsgXiaylYycE7516GrDllLR1bY44FRvSYSyUT9s2pAPSZS4QZ7PXQ+lZ1rKFQjCOvLI4zpiJKzQX+NAtw0aSA6BgNIRoP9z4ZLDVCxXvuFZyJf5CvnT9Mon8buv7YMI6C0xo+sRc6LKHG/JInxzJ5HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP+9W9gD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP+9W9gD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9A5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770847493;
	bh=fNfhV9rKfJ+oV7nIxxACsCVxjFSHtmw5CW9arpIBN00=;
	h=To:Subject:From:Date:From;
	b=TP+9W9gD+8iiLxYGIUYrk6NWI5vDhRjPxaXqpqxAj57QqoL+aQGMCMIE/lJkuZXA6
	 Na6Uosm7KlHjGQUHozYz3xlHsyvMK+3nhr2AWnCAPInZDnxjBUmrhxM1TqdlYoq1PP
	 wC8BKLje6Ak0RW7UEqCfnqo7fzv/IImEjTKHyz6JpVsNP+pz51VzCpKNMjgs9Zi4Mn
	 Iv/P51wU9/dBP29lZbTooNL4eJU78Vk8GkGOIcOMr4A37xhBuZh1XMDIbsEmC9nmdX
	 /JU9LsnVYN0mscCHJD5+SndVb/6+GG2y4G9toG62Kua1CM/INO0/i4CkbYtqfDXvsT
	 B40I/srTrJeig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2C2ECD6EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084749362.16159.11922617299346500049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6972a5cf1b19fe8ed8cddfc05e9b59ac04fc20201121dbd1831e35c50053c952
Date: Wed, 11 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770847493
