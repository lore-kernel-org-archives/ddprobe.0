Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BD9286D5E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788395434; cv=none; b=YmRuPlOfMScne/vThXKJzVLNjpMEVtIOUwAIEEOtT7+RGOGBU5Ejid3pM+kqL4qjvD74T6yenh1rP6Od+avH6e/jkcM04u+CiTM9P6zLPL8brlZEdaTd8TCkwtzg4QsqstAz7zzZh712A/QenoBoUeZUKrMNNUrQV0gU/lTsYas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788395434; c=relaxed/simple;
	bh=kJ2m2Kg9kKAIUNNuxzj2Ui85nm2kSPzYUKKY6Ldp7/M=;
	h=To:Subject:From:Message-Id:Date; b=iVF7HwYfUFMOa9eaeZ3QRWg1qvXroOAJgpsjgWwlWt3F6ILkNObpDLX9QQ/5NzjaUOCfmgwoouQIOrDAnNOcvPkrorMcZP2ug9gm3N6atCQEqvEZYipf3fMQqBJq/ig2OO33McRNao8FAqrg8seF4GilFrsCVfRX/BBuFB9wJRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9ZNRu0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9ZNRu0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE08AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788395433;
	bh=kJ2m2Kg9kKAIUNNuxzj2Ui85nm2kSPzYUKKY6Ldp7/M=;
	h=To:Subject:From:Date:From;
	b=N9ZNRu0TJVPKinxfRHmRSVkzwy2Hv4Euw4trzNWMMyg821mSWANx4ve237gx7w9oK
	 tIraWn0mfd63jSIRmhgkK7iAGw0+MfL/lMIhg9zFhqZJO5i/x1rqR3yyM5N5XU6LO7
	 mwi8uh+29Nu7+cudtfivWHxLT68OY7Gp9C/0TIJULEH62kuQ7V9Ojftb0twWyiJzOC
	 aXJ/sxBIVQSIN1YbOfQSGHrxlkhFrcUXeisf5SQBp1G71nTR14G9Fcr7//xGsY2oJU
	 WNlXwUwitiLGc94jl2aUYeWkfTWB1Pxyeb5owCJM0KSCsn5cvIRtn7I5GO2i2g0P/D
	 d+nlSVjVQ+2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD66C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839543368.15819.1715273143935526465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb67a4bf892e2e5e3487191e5c2047c108a28700f05d2ae73c57a84009c94c6
Date: Thu, 03 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788395433
