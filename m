Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6743246F4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790171434; cv=none; b=pXCFSyUdLGaZOCYzmkBnTMLbI+NbTPJHRGQsovXBpfuUUpq/SCtR09vhCB0ignMYiAo3QBidnweBP2183bZ686lkB/VDwOjkS2nFIsdQC5Krsft2qSuOvTNjQlLADtv3xXfpRsd/uTS16wQWnamG8JaMcHzY3jcpucYzghkHKeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790171434; c=relaxed/simple;
	bh=GGvY3RKA5aqevd5U4hbv2fNgPNGI2ZltuHiyPP6gKMo=;
	h=To:Subject:From:Message-Id:Date; b=sWYXiYYtCS3oIpdxPLrawjmt5WdDuQQo8tNB3ZIoZNW29Gixm35aUtiafwNluf7XPP/SCyfcRBEzxtIh5wRKfCjhX+M3ciZkume6lOpxs+GsXxVNqj4wb9KqhymLm5CFGzQwqDVvgILQvZAtovACv8fcZlmlz456nGdKgz6Bf+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H62ZeluD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H62ZeluD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0632C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790171433;
	bh=GGvY3RKA5aqevd5U4hbv2fNgPNGI2ZltuHiyPP6gKMo=;
	h=To:Subject:From:Date:From;
	b=H62ZeluDqzyzQW0WkiAXrOAvPDyPOI/D92kRf+nuNEHHaJ4q7c2/nz+sdI1pcnYGL
	 /bB7DoorvxmcQJ5d3hhmGBSNnKgkgKb+CHgAaIGCCxsXAO4grlOkmKcEEVjC3tI0G8
	 1KA2eIXwZgwCago5MiNTGCSuRLJn8ze0i+7EMJnE3sgFuquPoqk3nDwt3Do/bdLE92
	 cHCQhyDpoiL/r93FS+yqFg70r67IGEGOizT/162B50Rhhmq4Xf53gyrqEca4MmT+sK
	 tZKDix3/zsyYjHYmn4X/MkRqxa6UkpKIXNb6zDyZRI9JT2yM3oI+ZN5o5EVrERD3LM
	 wq26lWILBUu0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3AAC9830C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017143373.22384.13715103243571508506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa295b1b0dd60ba45ead84f51fec9b3a110ab43a83480cefc179351550a79943
Date: Wed, 23 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790171433
