Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1977E36212D
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772114694; cv=none; b=A1+/nQaZuZWgonNUA13XbKEkC7eEFqCnt67ONPz/71ROZBf7Hiq0vRFj6X98lClznh9uSKJROJp/ZxUr9854k169TG8uyIVVccKZQt4leO/bvniv41Z29FAO9vEEAcCHQl1p09KpdezzqSGGfiQ5i3nm4rPhb6VZK9pU21MDHEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772114694; c=relaxed/simple;
	bh=LVSa0H/Kb/3wZSbdDhm6QX2mqGGgMmK3JJxfhVaBBec=;
	h=To:Subject:From:Message-Id:Date; b=DaJK4fZOlpVRsbXBhis20RdfuFaZ4Ub4fYoSWPUeVjjil3otgm94Pa9LyJEekIgzsTaH2dQ5uXy1m9KsKLOePy0uHPzhQSi7/NE43uQVBlxnQ9oJfO0KO1J6AkgM7wThN0zfDEQJTczIg7GZnB5qBoyHgZsliMGWiLiHgtWFdEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHdyO53y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHdyO53y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0503C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772114693;
	bh=LVSa0H/Kb/3wZSbdDhm6QX2mqGGgMmK3JJxfhVaBBec=;
	h=To:Subject:From:Date:From;
	b=YHdyO53y6ZJzzM1A6BTh26Ft4yGNbfkQ8sTdIX/3ACnN/35M7ziV9KAykswOpI3wU
	 MBd4gcNPlSLHncXYwidfb2gE70Ucimvlq019PIGjrZHQRsqe7Ieuc77WFx8z8BFJTC
	 nzaKGAResVbN/u8JiYBiv2bQ4C7XSyvBsWzKu00kTzCu5wkFCl5O80ujsd06xCXCCF
	 in+cnHuTlphoSnwO5/G4wNLXAjl1kJcZOQOuLJNBEhit9D4c9P41x5awY3H3tShzk1
	 tytHVVyvNkDqlbVGrI4p3A8pvTGGCRSVPriMojbvU0bcmjDBI7H2EPIcu09V1yOakK
	 VIpWyMxWw+2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97198FCE08C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211469360.22699.445258087410856015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55a9ae57b1918e6681707a2ad1d2c3328714b7f824364f88531cc68f38ff27f
Date: Thu, 26 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772114693
