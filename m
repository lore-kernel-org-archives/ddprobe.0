Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B34B287507
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017034; cv=none; b=CRjgVJAOHsfu9QqO1cpqnxDV+PeKpr2csxX/8n17yjcxIw/qhjXs8KmmnGg+VQQA7RTmxg0shOp6tCoS0uhbF8yIC1Reb/MW5MqA4gqDlMsQWDUa0OZ/gfvHNfN0yEGHjWmjSupWBNDIQMCM6E/RJA4zz2p5a7uw7BaIMsAplr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017034; c=relaxed/simple;
	bh=vCemT1TsffamAanIl1ozMb1amBQt8pmwMt3sI+9YKeo=;
	h=To:Subject:From:Message-Id:Date; b=bFTiAsPxYP/R3EUso21Dj3ttQmFXKsz908zj4J1BCDZXZG9xd9FcUWDAlEfgausGQPIfBtdYQaBa9crByXJZj4i3tgwnBZwYfx4f4TMe9REbbfGUFkDeNnR/STQab2XDDzwccywUnafUW4cmmhA1p3BsPgCnSjx4EAeCgOk3T9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUl1cbrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUl1cbrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD826C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770017033;
	bh=vCemT1TsffamAanIl1ozMb1amBQt8pmwMt3sI+9YKeo=;
	h=To:Subject:From:Date:From;
	b=XUl1cbrHoG5eXOOEMLpALeF4b08wQJiPhzH0qYbQqjsxhWY/xLEzPL5HMywY+8ZWc
	 sg9VghUcg1ao2UUTrBGSVcyeByBdYUnbMCudgI+u/sS7RgZ2wedFDfO0+kimB3hY6Y
	 qzOeqk3SZIEMJzRkjLBx+KWuOWNOlK5JnmqYlUalfN2u79SiRgto8RKV+GM4YVQmC7
	 2m7mfs9Z1fecbMTb1Nrj/9UEr3wZH1U3Qqvh6OHzGUKQ8Dfr6iVaA6frw/PpgnIhw4
	 23KL0iKzd0mM3tLT7B5qpi6g7ugtJ6e+HhsWNO0ADRkFpJ3p1l8MmvdtAVYXUXYiqT
	 nqrCMnGoJhdiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D41D79779
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001703360.15543.8505235558896916791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df7e55df575a8fd3d26ee6c350b604a492f4ee51760c41f054e90579f9513c8
Date: Mon, 02 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770017033
