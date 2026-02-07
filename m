Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493461D7E5C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770431034; cv=none; b=UdXnCvg0d1mX7/8ulZ1r69yD5KjpJzQ9X1tDK5I9/omdpLJnbLXwGeLIQdeYnVfv2MOAYI4iPXfMDhHzY2rjDF7FHDK8G4c0jPt7ndon7Z6HrWvM4QrQkgvrVdnlBX2qsJ3gNLZGRDachhmVf4tHOMkl4R5H/L81UXQ4/WA1PJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770431034; c=relaxed/simple;
	bh=OREn2TsD8+S+gnVSk4bzPJobgLCWcuzoT79MzjR54HU=;
	h=To:Subject:From:Message-Id:Date; b=pDQeq6ljLB625vW12wME1kmRGvX9Kl24jOLVhm9wgFQBkhqpqlqtJsHwjJi+SRNIzBxELuNjY5HFUtdviZwMFvyuR1ZqxS1NytOnfg+BJaDM6I+8rdEnDhV+E51PQCQDoNBG4KA1d0oCf3PmqIPtj3AMprjWYqIRFdK7mXWztyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m++Usvzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m++Usvzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1914C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770431033;
	bh=OREn2TsD8+S+gnVSk4bzPJobgLCWcuzoT79MzjR54HU=;
	h=To:Subject:From:Date:From;
	b=m++UsvzwGve9eNGcfl1ecrCdCMr+2ur5i2mUtxeP4xRHyHqOMSmrKVfIleFhFBubi
	 yL5aR0I1Z+N7cBcU8ouASZoe45AfdD7hnwZOSNBlXc/Z3x2KbORJZBfGgQb0+GO+jD
	 dviYoaXvbOTaEhwYGkCs6/SqXGX2SXxPAGr1VqJhs1o0m/h5PbbwVOrWsypVL6k2KB
	 kjXI15i1v5dIKp+Sf5qKScAVyfpQqO2Lh8P25BYB7gUZ8cukcCmSIa/Zh+pksGM2GI
	 vCyalk7jmJ5qMieQL1w6sMf6JWkt36RYJt/BhwcNe42ybNfG2dd9BCr/MibPit/27t
	 Vxx5lRyUBE0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7EAEE6B70
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043103362.9044.3785062769937368380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12a286bf9ab39823e7ba8150acf525cb7ebc94f4c5bd66b8317cc8594af3517
Date: Sat, 07 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770431033
