Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5074F2F29
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719810263; cv=none; b=Zwt0wzA2JUkPISfMMD657zKIoruXFGAw8nm099X7HUOKdpgHu9u0/C8jh2GO7PDVaip2/C4BRmfOcXxrfi7dUhtuTIiCLyuzyCZV3JAy6H7pBfBmfDYpMME6vKT2EJKzXJUbPfkt+jAYuywknQkTzZH1SYKnqznCzZkdtwaQw0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719810263; c=relaxed/simple;
	bh=YKK6HjV+r51wIewACiBy/ZyTg1ssrgk77KCmLE4KqPA=;
	h=To:Subject:From:Message-Id:Date; b=uRCOrQZO6NJ85Y55DDVjhjwAOvsLnL5FyZdAXQMIayy+9qVCENcOxMTnETxefZ2zeZfNplZ4Wd0810HP6SQDFRnNKmto3hM24TcDUmtzVrCfGhRodL01Y0tJJbS5uW1NJu3U3cswXWXoKLF383yns5v9jzEDeJNGiSvjlAmzjq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YE4EX/+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YE4EX/+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDAFC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719810262;
	bh=YKK6HjV+r51wIewACiBy/ZyTg1ssrgk77KCmLE4KqPA=;
	h=To:Subject:From:Date:From;
	b=YE4EX/+4/TtNhNCAK/FN5Pgxj6EGkE+P0ut7tlV9hrhWlj8XNp1fx8kiXpjGHnXJn
	 d/APahZ0Je+cjp/WY5gCwWfoCpHC3QCrViVTKxij15sTtpVC5A+CLcA4N2OGLXo5lV
	 xyyetf2lBLIgU+TlKsHLnuosqIW+hG4/wbwYEaVcsyfYdCizhUHVoY3uthW/hcmL9a
	 N5U8roMuQxXbqUKXTUrArmSPqKq4d6z+2BKwFTx9z2afbAApEvj+Y8/ydZ568fQiNJ
	 hNs8313N9XGprt7vY25JJ0t8uFYK2gfClNOrIcMykvTBBl+QrX0En6VLnesz/b15Ug
	 A4GwNMrETCl8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34C8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981026275.29416.13182279735352976499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c8f749aa7adc534318eabaf512a7148a1d0d7f17cd1d4252d0498c754125f6
Date: Mon, 01 Jul 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719810262
