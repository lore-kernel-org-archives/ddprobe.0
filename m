Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6494F43F0BB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786608634; cv=none; b=ol8usrdByzLNVFYTYnU/WzcIeNyzwVTHv8tS/AM88DUNcKPhLXwJrQ26tu2IajbztZEktAFlUf1bEnODmVnIBogvvzef1qFJePFWFhsY5u9nhURYED0NaU3XMEplqBGZKs5OwpLe0tT351vow85g8PD5AQ1024ZqDuJhNvfdP6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786608634; c=relaxed/simple;
	bh=tGZ/Gx12mx1Z/iwzDgmT6RU7YdYHsd+wie+jDBQd6FY=;
	h=To:Subject:From:Message-Id:Date; b=lJry3cCcjhZl4XoRhh4t56lY3yS83zUyRv8Iao2iTNjZ22000v5CNhLRrXZ2zYegywG2uFh0/mTlVCrAYm/zEkVje/RslHH1MDjJkD2PzRvy8moL6hk4aT0eRAMlC/E0UVKGbjfPJL1G+cbWwy1a6KvuDl47Ii6dVIfOIAAtTWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWh9omPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWh9omPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA578C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786608633;
	bh=tGZ/Gx12mx1Z/iwzDgmT6RU7YdYHsd+wie+jDBQd6FY=;
	h=To:Subject:From:Date:From;
	b=gWh9omPNeB9Ucc/ltfuMQarXGwhoB4yUcFtqBvxCBWx8irKcr1iQpdXQI1LvO8c/o
	 G5kvweHL3bdI/nVzypjRfBWVpoyLYpv8gsv+ztRhaLeh5TV1UM6wo3NL7evyF/2o9n
	 vpNOlEWeMOjsS7VaFz5TWUkMKtJ/Q/Uh8gQMVMZm1MfdgDaKKn6Jd/wL7juGLVWemL
	 K9q3VtA8WdEB4JJl8Vqdf6e7jyiT9WHLlne66NCfRbJI50l0LRcawFJEY4o4JdcAt9
	 rKFFPflKA2ij1xmejgZIcWmyxZBrfD7IwfIQkbUw5GdiUnCg6WIU5imzay5qA9GR9k
	 Z9/jkfCXI+UlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9189C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660863368.26107.5811152930340767700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3499d70d2397b5337b152a7dafb6bcffb64b73270bb13f75a98d53ba0c2f41
Date: Thu, 13 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786608633
