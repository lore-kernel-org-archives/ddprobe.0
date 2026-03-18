Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE02C37700A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821094; cv=none; b=Z31iCrUVzeyfoqnZrtLZ4nLsHhD4jvVGALOCGuq2STDnmgEQqee9cVAM0c6pWdAS5r5ocU5O4J0zPhbC1M3KstYhNeBCqbt31bbLh3B/P8IEWefKqw8sMIzzlTNwyhMh5uWwUPck3nSi+zRK9mBQFIkuNQfg/pS+061WWQ8RLEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821094; c=relaxed/simple;
	bh=E47pNmjdcCVpYMSSsZDM1q+tBWI+UOVrD4fOEdjjAvY=;
	h=To:Subject:From:Message-Id:Date; b=QtaHVH4vmmzUObc6ap3twY/+UHmX9Yxm/+jNKwMKMHTwQZsHNgCdEbCdPKqtgJalqni8FObK2nkn8Rk2ucfNLVWL2oStKGVhREtflu1/FULw7KYITHC3RHc7w6brQORrsNfBO5usqxQ+VF2D0d3gBEZ3rV/SbUprvyMF3CGe/S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBZ+hD6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBZ+hD6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A015FC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773821093;
	bh=E47pNmjdcCVpYMSSsZDM1q+tBWI+UOVrD4fOEdjjAvY=;
	h=To:Subject:From:Date:From;
	b=lBZ+hD6T81Uu5zuZp4RsHVkYop9aZQagbmOnOYOuDH1qStM3TJ0VlkNGWCbWpT0+p
	 svhc3rdHQtQt2wy1F/Ka++abbza8oCsdTrZ62ldLL8pzzFJ0Mnfbo0+hje7qFAUkGr
	 VyEVlxdsqLuWybjcQ1gpMbWb8CbrWU0un9JWHEWfu0/lnmCKjuWzjEr6819Cb9KYQ4
	 2mOmW9R0Pcv0lQU3lh8p9errxGxbveMYkvGIZlcVowkWw6BxqRjjqdF3grHLhkVHhX
	 2+pvk2ltfvWMf48aOcxIJY6iXCMtLGwpHKyTT8R59nCntdKiYsYAvhF9IMYlwpzD2m
	 boLGMwtF3MxyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B94FCD0CE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382109359.17583.479793597869289121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faeea9b88e30b57ca763c0f9c3a07e7f41a4cf81e8542425f63d4cbad15a7d97
Date: Wed, 18 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773821093
