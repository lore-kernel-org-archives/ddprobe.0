Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D362D0630
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755037794; cv=none; b=fEBlnQPV943w5ZqRn/H5QC8x3DUFR9eKNHQcAbkJzxgTOkdtjuUvaFbsWv9lJ4NaZZkDvc9YhBYdCN7iElJHYyKWVuYWwRCSM1QaE+6/sXvPrR0XQUO7oHaDu566iqlH44L8nCLu40ZwRSXavN/FlyLFvf2IiuEod3MyYLGNzeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755037794; c=relaxed/simple;
	bh=4ySZthkcqyEWeoKEWw82bEd9jMKPpPhUbnEZHtqzRmk=;
	h=To:Subject:From:Message-Id:Date; b=DZGEK4wDT8Unts752T7laYso5ePjNSO5nMztKg+8EYC9bXi5OuTLPqw9zYRV6myDOQShNeS4ViUIJ8xaqRJTramURYoRPe80HnrkxZXhyppl47NpDp02qxbntiIkIeJ90ouiqTAM2a6pS9Vt5M5PA1isQwANSYNXEabA39kuQ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQo23/7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQo23/7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755037793;
	bh=4ySZthkcqyEWeoKEWw82bEd9jMKPpPhUbnEZHtqzRmk=;
	h=To:Subject:From:Date:From;
	b=PQo23/7GWorlz3k0fr/UvLkHRHsHSuAOO1mLlfc5jdubGs/iN/jjHMJdik6zGTxkc
	 NowSU+JtRYzF0zFTaN4yNRIAavYSQaXQSJ+PCefCQXCJGXI3VD8Vcslg78vdr5cCCB
	 nL7baRnovpJY/1HK/2NQfz522PACiWQi/vO99Jpo8qcSpPakGU2dDHpXNPrteW0mUt
	 mHrM2XaHyKRl4CrabGsZjQqTM+C0rt+aAezngSKLSMpCwMpAH0LCh50O7FJJIQk1rD
	 t5GclTKS/or2jTO94YDy6TB+jsVebddq2gh06G6qBXzv4PUb5XnJ3SlYaSjhIXXYMQ
	 0aaMnmpNnzTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C2CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503779358.7467.15472002372862823464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fb15b433e8f9265cca95dcdd22aeb8c647e6a1356f8a9192188017cd902ac8
Date: Tue, 12 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755037793
