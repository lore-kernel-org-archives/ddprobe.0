Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629A22C95
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716768263; cv=none; b=sxEhrvOoD3AsFUSnBLtMC8r+BFyG5FIa1mn6Gd8qDcuMqRGwugUX4+FJS9XEC06q7I3WCiiL/rX7ZvGuAxdnHhqvXfGE4H4psQMsQ6pJ/KDK3y66YNF9TzDio0jGeF4FOPgF6h2p9xudjcg0Y0l6m1HSmVeMeY1kWL3MhM6CeBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716768263; c=relaxed/simple;
	bh=IBoTPRbC3+4H+IIYlnOmoljlshROevUijCR2udurURI=;
	h=To:Subject:From:Message-Id:Date; b=pK0HeTlFA9HxsfGbMiju9wO3wVkmOC9q4yofiA33fuyk9hy1QDJZ9+pFkV0sjsjX37TChcsOqtgUL/pxZkwYTuvz7Um0ybnfiC2sQEAGXHopDK1jBmD6yE5MC1Atm56Kk7hfoluTSDdd2McrofJzLKjcUkGLuzBhcf8BRUZSxjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Faqkq6kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Faqkq6kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7378C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716768262;
	bh=IBoTPRbC3+4H+IIYlnOmoljlshROevUijCR2udurURI=;
	h=To:Subject:From:Date:From;
	b=Faqkq6kzuNpe5XCkhEk7ltLrxas/J29g/bAROs0tQCGpVRb8GssjS6MnAaOC+LqLn
	 /mDnUQwPL0kXf6koalsdHUgfo6jMjVkaQiYokTIkZ32DtPAh4yY4/UW9CB1HlOCJtX
	 TSXi+8ntAwbKmpzalHlg4QSHth6zqr6uqaDf8QG5m6k5ZTyMlEZiLgHnDH4uhfE3uf
	 3fx98+WnFILbrvn/yu1pYb3APlkB/hvOkXTHbFumiWUI5D6ZCZbVY4KoAikm82Kze6
	 C92XOx6KXzab9sPcd0hFlBM0FdrAC/zZhxNo3Ma174EPq4GEG2zgiupgx2ipTdlvWL
	 EpQbbKp9YO/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C614CC25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676826280.29406.11419240867314577288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d6f3f128003bede948a46d1b206210e52acd3d7d17768df4be55faead6ea99
Date: Mon, 27 May 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716768262
