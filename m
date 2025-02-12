Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6861DED5F
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739349054; cv=none; b=ETGLivSs5fJqXlXWdkHHz8g4Pxqnt4k2TPYq2xJL6eJ1DDm87hYKVFR8E4LhK+G/g2LKAsXCMRoS1MwlGegnPGJpaqHHUx13SZeS6Ufi+gnGZCth98ZcI8DmTDTsh3Tw4pyoiXKR4Afl6kwmxdWv6TqNlHKjrxXCG9ieVOcVuIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739349054; c=relaxed/simple;
	bh=1owB6xuOlQk8vseSiTwEYiDwWdrfNS+IE7Pli0cmgoY=;
	h=To:Subject:From:Message-Id:Date; b=tauJKC//xN4nhirkMeielf3tZfd0UfPo7RT7gFQfjMvBMil+UTLTyx99Ls3Giwty6xHEIN3h0si4RkyysDryiAxHM66Mxcmr1QpUXx39xl4VdJ5hkXDD6Q53kHFcWsmH0K0C3QPqCX6Rpw8KbCwO2CkHnx00nkX8MJjgV18VPMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBiyz1Z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBiyz1Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FCCC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739349053;
	bh=1owB6xuOlQk8vseSiTwEYiDwWdrfNS+IE7Pli0cmgoY=;
	h=To:Subject:From:Date:From;
	b=HBiyz1Z2ZIcN5oeNzj7KsdHOZ7IpRDAjo2BOkqVtMaxThUiRdqE4dwrbmrGiTeXix
	 gj5VIdlSHxnh9nJmhod3CJ+JjGjMYJ+/RFGhZgY8qiHuToR/vNA8aHj5bBJ2tpNzHN
	 t9SIz9baykMOy1luFSxYTeaRz3J8aUqD0YrbJmsNXgm1bL22A2xSA0OBbAfH6o6Oev
	 ePuIJcKZy9UKtBeGv66p9p17jP8i7rYn9FNoWjCUMGsDzXpnFvNRm/4MEbC3EEuZZu
	 q+3TknF7d7x6llE6daEa4GWpPZQFp8QpjW7P4sZ3KBxGtDf2C/89VjJ6/JnQbXzXZq
	 uhGMIO80L4Y/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA066C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934905367.24724.5318287322513748927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ca1142528a77334da586f4c39b53bea93bbe4684212a651f287254aa2a06c1
Date: Wed, 12 Feb 2025 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739349053
