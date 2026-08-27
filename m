Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB7B495537
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787852434; cv=none; b=haWDdg6Yf8PfNqfuogx9jSZeo5TAs0BGNPQP0AtEZAJXj0REW31NNRUNi5NFlE1WPL8J/szrvdlb/v7mYHx1peivE7F6NCw5JbOPEaaATGiBie98kx/gRdN1JfWgvX6/0Akz3XUu3BOfUIygKw2fAks9+HonhQVRL5iQOrp3bGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787852434; c=relaxed/simple;
	bh=qMtAqn0GjZc5KWQMKFyba2nuPYx+Ea0oVUGjZ76THho=;
	h=To:Subject:From:Message-Id:Date; b=grlYHr2o301LD7FhXeG7urb1AR3+S41VAkvKDfuNpSFGkeFLJj5gXLp6AAgy6iyGdCz1f/Ge8YS6G7OtRkQyXU5i7pbEbtp1CkH+9j9OHPj3AWTbdu0xdp3mtSJ5jiCYrxB6LoxihQydbTjFezXBDefja+FLH8GBpT1ZcuvVC14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fm+pMWVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fm+pMWVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD260C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787852433;
	bh=qMtAqn0GjZc5KWQMKFyba2nuPYx+Ea0oVUGjZ76THho=;
	h=To:Subject:From:Date:From;
	b=fm+pMWVKvg0Rgd+8gv8dT0/wKPDIDCp47Ai/PZcLHNtmpjP7hf2BHuWGCe+Kh/joh
	 ilunPirIKRzAliJ7zxbZPoB7HOLSysyNBb21cWaduKqfMk0VeNfKbsNti9rK5Gla0Z
	 c5/TkBGmIjEgak/e0dsKOngT8b2/amcmmpwKaiTZ0BcyORUeCk058vpcngBYzvE8Hi
	 luUJoN22EnZNP9djlfvxrSTLXf5yoAE7ngK+0ymo1383bnmtLWbU07T/zAJfgIFyRj
	 /8AJ15ptHrLEEbb7+CBANGr9ib0b7sYX0u73mtd207HF4K54Mr9GSh/2lhpj54Bj+T
	 KyqjdgAC63MHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E89C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785243368.20803.4439858186530802976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641711a525250ffd66402fd62c0bb1126ff67e4ad23b0d710305699f6cbbf84f
Date: Thu, 27 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787852433
