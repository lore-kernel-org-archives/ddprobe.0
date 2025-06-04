Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346A482864
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749078594; cv=none; b=FKo80nokueORjVeWnLh/mqRv+fQruwmiI6e68Wd3MJtXYD85xsHoRQkPyottTPA8P5sRJLYKHFU2F3PSiEml4G/8wb6B8Be5+QWgY4pnoh+yO2iqvGKY061yT8GOImksjOePnZ6lvrCffYWzywm0NvW7gL2ZTfSJQJpkvKJvHcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749078594; c=relaxed/simple;
	bh=/C+3p9SR+6lVn1nGcfMqww2IqtKQEQ604MvR2rfC/Es=;
	h=To:Subject:From:Message-Id:Date; b=g7IS78MwbOKIMjq2M2Z8z4xa8m2QbCdeSiAHswq1Lc2nkOSE8f/aW4r2PEu8uJTLX9aGPkXURSk8JfCxr5kB0W/P4cOOXokyNYwKaDBhh5JQZYbiF3zFIGbEE1ILggWFi/YIR1dh4pumXzoRInZfgkrhmWybPy0Cug/Z/OiMGYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M98OKNBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M98OKNBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749078593;
	bh=/C+3p9SR+6lVn1nGcfMqww2IqtKQEQ604MvR2rfC/Es=;
	h=To:Subject:From:Date:From;
	b=M98OKNBC0jVcKunSHMmP0FVxo9WKlXWmtjJ13wYDS+pSZQnTRsUQ+WGyj1fzzbH3q
	 2EYTKiKqeuSbDVwEiF3+YZDzeFrIIyoKpyTDMSktvZWd91A5ga2qzZuiSgX1yo+Z+X
	 RfcbS7JwNfvGY/x0JZQI8tpWv4oG+38zv6A8kIIo1kJkmHAR1mMRrsybFQ77QcIG21
	 s+evyT3obHzdHSkuCkGi+06/KSKRtyklse+5BuaQBQRfQojF4l5xhAYE4UW9ZWF7o0
	 5dTsISFfc9E0ZaSbvoqN1wBUVXwwpxBL3fDK5Ub3WcfSnL1T9yM5U0usAs8s6P7UBD
	 6OHMmrd8Ml5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EEC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907859358.19853.6632797868058312996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d081c0e59905132b26c03240ca2350eefb6a24310ed1de322c4a2c169ec6d6ab
Date: Wed, 04 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749078593
