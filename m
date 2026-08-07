Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486C6EEB3
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786119034; cv=none; b=bT+mqPhXaUU5CStafBbt/RyWelOvORFM7p8qWyZwflVZ+j/G/BkwZNUlFE74XVUznOV35hL3QZAlx9CXhYSuNXcqF3glw4RSfqueOFYHzTgWmCnF5GF8hRXvYksjC+4onUttA+4I4Xxb4DJs5K0maD0gb9lKnZHqwN9BI4in9CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786119034; c=relaxed/simple;
	bh=GJXKI8miFQM/S8v/6Ud5LM2uA4rvljs3wvmfhYy0v4I=;
	h=To:Subject:From:Message-Id:Date; b=VZN3tX5Qw626IlsJe42xTcv0GiEwok4M3/ignvGqBO0NT4jr2wtmD5hY/cowNGFqVeEaSpvvXoDboRB3ESAYJ3nhlTCQwNWBb9wKMjJDvs3X8lAXdA6oWYnLZA3sCtNABECODk9Tn5kzDRHgKTCxTxrBNn/5CMfRcxQ68E4fadM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+fOee9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+fOee9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A45C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786119033;
	bh=GJXKI8miFQM/S8v/6Ud5LM2uA4rvljs3wvmfhYy0v4I=;
	h=To:Subject:From:Date:From;
	b=E+fOee9h3bqinOnTZRolArmi8lVvWrHKHRw3Sh6Wi3hvyU+gL/7P3tlRxLYtM9Qva
	 hS6ZsCTBjPDkIMXyOanWe+TLEq/L9Qwv6YlfBj6FDk7BOXtdRzs6ED0f6nteb56uLD
	 0Gdtn9TO0ARw/9tHYk8ah+Ee2iNDdQ/TicRvHQC95LWw1WeWn3dfmrkrOYYmuzQMrq
	 kLip6Gb55HsN0+5OrtgwozeNllzUlH+9GpWSlGe4/xMGathRX9jxPc7zuSGmQS354s
	 bmBensv2d3oU27cvs2X1J/6a4MRa+/BHv0ATcnUBwyXi+IVPYtGHz3apKLJ+gFs0po
	 5onXS+VrUcKAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC15BC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611903369.21858.10703019781651963532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389317d1e6028b37b0569099b5c3308177b8a173e94e821fa8a2b6560617c500
Date: Fri, 07 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786119033
