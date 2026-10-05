Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB5B47F780
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791211235; cv=none; b=FZlyLb1bDuT/RS1r1XuPJnAVq3ZacKvqrv32hiILig4OiWs2n0bauxeqa86FSEyjqpxfxr+b1K7av2uBLJkS/jRGWYFuKeNeGJzusCJzJ9fZIA75c6eWOGH8SrjsOy9/rlugaJvQTrC/XZDUn1YebqU3qVuXmyxrjTuocD7tjMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791211235; c=relaxed/simple;
	bh=yGSColjPZoWUhMdnKIqlUrkrDu6wfZWf/0+X+84+I/U=;
	h=To:Subject:From:Message-Id:Date; b=ropEdgD8SEOs6ZNNu/KGaMGnUVjNaMjUQ+qUl0Q+rgtc16MciHo1At+5WrpIqDMF1T3SYeb8oOjNCFlJCuLS4tEjuNaFkgIeWDhkmYa/1yvqlfUPxoCoTohld3aeGtiSjSgzn+vXTRD2AZTNuL9ONEXpuUyQ4ajGPr6/CIMfZ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3nAvXU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3nAvXU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5408C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791211233;
	bh=yGSColjPZoWUhMdnKIqlUrkrDu6wfZWf/0+X+84+I/U=;
	h=To:Subject:From:Date:From;
	b=o3nAvXU3cyHC3W1iU+bqKd8VJu4FFtIIabKvBYXMq++Tb+0bAa+rNCq96MM143MXg
	 6UTQQXDvVekYmc4mpv2y8qR6/XUTme6wP4DH8noGE2vwdbEMP6lU8VH0adZklwdHO1
	 qmGyFJZo/nbuuSAjh2Rwshd5Kb+fVJhImH9znZHuWWMHCXodf5cWIBfmsi6gOBKHmD
	 aksWSUIGjesAH2PVo8o3kIucItvyEkMErsCtdQ2/bcekKX2Fr/64yfdiYI0FMl5una
	 MqShnh1bQY/K3EJ+ljPrUKgsIvojSbblavEm4506cRW45iRY2jzAQ6U2fHcDINIQrM
	 s9d4vIW4mlulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1500CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121123370.19574.10172675798490296557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487566db080eb9e8b3fa971b0ce165dbb1f21eeea7ab32e02d80a8673f0d1fed
Date: Mon, 05 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791211233
