Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF0F224AE6
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760478594; cv=none; b=oli0hTVhJ4wsI4LQKkTQiwOHYyqJzXej7hzqqcJR+9x96NMeLV4WO1RM3H0YvIUSI9nKPR6Mam8i6xz4oyyDsyCdcukV7q62BDKL+C4sLU4ZQzdLHDml5kH1toRiOHZWPkKi3ClCihBLeD4UUvwbiMD9uALkO17MoQRnS0bfPWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760478594; c=relaxed/simple;
	bh=1lcJ0hYamErV+fbIQJAzlnD4GC7BSGolsWv+OrBd6JA=;
	h=To:Subject:From:Message-Id:Date; b=Eq7UrlmDUnx7/r4J4nTtWkGjZu3rYrj0IMiS8BwLDFrus5DbGwnn3Vx4Lnqk3+mRygcNo2GfU/gYZCmz5LjNkE6i3x+F7kgjH0qGPQWG/QYmrlmgpYVfOxGZ7EQ+AcDr+1ck+fG8lXKVhERpp3KTM+C2LWOksGIqO81ZDeXXACg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVQks9Km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVQks9Km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0737C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760478593;
	bh=1lcJ0hYamErV+fbIQJAzlnD4GC7BSGolsWv+OrBd6JA=;
	h=To:Subject:From:Date:From;
	b=BVQks9KmT7okkmXK7FTrfT8YTORDOVkfSd7crHei9dfdyCtjWP5YQNEngzZs4D1S1
	 hWbdKd+w/RVliJpMkK02EcyM6vCoygDQ+6q2buOlq8bTNIljKGNUPt1savOdBOzcWm
	 /Mk9qGFIRjcZ4G54C4fDaCnCEk7uCQpMwYQ+YZe+JKg05XmJoSyL8Cz7U/J9R7Yokl
	 xULgtcfAKVmuJ6NGxtJijApkl0/GEw9DQvPoyzMSUY26dRRo7/NhXWxiuOzOCB+uou
	 pdS8sXUQL7w9ztHHt0xW+VH3WMEXYErin/WqNTrVuUyDyQGd3A30PQ0IO0bFehVyWW
	 B2ckafyafcRQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0DCCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047859357.10431.9313916930945687958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecb7de274c5982dac5e7f196ebd45e22f9c3b781445abadbab30f16f030812e
Date: Tue, 14 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760478593
