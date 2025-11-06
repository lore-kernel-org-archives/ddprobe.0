Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D045342C9E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762441794; cv=none; b=iNVW0clGeFlbaDvSxBmn3D1kvtToHZBd/ki9Hkft+OQfl/y4qvb7NwBL3KHeRt8JQMmCmMPmkZ7WrqS92EyhUDcJy/AfAevVDOKVn2RiKFN/+kIZDVQIDMHX2JVX2o5qo5lpzrAEZLz105tfAEyDVJ/MSnuvpjEbmoQQd8fwJ7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762441794; c=relaxed/simple;
	bh=s6ba3nRHTYGje7lVtjm5L8iY89QbZuJaHouYnkW8LKI=;
	h=To:Subject:From:Message-Id:Date; b=VV0N1epVS+wEzECCzi8YOV8InAkAd+P4TO6uzvh0Yhp3jvxFkxLGBNQpl9hgiSU5o+cQXxc/CE9MW/lUJBI57aiDikUyNXJXqBF3Io8twlyszIbZNfv6yL5QYIMKmV4GzO5bXnjeMrq//u2mStnCmRZGUcW1rkysRxDD7fKerWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWcf+/bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWcf+/bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762441793;
	bh=s6ba3nRHTYGje7lVtjm5L8iY89QbZuJaHouYnkW8LKI=;
	h=To:Subject:From:Date:From;
	b=tWcf+/buGhzAD8QgjfakL0oxWc3j/L1b5a7sQMZed/T999TKzLGIyzRwXtg3H/7rH
	 uQmaolFrcVHNnbAyC/iC5uWkRGyktNoQSyjWEVUWok6lcc8JcvVQtDqFz4C7lR2cot
	 A2Ym4k/ZjEynRnYoG0XBnz0kZ+voygVSG9pyZmJGlSaX2kRoKtrmgakPZ0dRi0LL3E
	 r8eWSH6LITsXtMxzybbd3HffeTIbau7+9lHrAj+e4+bo8hLJ9t7njhDd2mbK1g8cGX
	 QF0eY/V5UEHyyZc69CWE9VgXMzi8tau6vyQalzwzcgk1DYKNbtw3zf4n7zko2XZb8G
	 5tRlXZL7fQgLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114ECCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244179358.29950.4140561690860087320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01cfed79a37352844658c5399cadfdc206398cea06dacdf77328d63ae13b010
Date: Thu, 06 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762441793
