Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CF149E5E6
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791370234; cv=none; b=fKpROWAvZZrHaUPwZx2ArDKxb1k0u38JrTaohe1kCvuODirbJN2GjrcMOwnKd0GEK6EWURYfkiyWLeOr6w/nSUSlLgFCvav6nh1jqHPtHzUQQ4U5ckcj+G+vWTdDBAlLxM3oEMImbDaM1MUgdNCWChU0FKb/6yrhG6I7Pdwh+xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791370234; c=relaxed/simple;
	bh=oPl9n+hTxwVul8WR966986osCjOftrfJWNAO2ZXCwQY=;
	h=To:Subject:From:Message-Id:Date; b=oogfYv/17JZyl5oZuc24+TpBq0ALCD0GjyZJURAB/xd1SfKtnqoKWHSmQEgqzGI+mt1NtX+VgwCbua5zwxhfxq7mGPGOvmFYFxOWW2WTMmUMJINDpmGm080k5XLGVFZ/TwNLbrL9SdH0JWVXOOQFLEJYyDK9LChC+qX5hD3b2Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smTag7SD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smTag7SD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D177DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791370233;
	bh=oPl9n+hTxwVul8WR966986osCjOftrfJWNAO2ZXCwQY=;
	h=To:Subject:From:Date:From;
	b=smTag7SDHYQ+CmHdmnUjzams5HKP3ONmk2DMwmP0JT02IrkSwTedQTn33RETnXpBO
	 5W4QIEIt95rk6UpDw3769AVWwvPTo89kIF0afrT8V1gR0xv/4a40PM5nryFSlL08IO
	 ZAwdXkbyD0zddDptFaBYCUqO2itdrhOdHO6I7ODtooSXwqY9Sb5f/KCbKnq66FUA0E
	 SkjgnSP6oJMp8gXHjq6ANgOkOdlhvERWsfFEr9heOsYxRWU2ypI7qYQswhzYi9a/S+
	 3ONrOyHEOEgjwXH0Ar458qS3QssoBxEQvr4ln68Jxc5vywP/stM/dPYyDXz2Jd1/QW
	 h0znl0oVyY0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDCCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137023368.27113.9028366486819495052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c12ae1b5fc10e2ce319bc3a56898cea0537f9132dea65bb49efc6f0a298ac0
Date: Wed, 07 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791370233
