Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AD5748F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713323363; cv=none; b=YTAkeLEbPt3RIz89q9Ovvkg/rOUC7+PjdjHqqQwHWjp3c02KTtW/oFGSxhIDpqL1WD9phM27nxbN81JUfp1ecblgtgvWFbhYb/vTb7EQiX5Msh/0g70WtWRfZb0Ox3MO0RwFPm0easl6mW0Y4+FWzs6+H4FcO1rzXtp/3p3vPlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713323363; c=relaxed/simple;
	bh=f2uvkpLFVzuIUML7vPeg/v3mYARgT+9wTZDJi73wl+I=;
	h=To:Subject:From:Message-Id:Date; b=IPKYXyDspLReoJVt5ZwDRpFhSemp7WZiiIbslKlbUVmExaprEZP9a/d0oxacLnGtt7YraA4+frpiMf12ghzNtNP6oLsLkyp9hQl0gP0PgMA4PSc/1hIUP0w4KTp1DHCTTytSEuKTLuY+i14rt9ZZ74qK7v4bCiPZFSMsLwZXwho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHf8hQVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHf8hQVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD494C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713323362;
	bh=f2uvkpLFVzuIUML7vPeg/v3mYARgT+9wTZDJi73wl+I=;
	h=To:Subject:From:Date:From;
	b=KHf8hQVyoHhQSR34drRUK05zBapEgE8ifD0Z3ncjrMvPoH11TUGps+oNpLXW1rTTE
	 E54aY+q8td1zVm0JU0gCDsxpPHwxuS1rmVL7tY9OHNYF6tYSXe0zIM2nn6LnKEDI9I
	 9fQXdYA9/rn9wFNY34d23MsAebEgjkAXpXRRJeZWoC6IqMDr+olPkxBon29khQwkNT
	 y4nyZP1J2Ns4FNUfT5Xbw3qEjqWilNlimu5OPn3JKQtzkO9C8S1ptsd+pAYMHI+KDm
	 dJ+Xvs93dM8rbc555MtQzDHhiKSTsHHSBetDeMfJ0tIidsQh4FGkirWcuX0RsQq4L7
	 B8tfAllsNhICQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D8EC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332336279.12675.15138717804051161225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddafa4343409b56bcbbd9e83c63de4e5f3d765e29190f8e67f8be3bffcedb71b
Date: Wed, 17 Apr 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713323362
