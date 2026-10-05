Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB88499F1A
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791209434; cv=none; b=a1xHJw8/qWqQJZE+kLauFhtsVy09BjMDM1LG4isDc4NV6zYLr7wk7ZwQq/BbYI/Ezfh0Z8bgkVydpCGtVrcN8Oy/cGOJowy3HSBMyjl1TBvfFrwf5mrO2seIrzkQnpCjqZ/bFz/GN+OJUpvxY2/AoSpfH1i+xHbOEP/QWooSNAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791209434; c=relaxed/simple;
	bh=/BVw+GBxjne+t/kCYOAwwH91aWhyoMg1NlABd/F4Sbg=;
	h=To:Subject:From:Message-Id:Date; b=f/w1VZx13v722NzTb73YF0evlb0pv5wkNJbj+M5Ysye8MjzxxRIOPIUIjA52Tre8UjEhKaFmGYmh4dwkiTEKUnNcZBGrT8u56sJ/sMuRxib84pw/e9n9N5VdFFwN/9j9Bn4h2ghIZNUr9gkqrVRl0tV+565uuBooGSDXg47xOpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7dyI3oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7dyI3oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC557C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791209433;
	bh=/BVw+GBxjne+t/kCYOAwwH91aWhyoMg1NlABd/F4Sbg=;
	h=To:Subject:From:Date:From;
	b=B7dyI3oLB9psTcIhwmhcj5ROOYOKxYUyjoVBuzpJLayp6I4huey5+oRVjQfOFuBYZ
	 5RVJVardH6JzLHiLAPxSenIqxLj6W7NhNHhWsSVu3finVZVBLGM1r+IrWMQLyvwAW7
	 Hq0TVxFFofDIcvnM9+8vb+HIqt0cPzx60KEs6Us36YkDYr3bkreXmV2c7mNUIF0C6f
	 Yw+RDiBrlDMrxZtVFOXxKh2M0D+Yue3YMZeGpaBAIbrAcBbm+9m4n6bMkci1q5+ZgA
	 p/jbayrzUx2cM0djeDsum/+3d3VDeXj8fzkZJF5PCGYyrk8G/bzTZbE9hu42CzTTCh
	 BgdYNujn4uwBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99ECCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120943368.28862.3664559380965150375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ac150799652a3b696ba5c07c6433a95f2c2e52ab2e6d0c06f63bd9330a4357
Date: Mon, 05 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791209433
