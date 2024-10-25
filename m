Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1156B212175
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862755; cv=none; b=iDZyMyq9joraFTioaX0SVfn5bz0XjX4l78SAGsmWtpZQcMuvtF8JuonDPIWwQAxhCeSLq3StqpTw3u928OX2eeCr4igmcaiiSz2aoBInJfLzX5PBCeaX3+Qi8GmnykKOqzBFp/BeB+H5FtlhpauLBXa6gIN5SJTxR0xRUlsXkW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862755; c=relaxed/simple;
	bh=cHJBr8ohqpq419Jrc1ezh0SHyY6BwTmgEHZg8tUe8Hg=;
	h=To:Subject:From:Message-Id:Date; b=LgaPopfELWk/pX4HvtOA9QFTkJvaAl4+W6pn8zXu0R2KJU5DmrSAcsan6eG7WXPWYB5LZuAiOFs80GUimbjaK2otTAv2twFTYS02iVgSoD2lFnX8nlUa58mVkYJSslFPJda1OQhwSGh8IQsJ1HoGS6WBkGJnqguYksyjNFXEr8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZKwG/qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZKwG/qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8805C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729862753;
	bh=cHJBr8ohqpq419Jrc1ezh0SHyY6BwTmgEHZg8tUe8Hg=;
	h=To:Subject:From:Date:From;
	b=VZKwG/qepdWCg2ApUVKwzje7AXgHE4L22kLpLB2/0z7ZGLxjN+4tFc3n5owz03ZQG
	 ha6lVZwHQUTcQNpVQtKy5sQE1gJf49sMNeH+iX2lKpJC8kCGisIx0Dp51ECLYUeWDo
	 4wzhdQ2s1XbQKOTG0odyS7DIJU6fuwqk5ZrnzI6yg08cYntrrUYx4ICQT16IYdc8eY
	 N8wlUa8bjTZKYl0jJ1naAiheFO8BdRsUrW+j3WEI+0tsjrW2R8h5czVWi7Gxxwjv1k
	 f4r+fNJ5zxyiX5RGCJBnS1C0nPkH0qlikbV4aK0plgAAPz/ULDcBD6BTCmwKJ0+q76
	 ZZsbPIGVhkYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94464D0C60B
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986275359.11178.4926727616468556399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263a7b1a5fdd843bdb11b20d7ec824cfcc163c4292a54690250e9f2545adcf86
Date: Fri, 25 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729862753
