Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F74394
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722043554; cv=none; b=tDOfNqP1JqJhc0rNIg+VVf//N7gH/mqG4Zhdqjws/qVeRCgR8uxmgfJpp5l46cRFca/y5xK69CpWgHlcP4aeb86L7kdSKunP88S1I7P87uBqrGIMECW+ur2ycjG1mniQ1licD7OxtYbq2BxqZ2DH8iP1fW4F/g5haUGx3H3aH8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722043554; c=relaxed/simple;
	bh=ujB1WMYgXgrk9yci3XDXCKtrklFe1Q7/AVYn9e0srUQ=;
	h=To:Subject:From:Message-Id:Date; b=Ai1GHY5t5lQZ/cA/4PYVUXZf4J4Am1FCEWYduLl6sYkoC1DwR0i/zhcBgxE+1JkhA84YKjEOS+XmZf35z5vHLPxvXXpnGIumoiJlKs7JXRxAuA5pC0vNAteRez5OKDCRnLzhlTVYadfuMmOBN0dkuMfHTeaV8pFqB4/qNFoj1oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8XvXzJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8XvXzJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8190C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722043553;
	bh=ujB1WMYgXgrk9yci3XDXCKtrklFe1Q7/AVYn9e0srUQ=;
	h=To:Subject:From:Date:From;
	b=r8XvXzJzF3/pJmMNevYDfWPAdnGAwy3OWlz7TsU6E0Yo55ySxosz4wl6vPVRMd0b/
	 aPIJN0oPKO5bS2XR+tYGf0L8lx7fMuanZEewEHF7u3OoxFYj8j1nOdW/cZ4PodU5dQ
	 2MZOj0RWCvoF8qzIoNmACkDH5rfkN/ppH4XFUK9W+ehLxI2B2CictxKz5xTMB3YvOC
	 5wYfTxdYHBQbOG3RFYWLufkci6I6YbvvqtHsRQKln+K91xhS4bbKhGwg2FGZht5nio
	 VqDcNoH2GbOSMJuAVnerB6ElUZ5RUAAqyxFhNQdPYDk6a4Ca9n5M4KdILeko40I7ik
	 Jzu2zJqpM1r0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E09CC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204355362.21344.17238651118386449651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ad49f147a892c9ddc7c9d59b4363e8e14cc2f8a26ddb1ed207aea8d8efaaa9
Date: Sat, 27 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722043553
