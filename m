Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36864A33
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710565097; cv=none; b=btrhUYjw4Sfw0M3K/hKBYBkwpKNQAiOxXAlWSBAXWR/6bytnbVXp257GSh/HnqLZ9MsnTMn1ka0BKn3+gDOVh30u5eBkNcxJm+VGlJXZNNm+DUdIxScGgNic0hVYtXqKhIzsClqdX7c0bDMrSLtAxJGrDccAYM+O1cECmfnkan0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710565097; c=relaxed/simple;
	bh=rqZa6C9QICV9ovRx3sLc/4R/lkMqZRl0/AIm9xrCYGo=;
	h=To:Subject:From:Message-Id:Date; b=YM/uI12uNhyungVMlPF2cDg1FzGWCP4VPBtpZN1F+kQl9syIOuaCZewSlBFL3F0ezR3WRGTSxdWukmcsmVsl/mZAB0CD8uSjcO9k3q6mjrNT8aJM4B1ZgH/N1KQS2uuHDo4l272EgCv1FGUxXLVZutW6/IGWpYBV4/a28tiJ50A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CB9TlU5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CB9TlU5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7761AC433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710565096;
	bh=rqZa6C9QICV9ovRx3sLc/4R/lkMqZRl0/AIm9xrCYGo=;
	h=To:Subject:From:Date:From;
	b=CB9TlU5BUmF3KyrhbdEQfhOBVs7dZY12IgxDcCKAeYd+3tdQzV1yhRQeFR5n/fXUr
	 PtRKHa+itwmErH0D3r1P9GsTLn4HYymhv4oMnTvA/OuUIsUq4PkgcuqJJGN2MjqW/y
	 JF3NhkhUlGZ3ZPDXxwRFI7ypAXQq3PSnANkITqDdqKV5EoeO+7oPoQQ1c2WMDGh0gb
	 c5XjAJPNkUsiDz2sV/WFUQn61GJRf9PID99umM9mgLOyt4LS5LFgouyRrelMsmyojW
	 zegHzlCBokuMEmGDFSVO1780ObxellvKp2Tp80YTKqE3D7w3vW6GkjuF0A1Tn+myHg
	 VLOZxmq9j76Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657DAC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171056509638.31452.1251997741903802490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd1e7a4688593b1d162659bb7e9d74dde1b97e04d3ce0c3edd97319b7d961ba
Date: Sat, 16 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710565096
