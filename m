Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4ED1FFC40
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737986154; cv=none; b=GF7tN6dcrUSZf+LXVfiCegkSakU9Ld0CWNSzWYMi/E0a/OxMd0j+7TZmuaC0JIfYmGh6JKDw8ib3ghcvw6BjbXgZxl4zozni+ZmcFSuoOCLIJOdlQx5lQA4/LYZgR8KqR9V4Itpfffa7aRJU9JP7/6YuRVMaQebucPPqYxh0UYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737986154; c=relaxed/simple;
	bh=IVzfqKHKkm01wZJKZ4cCBKlRL/HWTvfEb8VuH/CjKes=;
	h=To:Subject:From:Message-Id:Date; b=lqgFbkLttZ7RxHUAv1HCQd8eUJ7RgmCkw3kl0GKa47ntW21iR7I7v/2RrzPn1lB2KvAuvJ2bGMaWgNNG5GMg+Q9hPEG+UfaO9LC/4hOVCLKnln9LhYyqwFbv6Jbp+bXzDb1pMJ6Suq5SY5GT+T73sf66M52hTBf5F+H6M4dMvac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQSvD7EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQSvD7EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEBC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737986153;
	bh=IVzfqKHKkm01wZJKZ4cCBKlRL/HWTvfEb8VuH/CjKes=;
	h=To:Subject:From:Date:From;
	b=FQSvD7EF15270XQ6YIeUfQEiply8+g2VTFs6HQWKOACmYjNLz+S/iTmJE8QLMx9jw
	 7xe0tJI2ULkA8g6E2YskAmB+2ofGsJooAskY1HUChiFad408Wkae1lFihY/p2rEZU4
	 D5mhW4ysU9Y1gqt1Zt+VcQkRNiIGtqQgkxK8ZgFm0I+50PKMrEIr9EDYrR1D+O0ibm
	 padQ25ZQJ8avlTZ4oTsy3In8OcWQZDJU0us6Pt2ugpWEelt6GbqnQhw3jja75YLC4q
	 QNE4/e5/KzY8O3gzL9Ri4RW5vnkzpjZCHO41FbNAAl+Udf7e9JKYPW8f9uF2giQXyA
	 QL8+pHy+VIzVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E60C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798615358.18741.2923915070175829807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a93971e455cb05d86531cb5bbfff25fae31c4150835186a59f8c0d40f248929
Date: Mon, 27 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737986153
