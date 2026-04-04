Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25A42E2840
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775325934; cv=none; b=dNwy9+LDb59M9cfZKI5ipF6/1aXAsvZSjHQupXogXygkllwZfbXxP1cb0xcGvCb2vs4rr9LcEisOGyUgcSaC+ALsrPhTFfPKE0sajXLWpwnLHvbj3+vfxJ4c5sn0sZoP7N9fPsNxnWj3HlQEqjdvvk69loJbYZIsjNVLQYIOKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775325934; c=relaxed/simple;
	bh=6Kr5yhAxSIcG3J6pXrJcCAoxDT/ZHKGXFoih3mhCBQU=;
	h=To:Subject:From:Message-Id:Date; b=l7vWPBj9rg3HZpB6+mIUCNQY4e+mYaBW5bXfUmAg1holj52qEO4fTF9u+LwnsKNvLSK9DA9MjwJ507SgeEAqEcz1LGPCj7DQ58NveKyC+ulKXqwBcsZjWZhCcurUb3Xh1JUtH3FBORO7mkKBqdc7+Ne2QBVjg5n+HZ+fpaByDg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFKoNCDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFKoNCDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36DFC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775325933;
	bh=6Kr5yhAxSIcG3J6pXrJcCAoxDT/ZHKGXFoih3mhCBQU=;
	h=To:Subject:From:Date:From;
	b=gFKoNCDIhOxp3K4gJrwETYT3+pp5z4sRbAcOJ+AWY7ew/2b6v+UKpkbbIAUZiRueR
	 r/iuxeJemYMlVrKLpPhkSAorV8g6Ovo/m+DHj1Nu9h6W+2GkZd8BIo+YI7TlHTJ64u
	 HvQ9vXc4HayzuANIjBU63ba2VOforEqmPpRot4iynRgFwtNAT0ej3guh2joVcP/tsy
	 N7iDA5G5GxE32V5vCnj84qBfFtZoJ0Y6x87CPDeDtg1xP4Nnn4LCbFOnNUd0EvypMX
	 2KF+ftjFxjYMTRCRauExh6FX3QWAv2le1t6ILzNogCYNE9deeQ5Xt7fLybP8vWXsjk
	 RgOzyWxdSbVdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE9AE63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532593368.4553.16141221850424989783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d64f62dd793a7b224ecaad60fc1566bddc28690ab952d6b86f65e146df71fa
Date: Sat, 04 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775325933
