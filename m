Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194FE1A0728
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750901395; cv=none; b=TU7Ayu1Y1dnVQX1kQGexA9hTZiE4todEaGMkFm7+BQCA81P/W6LAMV2nAbCDAo8dOC9ULySVg5DMEfA8s/pmZNYMDqBsRL5xKEFS5CikUzTwrkRPw2B7YCJEPLVq17euWNjAgBmsF5clBDDLuPytD+om5KqrFLD4FB+im7Yfs7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750901395; c=relaxed/simple;
	bh=cNvPqrX5Vcbq6GdOjhZuQQdzIhsTHUiRSAFInHaWmCs=;
	h=To:Subject:From:Message-Id:Date; b=C4kJMYEIp//ELopClhXyV+/ir61tIGgt3crxdwccPpBZYKxbI0nKJlJgzLYOagIvtWEJhVBxD1zMMWbsMpG2vyQAfFM2y7Z16Vl+uZtuewCVpavA/wpKQOy4PieJmSQowj5/Z8kjVjkq0kUZydWNj7AVg8AaHfKSX9RTskG4iQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0okkPji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0okkPji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2855C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750901393;
	bh=cNvPqrX5Vcbq6GdOjhZuQQdzIhsTHUiRSAFInHaWmCs=;
	h=To:Subject:From:Date:From;
	b=i0okkPjizE0affc1C+UrO+7fYzE6weCvv3HtZ7RWuegK7re+RRjjP6QTNgXguoQCw
	 ruOKWqTE3g2mK45fv9Oj1F5wiJovp1dhW8cNQ0Ksb3+cBLBCm5ToXtoapOWN9XCpXG
	 jEUo+ea99nCiHI69Sistg1QWIO18zsuOG+qrgkkDMr81D8gXiO6QBaZkGX1wl6VQJ/
	 /Fh6/lqASIWl7+7Ttem7mODNGzCzo67n2vy1hIDY96sMC2KqCJUAs1ZeJJm34hn18C
	 V/Wd7LbYeWEH1Hd1r/4O803A/85r5CMwZq8+yj0hJXMsMxJn+/49TH4nILqUrcIhaa
	 THofY63Sy/Pxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9DC7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090139357.11019.6854650816767307457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e5701aae7148aa5c5f46d096c9ae5e54304e18d3809a77e7adef22fe3fc38f
Date: Thu, 26 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750901393
