Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F0A1B87C0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767230634; cv=none; b=DcUEf4lFn48KW5u6PTKet0Avc12Ynefuv6rejP8nbG6zvUHuMZMAMpBZ+AI2Rn9csx7cFZQLj5eT0PEi1rbfFzpS9fJ8s5WpgW21roQxSUilb3O1fTJRnLo4tu9THDFtBTMFqUGp4ljhpjXki8wcVemVtDpS7jI3uPzAgIViI08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767230634; c=relaxed/simple;
	bh=0l5GkKdZDTm4Q7kFKl66IODlfxfWHLYnubhmwNVgqN0=;
	h=To:Subject:From:Message-Id:Date; b=PpnE4pHoaDLg+lK6YIRl/qKnNzkgAZ9eeQtL7dfqxCUdIzV4x1GrNfmdFXRNmW9rBdqm4ZRwpaNorj3z5gOzvLnmYE04Firt+Ew7jeOfoy7ooDDyS6F7WvQ5/9h2cKc57yQ1ehsD5W5p9LJV2FXSTOR+EI6NmcEzEHNMLA02Jj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFenrBbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFenrBbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B93C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767230633;
	bh=0l5GkKdZDTm4Q7kFKl66IODlfxfWHLYnubhmwNVgqN0=;
	h=To:Subject:From:Date:From;
	b=dFenrBbxqNj2K9DqULIAJXeJGKx9YZhiF6FV4IHU39ViUQpl62phHrtH/rv8zp3Y0
	 qqfmjDKEoZKakJjsrEx4c1Xol7EfDS2Hk4VplfZ5nIFDRQuTTvZXunjgBuDiCw+TLG
	 H2V4iMsc4zlcsO5GaoX2wfCgHr3f2LpZpXNjGpD7dqKXLgFIDsiOjFqYweTMfhoV8H
	 lAdm/hOYuBrjB0edsp1zPhQ7McCyERwJ78FKST3nRi5sBsB9wUyuewnFRz8/yCdXMl
	 QOdGid2B5B1e5aBr0bIk+ps6tL5zOyBydswplzsW3oPmKhCsVRD7x+fHqOnuJ3ppHO
	 60EnplVLGZDwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD12EEB577
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723063358.16236.15146468630875038116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342aa26880d8b3dd09f2aaacf93b937fbde2ba28ea38827e4afd2b63b9334942
Date: Thu, 01 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767230633
