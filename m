Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC8A320C
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724596554; cv=none; b=BRgmdmLSyVkxbe2QaJOZSMBs6BAOmPuGZVXi6aPq1C+OucYOmxrijHrmgoQrYfyyWCjAn+p2qw2ewRxr+1Ei0+AMAa0dEx0XygJdKy/lY0giipyXSFQqWvtFl5aoINEwcYXJcvDkdx9hXL1ZQjCoBwePOuNzIo2OBBVRS4B3Xwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724596554; c=relaxed/simple;
	bh=d0cCRI70Pynh/O+Kq2Wygugso0SVe7AkoASVWewd3QI=;
	h=To:Subject:From:Message-Id:Date; b=PHlECmdEqgeGSfDb+gyKwdSCozAf1N1Lu38Kpa2D7U04tRvfvTkxHZeVEJoruFKtM6xrJ5NUPI/L7rQAJM5W9t9ulNrCU8P7r8NdQFbMEXqNg+EIqxvrBiqWrX4xDQlppiTwc/ciiNObtJH7F8FiiqfVwTdytvYwnp8vrzHXoSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2h0CdAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2h0CdAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1A8C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724596553;
	bh=d0cCRI70Pynh/O+Kq2Wygugso0SVe7AkoASVWewd3QI=;
	h=To:Subject:From:Date:From;
	b=W2h0CdAR++iWRQXToUOIsk9YxgrLwe09LBJsjR7bvjqJuwH125N4wgy/SgGnVYPhT
	 MnHzrlCipvcEPQ7jvlwVpXa7aJyPr8g2jfI7Fc/bhiiXZDixsvw9v+EMZ8if9AYm0V
	 sGadHi5nkBggDcV0sjm8zJve12DH3dHJRi7zOMGQIAd0HJu8aAZrYWVMpKIzyrPtIL
	 NL1oyJQ5+3mshqm86slwc/GlXcr1OOyPYD9+TeUe8iR/pkgSTJ7imSQahOfTN5qhhS
	 mXht1c1vOz1HXdzxIztfAHK74iLq4DmWvJkCD7LThnbu3oIPh74b+zeic/SURmqdrd
	 m1w8Pj1jQty8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95887C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459655360.4954.13158425160680646902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0280d835cc24646d6e5e6079b98478dca6486d0ae78fdad97b2a6dd16989a6b8
Date: Sun, 25 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724596553
