Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA5B26A0C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765382574; cv=none; b=h1RLPKJIZtvjcaEEZE6NH9QHZbe9B+K35e2f1TwC1ZTN3y/8sfJo9QLTpWR4+A7bgJNzqZALs0UjJH181LxPmzomFgzA7SunTS513dCHLDjgdU/6HDy3MGHNMfOvem1/d3PybzNlsLW8QDovACfikEJdeeoiURZmdlsJ8B+/KyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765382574; c=relaxed/simple;
	bh=Ggo+qvp9TzhiCQj4re4kxHAJ+IzVW3l9wah18QRNf2Q=;
	h=To:Subject:From:Message-Id:Date; b=ZHtQ42ifmrJnJKl47sHDcFH4GCMNnUu0k0fvKQNXi/FlztMrI1Ch4gd4MYpsuOki0RGW1J+c0IilLvWCP6kvzotSAMj20xscrzGcdrzZB4WK9khBb2dPI9qk7WN+feoK7H99qiD7ZVrKlX4wBcCerxJdypCpmsW4P+HTT8E1zQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q93wKIU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q93wKIU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B066CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765382573;
	bh=Ggo+qvp9TzhiCQj4re4kxHAJ+IzVW3l9wah18QRNf2Q=;
	h=To:Subject:From:Date:From;
	b=Q93wKIU8CwqHT0N1EGLsWL4rS2UTo296ap2qgV6gisVj/as+E90+zbtfpR1L0tWQ5
	 Py3kODVSrxo/e1ZUCvlRx6Bc0cm90pzbF9gUM22aI3CSs5UCk6vqqLG0x3gph8xB2o
	 4qAi9N3V6x+JFEZ/UErx5b1nFqxZYablO/MqET5FkUYM16alqQm/OEDk1i/70waEbH
	 zenzyJwskDxmVFqyh+oGi3bAe+uL+T91llUiucEQU4VjIfqqgDrF1tm1gjzhJ3BurG
	 Zl3kbEMF+MCNjEerlH2aZS4C/zvHBZLmeg5Rf6bjEvjh+YVYBs5AnKHFbcacVdu+da
	 2yhDbQ5aPnDGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD96D3C922
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538257362.24116.7344899048239365737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274999fb56973a518cbc4146ab4a09262ffbe9a89667e3de507943ef34e530bd
Date: Wed, 10 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765382573
