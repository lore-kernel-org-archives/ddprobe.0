Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431FF4A8FC2
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789475434; cv=none; b=cOD965Q/ynaCeHR24aJYL2DoUCw6cOH14qlnd4UR6LfOxnLaTXnjPclZ86mV+YkFKrHZ6sv8dVmrm9yKUYz5PvpSSZqJpwMEUOZ3o7N3+ZN3IYgtEU48IMVzE2ewK6Xp0fPcTMQ3uFJUpaCXtkFQVCjup80+tsXhU1/J3i8NPBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789475434; c=relaxed/simple;
	bh=Ey0K/dmsUUCinIkBztwJam5KKPzi9bhUQXZU+oaEKnM=;
	h=To:Subject:From:Message-Id:Date; b=YCJAmKWLEvop3Oy78q+URXVWojdPFyUDBbBw8NDOL8ph42HQUq/ZqVXXsH+c7R+GAeWgwG3HmzN8bM7gXNwu4TLnlcJ9oBOxrHZJGXj0ZfTKz3RZyRgoYTplNwczkQKHdkUZp2GAkNxOzF2yLT3qOW9vVFv3qroBIIpYzLavoNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugit3P9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugit3P9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF95EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789475433;
	bh=Ey0K/dmsUUCinIkBztwJam5KKPzi9bhUQXZU+oaEKnM=;
	h=To:Subject:From:Date:From;
	b=ugit3P9PbLOjKT2qzG9sQaY5uvZp+xpHzxUYvV5VpC14YzgX+mYqbuW4daix9xVN+
	 pSunykbNGeKcVzqJbPmg+uHi4Et/+jHui2mnV9SqSbDXgzWoAyFWxCw9eJCtBP/t/i
	 Ayq2yioysH/ixoff144cV2nPMZcLJq8W14Ck/PvDnWIxJwAWNV1OYUEX2qtJLAszUL
	 b89xTWUU63OTcZrsiwDSkgAag0Tv59U2igIxS1zxRGx91Xqqd9vzw12fQqWJW77zp5
	 xbML6vahCkMX3DSYLp713dZrqp5P31Mtxsi9E/Rk3SwY4YNPGA4k9v+sbyR1vYhdp/
	 jJBYzbYTXokqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA35C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947543369.14036.3363106100726274117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d9834841094cc2229ace6af44c3ef61ada33237eb99250967c1cd1644942ba
Date: Tue, 15 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789475433
