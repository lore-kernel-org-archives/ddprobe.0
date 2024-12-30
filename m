Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F5913633F
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735533954; cv=none; b=aK9Ta3nIusUiq0n8hDrILl6WAzyKE9Tyu5XVzKOq6+ttwNJ4/bIPj44us1pxnQXiu8tMhS1RmKUpTpVYEmFHg4z6H9rH/GrH4kuEQKWAbYFbkE6/Ot25Ht/zuQXI5PVp6YHEHQQR/CBAh7C5cg0Eu6Hua3BcbIQRev+hgNEhXsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735533954; c=relaxed/simple;
	bh=OgZTwihEQVlZzGei4mmijHzIkqsbljdtAsPSVDddhEc=;
	h=To:Subject:From:Message-Id:Date; b=Z0S4GkxoTEivNcKPVGO9uQqJ2XIC253yPa3hl8PRkGHvRZ8mYkaUunZoV4NvqAf+dBIpNORFu3FxC0s9TlK54pcH3UMOy6nBqHnV9OCsv42aE8n1NW8KyXYTZoMwCbLAeKE1/sHo+IpAbHrxekyRiIRQN+9VN1E7i9swBGhHGEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T90iBhts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T90iBhts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B4AC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735533953;
	bh=OgZTwihEQVlZzGei4mmijHzIkqsbljdtAsPSVDddhEc=;
	h=To:Subject:From:Date:From;
	b=T90iBhtsNvwjfbkznmnpRA3cd0U9wFbPfPWsZ95FtWuFnBhw3Irx4wGjWkypqLEeq
	 X98ToI+J1Q3lAtK+o4V9B/twgWkQEbEeQmmi9neqWefGlf7BAcVTxdRjIsqnmZumU/
	 WBcT7j6mYxInnoN3xJebhbDIXChEDa8NYna+Sj+knZYLZxmQgUViL9RRsiFcpNtW/g
	 0ZY8RKJ5SD5E0AHKVYjNPcQKeS7e4ccaxS1Pk3S2Zs4AVzy7rM5XShpuOvNY6cQ4uo
	 kf/vjM5VUvcPZFZ/2aDIw9F0TM1SSF5meM6ZZh2NJOFYYw1Hq1ssnIiTeMNi3URWWv
	 /D47NSUxsQq7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F127E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173553395361.1794.16508912602263226184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aaeb5b784f65312c7ba9dcf31db835f686837ccb0b17cb1f21266ccd54e160a
Date: Mon, 30 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735533953
