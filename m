Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F15E481B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780751074; cv=none; b=ENimyAw03Oc/SkFB3rqOgLb0Ay2QMZvr3ijbtUQGYv1tuAQm73IHdoV+xCKcX4iAckcGFT5Bv4LPLNi2FiqKDxRNVf6txPjrdrxvVbNoG/9IWuS/a9QfFEjYauSq9lGEqHFi5Zlhz14DjT6rxdcFQ35WkyHmOahH9tMuR0ODzIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780751074; c=relaxed/simple;
	bh=TvsUGEVpOzxrBLEpV7uodfKFfXUu+cRoWaGxNohdolw=;
	h=To:Subject:From:Message-Id:Date; b=MZCubrg3pUx2oVW4V6AP/c4azbfnRf3FfiDwDILANATWVkXtW1HnoT3hYsRZRsUnIgzbAxnPwygdqgEk4SZKwunuHF0UataVj/+HgTKLdva5x2mwBhktxWzdJoXiWUPoeCwkFw3Lr1NLpvEYqZ7vZZOjoqZKomRod1ej3AKeHBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxDewQOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxDewQOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F51C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780751073;
	bh=TvsUGEVpOzxrBLEpV7uodfKFfXUu+cRoWaGxNohdolw=;
	h=To:Subject:From:Date:From;
	b=cxDewQOGN6gcgmOs1vpayp6dHotFnvTLVpzTrDLU0NoVcIjZApZ+Vmken1aCUv+Ko
	 4G0KuAXe2722SHS6AAkZUvxEBmJapWmBMHpfIM2acLlWFkVHXK4mYcPQybmyHr7CiP
	 6vCXm3BYVeSlKB7xXg/th+Pn4X96c/uZRrPA4w/fMBm0+voGL9KgljUryXWjqG/T4L
	 c7uJvCUuh1yXBqJO/0QVty0cwzy67H5yAs4v9iFJM7RxrS+Cxgscsintay5Bc8QIqU
	 pnS3Ce9iZGtyYPIjPi1+OQnj5h+ZpvQ/cDPJYAAHUXlAmN0CE+gzGCPDp7egzUXSWH
	 VrlVMl8YApTug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C2CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075107368.2402.4172186052370190138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aab900bb1f4e78c20679e78952dcc401a6fb66053a42559b145b878b74a4bb9
Date: Sat, 06 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780751073
