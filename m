Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4682D233721
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788319834; cv=none; b=fp6rQO0QMxgriEYB6Yp2CRocqOmiBWF9+ZXbsY6oWUihV6+JG0DnvdcgaIkGMjWvbjfgtgptixbctd2ezZ9zE89zkHxliecK6buOMqjZewNFloBZoyA/2gug8RPNAqC5s7mK+OGFk7/WY6r96ICcOpiuOHHWA+3QWBu8ApSfbw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788319834; c=relaxed/simple;
	bh=MdP7z4HWhmvzRNU81Jt/R3UlqGDDtzxJ1OPTPg/qrKc=;
	h=To:Subject:From:Message-Id:Date; b=P6pMexOmkWBx33KT9q3i3CSIL3VW0gU3U32IduOGa/KMU5nkljbFt3ZGEg3TODf0swpmng6r+y8zNk2hX9S5MeWsxD1JWwIbvn/qYEbimhDdTnm79M9ZfGI8BUSwwOKpM0HCTZo6/4O3ztjrzd7ROtaAZ62ZsscGC796cMSYB6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiuOxegh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiuOxegh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC32C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788319833;
	bh=MdP7z4HWhmvzRNU81Jt/R3UlqGDDtzxJ1OPTPg/qrKc=;
	h=To:Subject:From:Date:From;
	b=CiuOxegh6CcESlmSTqgK2jkuOOtOHPRUjCv6Nok8KWeQmgjFwnyfcRFIPi0FU/snb
	 gSm6DfWEUdwM/98use8EpODnixkV9nfmSlxYv+YgMZMuL94MLReAXbBbvDVf+Zbdd6
	 C6dDzeivrXqjvIb9/L23AAnUS4/43DjhPv0Igj8a4Jqv/xk1B8Cf9NTYAI2pV2DaGq
	 XwlqhGiKMPtxgviXp1oKsPiF7h5dEH7VlZkasmNnqOvAWQrtB5JwhtxTl3Sl+yFlUe
	 hCkW1KWy2hcqz1imXrIFtQivwOQ1WLa2OASN/UABrqKSF7desz8g7gQOcbNtQFw3Ew
	 i6ehsIkIZyy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB5EC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831983368.29159.10952860117327320718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a56e753a731b4ee51e2c959841a1bcdeadba722665e72c61a4bc39f230b2ee7
Date: Wed, 02 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788319833
