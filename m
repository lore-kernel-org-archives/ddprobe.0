Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224C72FD681
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784198314; cv=none; b=n3LjuQJChj4DgKVH5LJ4d7+Vg/2gZXgvXTg6hgi3aKXdJIXlznc/tn9ZvG1MU4ToVaMqmw5MC2X2RBiPXGUJvzhiohlJGpF6FNrvc5t8zGJwvkA4TDziSVVyE3HWv1msc22E9I3esvewgqEbblHdRROh7DCz7g0YkdfzmVtmhh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784198314; c=relaxed/simple;
	bh=XwPjY/hhD9aa1NtRoqtR5nwEbpfpPWPc80FUGRdvybs=;
	h=To:Subject:From:Message-Id:Date; b=llqh4uoLs/8327jBgqzJeVLoTPegvaTPpoBU82odlLoo0wQufXUB9yFkJSmuALLcYv4nHZvKpLJymSXd58wTAl/0HcwH4RkzyiWnnaiq2ZqiszedVFAuCYjTojj+8ikGHkMXll014W2mkrYWYCDoEz916HRz7kuRyggmnONonh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJXk4kYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJXk4kYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5BFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784198313;
	bh=XwPjY/hhD9aa1NtRoqtR5nwEbpfpPWPc80FUGRdvybs=;
	h=To:Subject:From:Date:From;
	b=KJXk4kYprkDnpcQiIfNuwY9evdbyBtA14sCrGCwm4giOg/su3mlXvwxz12QPMgaka
	 jfTrM+JUtwoVgeXCxYu2EEP5w0FFB8loF3flPqXJy64tN4vCXPOjn/uVnZhT3SEWPa
	 h2ml1uCN1PugA3SpkOT4GoV7fd/GQZQLqL7q9uTi47r6o9AYkXP9EUVXE4aNKpggJq
	 5CVBQnBq2kxuo14hWKXB63dFz7sWHqZOlnjgYmtv8LcSpLybdcvCsJuWKsWz7wmrK1
	 j3ErvNhJFdYRECm0iBJwkc5Bt3Iw6MTZZWBNtFtiVZSHtXS4AVv2uTXE3y2u1iGehW
	 YJP+uC69iAtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA456C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419831368.29129.11727115724242035114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4231171251b54aba38df73293445dcd6bd29bfdfd1c555c3d318f3565c662b9d
Date: Thu, 16 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784198313
