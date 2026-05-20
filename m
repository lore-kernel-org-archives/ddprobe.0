Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E23D212554
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779247234; cv=none; b=K0c1PnFvYFHZ7kH5MWw0sF/WEOHPvMRpnLfiWYabhcEYXN7IfguTJ9BNSVRu7PR0zHrsR/H3IEz0n0NM2EHc7oDG7z72RWHnKfgyWttsKIzCupwTiLJGHym2R6/+wpKauDXMrMhP7xdxF3AAgjfcqyBZuma1HFczE2fHq2L76NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779247234; c=relaxed/simple;
	bh=kOLWcwkaA/70moyE7aICq+lBR9F8O+BLdlXQEWG36nE=;
	h=To:Subject:From:Message-Id:Date; b=ACUIGFc6IaYiDpSntSF47I/nVE9T0J4y1wTFIz6K95rgaDTWfYA9yF672R5oryTaFFN7LBSK9KBIWgzxnvy6mMnmN9UHCtNHQlWd9DvrenM0JZK6sb2w0ZUNyEV2HpFa2fj0x2yI1Y3SDyyRw1XN0f2nzYx1rACgpwGl7CE4Bro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDeYuBt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDeYuBt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EE5C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779247233;
	bh=kOLWcwkaA/70moyE7aICq+lBR9F8O+BLdlXQEWG36nE=;
	h=To:Subject:From:Date:From;
	b=IDeYuBt6lxqnboUd0SspO1PzxVMaiSjJbPLDHTQRCYS4EjXg17w8sQEj+LI776FM0
	 LGQWHoFEs4Fe3KO5YBPgmWdIsilLEUs+MYXmtB9etLt90aJIVyszce8YuD9Lrqfnxg
	 ob2MymCUUivmTNOpdWIIi0H0+1AhaD1I9XXJvXjRh8EqSTQX3uvFhi787T5xf6N+rX
	 6ldKCKPVQt1gbEPKLEIyxPjMGXQ+VnbtJa7ZkN0lRACwl9R6NAnzmUu85oS2peC5ux
	 CZG6EyevQ9cSfnPEFjjjPoHNbSA9GhpezU9ywxgr6rMM5WC/GTrwP6nF1wSmkey1fD
	 z3IZQnE6Zzc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA1DCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924723369.31434.15241686386564816855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f9638e46094d702c7533d7db03548f954d1dd416ec1564d2d23ae279abe8a1
Date: Wed, 20 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779247233
