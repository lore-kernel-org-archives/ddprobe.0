Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38521274B40
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768368835; cv=none; b=FuhSgLeW2f2tp3gvlBcx7zEOUYPGmJftkYFFGkj97KllZ4SjDba7zNWtZFAPwDBpuZieKiGk3DWRQ+KgUCZYVIzS09P1kfqPJcv6cPxX5mfMLLvcxcupZuvHP4fyIRu4daBvhNUolDauMLXdnMCryaYx9Jok/CIOim2FaqLiEQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768368835; c=relaxed/simple;
	bh=hqV48ZfINRgu9i/XPF3pgxnk6FlPZHBlQ0rdJD7A2KY=;
	h=To:Subject:From:Message-Id:Date; b=qbyxCooKRYPGpNEbG4Kotxx8othNuu9NIPsKcjvV2NELsQ4WJiUU14sXu7DTfXbrKgyIM1i0kATkuQ7Z1WrbTGpEcGcz1xysuS8brKtf2pyUbk6HcmC+3TQk9ooOgwXR6TTUgu5IWyFHiOGYED1CpXOay7dIwvU/mb1kErF7KJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdltAljT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdltAljT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C043C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768368833;
	bh=hqV48ZfINRgu9i/XPF3pgxnk6FlPZHBlQ0rdJD7A2KY=;
	h=To:Subject:From:Date:From;
	b=qdltAljTdTenbLzhTCH6u4lDDbTminBq6z9VR203Jim6jevUigZCNykvi6cOFeM5L
	 pDurUBS07SjrRyYHdKqDpZxNbOpip5EFC0WWME2JFNVM2brMH5p6MtP3S4l6x+N7bv
	 EyxtNMldteugHwPYItiQ29pDQ47IepPwKtgRawWDNndOsBbJncqsHEDIY1vlZZSetu
	 avNog9UCcgUR7kY4BXk7Un4qlCo/UbCNjcf3623Tm//7Yr3VoQkBtXXnd4og27vI0d
	 Ur8hjFH+F+JNCE4NAjmfmHc1z/AMtbK+OMlbNPv5CfTsC370BYnLRJ/l8Q8OlSnOsF
	 1bHFRFUb18j1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E724D31A0E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836883357.25099.9423665613091724602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1664a4edc568a20c28d6f84d54d568660212cf20804ab35f0862f3851a0e6e
Date: Wed, 14 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768368833
