Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4294D287268
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781856394; cv=none; b=pbTHdq6ho1YtntyIQsGEjN8Pwu40Jv0dk6phUtaXYqA1gd1JNDGnr6yrmmrDqMWLPLGeCc/cyznGoXCMD3s5OV8dA6CKT7BN7lC9I2kScwgfSmW6YZYte6mP6nw8HrjntjBCsnVwd6MA/Vt6XNO9UwZ4tnrCRyLMs8DLlAsnC6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781856394; c=relaxed/simple;
	bh=cvviL+QpcDyH3cpsRprarmrCJPkIGPixsk13UPEZziY=;
	h=To:Subject:From:Message-Id:Date; b=WdlQPysao1yGcZh+GNbd9F3/kYVdSPSPkCkKpjHqLIgvlO+2zL8Ae65S25eDNIywZu31VNq3dLbHrJlQoU4frDsZ9d5iBZQAoMjCP/V5XdLvnHAyDvSdEgyiCnsWP916jC5ILSruRzang2MuAm13NaWX9HoPxiB34+IEYs2fzSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHl32tOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHl32tOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDABFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781856393;
	bh=cvviL+QpcDyH3cpsRprarmrCJPkIGPixsk13UPEZziY=;
	h=To:Subject:From:Date:From;
	b=SHl32tOIpyJda+qbV71bVR54DMMzkcMvmrRl+sFHmqCOzopy/XyOISY7m3Weztkfo
	 ey66Edah9UmjV7+i5JmwoConxa8JRyzaVQCsrBMYwMFntpzV/WUAzqBhcvn10ft1Vm
	 loZcKbR8uGldzPDBl4n/zvHv8/oU7wdeFMx4Or6vAUvaekUki2XRoslZ/p7vO+D2ZS
	 8HVsr8HTXu5aD3iUTWuk558mqEqpojZJa8cFXJC14jOXxLPKFlO01KMhPs3O8Zf0E4
	 EbM2h7fZOqHRHTO49oufJZNLca99ZIFsmMsA03JFzbS8H2PJm4tdI6+xnMxRsa8iCH
	 +2m+pQ172vTfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20FACD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185639372.5056.5563749044182381734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2444d35fe401c2d1931f231e0c22ef8c48cb4d64f2da9054668f2d7b8f95845
Date: Fri, 19 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781856393
