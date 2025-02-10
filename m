Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B33A26460A
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739223956; cv=none; b=R16jA0OGZHOABtFg+JpdDlFUKl4UBxdSIHHgoPvbcjPKeMua+Sc34mn8FR7+0iRSzJ5efAhEEPEvRTjxupb4t6+4AaztLpeZaL8wpoS9Ito4PTePJdRX457tW46uyFEnVqjkCPqYofAe88RrL7OKS2OY19Zn0F1E12dPlEhaJ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739223956; c=relaxed/simple;
	bh=vmvnRvb4dokURSWIIawNQJrXBnn+cHO7l/MtRwHtpng=;
	h=To:Subject:From:Message-Id:Date; b=ftRkgxd2g5CYs+7+7HUhSzrFgINKOBplhnDM08KpKhEPEq0ZV+ClMhxunJYYbWwh0fs0dYHtfHLZqJiVXPS57hSMJA3BkpmQYDqx15WxaxTt0R6YHamZWwlbu4ZjBtdsypmZGiA14eX5FrILkA3wvI/iXyYdbPMAYwa05xEO2l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz78e+r9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz78e+r9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA430C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739223953;
	bh=vmvnRvb4dokURSWIIawNQJrXBnn+cHO7l/MtRwHtpng=;
	h=To:Subject:From:Date:From;
	b=qz78e+r9zLgr2RXQXbuGwI04yjrKiO6DxwI6JfufpXq276L5nv8hRF2sMV+S1GG9d
	 TaScuvuE2ytvETgmi6ZCd4g2OFKfW56fm6xX7RA48snQ+RcHUe5sBZpAfnTlhT18ni
	 oT2gzukYb2X7c2sZnZnhMUBj/4NRtmsgzN6EQk26Jnmyd/gJNRjsSi6QaZvmoOLGbr
	 KaeIEAEFLNrfaqfdq6dXtEw7QVXCf9uTnGRXur/sUr1QQXBcf7nTG6o0sxtdcS95Ww
	 EFCSoD+68bo4Djtuf9EgCVvyAX3JRneEihAzoYokxZ+UhG2nZ+fJrD5iltdSwWMt0m
	 bzutksDfM2SpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A509EC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173922395366.1985.9300625803546977254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470176ef461281dda3584ceab650a25f118ba04acfb057da6ae07d5118a8747c
Date: Mon, 10 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739223953
