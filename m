Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DAA2C9D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784074714; cv=none; b=XqDaUOugkE8i+O6Wr2fO3fHBiqUSftcZRAlNkLJB2M/AQmN4vpNiD2pwEANqJwbtMHdV1EL0b5JS8SzZgTjUmCKP3QuJoXSS/8WOo/F4id3UuhoKoqUg7AAqUMphwtYFnL0jFRHtp/cVMvfPLXiAv1onq4XQfylN9fajBEWwfAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784074714; c=relaxed/simple;
	bh=SF6b4/s3epGaVaa7pCRfwLuPxvaoJUd/T3uOA9fv4P4=;
	h=To:Subject:From:Message-Id:Date; b=HFQClS0pfk5InhJX7S60tcaTRiUTGsXU8eoNlYyPZ7cow5Z/WpZIsF4af6cbUo82srS0OqPEW1kUselZwy2FlIUtEwYaDKF3gEY+KEk7XqI+yilIvBwjK625xxD9jj2Pex49v6SCOxxqTugbF5niSOqb1NOVVwCkPIW2rv8f1mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAQYRPG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAQYRPG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF451C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784074713;
	bh=SF6b4/s3epGaVaa7pCRfwLuPxvaoJUd/T3uOA9fv4P4=;
	h=To:Subject:From:Date:From;
	b=YAQYRPG/9AcEbBf+szT2SGI5kwvL2ODLnrVpe0hSjD4EDwhrf1AFpLkFKMoot0Qlg
	 E9qrEqzpCER2cKbS1KGBw82ib3iMt2yW5xp9LiRxo+oA5W31XJkObedGoKr/i7+FIj
	 neXwpCUqF+6GVUEn55WRE4eQHAyeICuSozI5KUhB/wI8fgUxG4a/J7sSfOJ3vS89XK
	 DqX5I9zWcLkII1Md5/9FpBbBNLCA7LiKFgHAbWjxDItRg+okjDM+JJyWgO7BcQpt6f
	 hAe9e+bPgIh2/hWVBlD0Ba2hLzxd4I7ZOJSb4BNKybiGF+pw75bV6RTE+4paDdqIsQ
	 v/ylh+lQPPMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A1C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407471369.24110.7182154276748787829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5e3b7ee19b46219933c3e0ab62f6e98e123e1115728bd87b71439a9d9d94ff
Date: Wed, 15 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784074713
