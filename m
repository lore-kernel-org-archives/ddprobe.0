Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6F6246BD5
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775188534; cv=none; b=N5CmiP1TAiacyHz4hyiUUdcwsD3o1cSK8+ncd6P9QjgzEmkpG5ZXqVD++CBlnZTp8u1wtf0ZOEfrrbExGbPcChifJ0X2QxmAnKjPiAg/fw3k7a1gcHeeRZGavbOk4odsZFatd3sOa3G1PK0SyK/I+b1SItUeupJVJqDR02GAMI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775188534; c=relaxed/simple;
	bh=2JhvRokAEASNZYK+yqE11cFyG92IuUkWIExVdqemjV8=;
	h=To:Subject:From:Message-Id:Date; b=sMGIWzUaPDefHYRo9YvyRGsc5duS5io66OXJv3GZcwHUwJDci+G5NwDzYCJ6Ey6I9ZNDXvqLBT8iFniRL3gcl1FNZVka9vdiqmumQD4Dk54srQuS+V64HgIM40GX64vEvsaYxq+f1JgIuTQ7UGISbnxhn55SYHDpwEuYFYncicI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlHGuive; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlHGuive"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66BDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775188533;
	bh=2JhvRokAEASNZYK+yqE11cFyG92IuUkWIExVdqemjV8=;
	h=To:Subject:From:Date:From;
	b=mlHGuive2aOSCBphYpougF7DAfuBJlp556OpzFxQUBDlAa0nBzuKwWmfN1fG2Hcd0
	 Hml0MGFnV29b3FKDy9Yd+sqLgEB0Cd9TD9vS3w84yIE2eh0S8nCekCgFNOlCkXurep
	 wlL032rVY6SxfnhgqiRtV1AfjitTfkp6noAc/Xro2fkcoHNuy9Y1q409GZ7yxNsNel
	 8auHSXqyLqRmBPZY7qWFoN972b5lvylJAMNNKiyFWc0ad1J2f/VdIi2pxXZwQ7/IJk
	 6sGdqUg7tjDvLk70AlSoI7O/F7gY48+MFNwgvUJzq+xuXx52uNl+MOmbNE7OaEs831
	 nxTFGxJa0yc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21EDD73090
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518853369.15519.15101058752757090318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b4eb19ad9141d7db63ca4e122d5b710f3a11cd856f653228fe5f47c5560414
Date: Fri, 03 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775188533
