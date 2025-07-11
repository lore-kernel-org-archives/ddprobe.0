Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC211F09AC
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752239394; cv=none; b=MJA3cir6ah1EEQpAKRdlV8VY7ioRMMiDjBZ5el6mtEMe24i3kOAFhQuiq3X6QtFG5RpGgtVRtrddwQepsC98JqFqY9nOl8YGAN9GoH3bjgQgy91WOeBC6vx/WLGlKOl0SU9RSr/0YpuIdNKINpzQG3DTLwj2rqwtgxRy3FuKfN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752239394; c=relaxed/simple;
	bh=710k2/s+h4P7bYDcQMBo0XXc/NT+Yaa86cdfel9yj6k=;
	h=To:Subject:From:Message-Id:Date; b=nik1UTiRnnQsYTOKFoqOc6R8HW2VDmdVAKAMw4RPQOl6ihceADlnUXjJbMtd/L0vfREp7P3IMu5UDx4CANRnaV20/KXd5RbzETkKwYiLdk4dh25JnEhnCgxRcul72MEFvkTlVOxe77uUfPzNk8jKFdxtCW8IFV6hrtt+2ppF5g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+//oYV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+//oYV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED56C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752239393;
	bh=710k2/s+h4P7bYDcQMBo0XXc/NT+Yaa86cdfel9yj6k=;
	h=To:Subject:From:Date:From;
	b=C+//oYV/oJnOAOsI5be1F/YGoFBa/n9sHV0G6DINXKcPG6Z27qqp1xvTBqDfyRyXe
	 CaDEmhHEQ8D6ilHfps0aPKzIoYo2Ua+6U7x1o7XvWsxm6hJR854drQj/uarfRQbYjY
	 iTijLg0XAqUJIj+aqVAakduUrY4/ZYhDRelxsiHMXYrAuJvZc5jncAdvwYSfVfuO1U
	 s/xLfLjUuufSpDplv6m6Wj1ZFf9iey0w/vq1ahAVqFre2G8erF6NMzcMPgcUb7k8qr
	 K8GXaenYDbvgkW+yZk1KkO96CpTbsuEx4GvXosUF/B7p5njXdJfkw5akW1Ke0wIpBX
	 vRYuBGw5FqjJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58CC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223939357.5622.13904486218982423346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100dd5d493cf78de4d2a6b7f98d69ce53a68eb52ebc581d3ccac7c4b635a96e4
Date: Fri, 11 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752239393
