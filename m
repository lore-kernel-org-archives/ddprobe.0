Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554422C182
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737868554; cv=none; b=oYetJcIOYkOrgs83PTQSH/V2g5CHn6fleRfu1+kwln6ieKx0nPp0gh66OgIul/gA3i5po5voa6MBdQ5eR8fWw5mceji0exVoouMxkyjHqnqCYoz8XCpis3ltV4fJPh0AlUgzxrhawyD2Kg65DLbC3ZjbPKIEie8rW3kZUW2d8pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737868554; c=relaxed/simple;
	bh=i3HjBD11EVAcq6jVfDioT4wcjt0R+c6IkwfuMsT+5Gc=;
	h=To:Subject:From:Message-Id:Date; b=LrViqK/wz5MLXQgcbycEN04ZA8mOQmggB7liXXCeuPRFYnsoKA2H5gv9jJrjo/B5nzl71iaGwIBBA2nkp57kqYqCX6I2lKzmFJ8MPh7YEUWbm7lT7Dl7tuK/85LRdE2ArrCMfftNN28XYiDjnBInhKWafVeM9HUojV+GNRQ/9KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgWUzK9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgWUzK9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56CC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737868553;
	bh=i3HjBD11EVAcq6jVfDioT4wcjt0R+c6IkwfuMsT+5Gc=;
	h=To:Subject:From:Date:From;
	b=LgWUzK9jrDF4wxTH/7oilC5HOq2y4tf2LtNko6USgmH6tU+T4OkLx4BPplqxuDd5T
	 9cztzUa4mujF9mY1Gx08wPDhOzaZJWhrzya4cHHDqWMl/oa8Xn3xWEU2Z6f+9jj4W2
	 HYMfyoaSyczpla4cH/uK+bV+yiz+6mbSGB9RocBln3sYddXrVrf9TeEqG3PLm1zyxB
	 vIULHg2g+ejLjxabtiluVCEfzdIKAhPNf/vlR2I62IYVTWswCQMlUiBp1O709Pza52
	 EWUOIKfjZGVsy00iriP+ipZU2jLueW6yyrgHhJ210Ab0FEIKZo4k7WMczNI4nHtPt8
	 2leZ6Qtdc7tFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96556C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173786855360.4106.11850299311909367797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc1da4b6746e3f542b980d6d34651936c5c0110cd0703735546fb432cfe6e77
Date: Sun, 26 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737868553
