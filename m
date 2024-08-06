Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C31033F6
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722925554; cv=none; b=FJz5vtFxS1Hf6XOMmFiusw9S51xm6KvqmVYcpLDJd5BZ5FRgId2zhJ4VPY/YoBcJQVblaK6BEjaKDMWQVkx7FLu05V6PwQii4kDLiiJKGRWCDyLpnVeWmkiGy7KGjujdvw9s+bcbgGKs0Qq2cackOgFRKUkRbt8foMhJhxDHY+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722925554; c=relaxed/simple;
	bh=BK/pcNsZMwm2N1GbcEn3s2L7zQyhGrL2dtVfxnk3fM8=;
	h=To:Subject:From:Message-Id:Date; b=nv3N4k2G+iPCGLTzq3ckpD7WOef+aAiAweqF1v31Zb24fIhItN8jac015Vh7uunqV5xg4EgH2BPliI9kC76tC636PfXAUkvdQYj5UjIWAvhBhfWdyAcPYMfUJh2tmMaHnO7sn0eR/E0PzWggbtDIcPtNI/2WPMgtbBn5kvQxTzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fupFtrWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fupFtrWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC4C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722925553;
	bh=BK/pcNsZMwm2N1GbcEn3s2L7zQyhGrL2dtVfxnk3fM8=;
	h=To:Subject:From:Date:From;
	b=fupFtrWnQcJKGpKbP8G1ArXSpU40TZw9i0b42KUbDa9osebHJ/l6lDI2qg/dndsdk
	 TMdWT7vFUMt7ymZOGedD7Ec1r4td6x5AkbNLWbTQPwRamh4IMfMBhFc4H6QtKNX3wK
	 tAfKH6VJKJ7+lamdBMQyOONLOMy9+a/kkTzSUQ6zrm6Igas1e5a0zdpVhe8ah8bS1/
	 mF3ZoLAcQWZdcpSI6R7wSMmmJbUG6apoqSSPJH9AUvRDge/sqDiezioBCC6Qts3auD
	 R3x/CNVcO7/lCfRiReWAxMiCuQ+vpq/3o1nyEjSJoIx5KmOIwNSbSYXOBt7Ikf7jGA
	 Is3NlbWKIePcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBDDC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292555362.2955.6829731825507566402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92bb471d5f4ea1d1e3db034662727ff0ad6fa01b301aa60478c11bbd0b2fd13
Date: Tue, 06 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722925553
