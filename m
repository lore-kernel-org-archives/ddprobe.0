Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2FF3A3E92
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781350594; cv=none; b=sUZyJKhZhxIA5LHECfNKUc3CfjQdVuSvXcNOsgVzYAjfj+1EgysgRbTi5lnjkkEXd0OzQDiTSWWS0ve3e9m3PPEtuvxcvYcFPid+AOtELhSWFhbs0Hucrxkfl3ZGqMwxf4de2cImtU+eBCPBtKAwIuzTEbDUMDbbXKuWfggErZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781350594; c=relaxed/simple;
	bh=iG8Yru8MCy2i1qIc28u+y3f/aR4I0m3GHT80w/kQEmo=;
	h=To:Subject:From:Message-Id:Date; b=M5P9NMeZ57mFBVei5D43lDow8+j0+NliMlWm2/dcPNBZOw7bCQbChixDjpyaOHJ3ZltcmTg7LjsI/OPTP+kkSUSBugHSTYtmGAvXi2CN+suMdjx7PchXKj153KuWXwdztAX6QzP+PtWEYJr7q2Gp/DyokLdVQQ1QxTo9SQDz8Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXuTMT+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXuTMT+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95D2C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781350593;
	bh=iG8Yru8MCy2i1qIc28u+y3f/aR4I0m3GHT80w/kQEmo=;
	h=To:Subject:From:Date:From;
	b=mXuTMT+rF6dLZAbUps90I4Vrn1DV0hyVx5Rfjq3NmboRsV3ctZMBS5YDbVy4LGV4t
	 tghO44B+YTQBBPNpv1IU9FgKJ+Pp614k1qQZvn7jmQM800OtQgmTSD8Tz/c5XNh6mn
	 0IL+R3u/Cq51+/iNQDv8MYH4f73dyBIvn8WJjaRNBgt8JlnxX++MCTNyzjIYziHykQ
	 FJBqCPdVfBixX4D5LGYOqb4XaexQMsj2GU8MwmL4mNvVMmOZuFH+4vMKpyF2CSna6K
	 xF/CYKWtmCzS6pBmy/jeP3G1jqDILVZOI/bv3lEXexqSF3VNhshX342AuAdkFngMA9
	 jyXXJaUKhIRwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5BCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135059368.30442.4203815743268209691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da33dd4a7551de66530d5aee5b2fa0eb7f2439796ff93ed76498ab1b9789a6b
Date: Sat, 13 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781350593
