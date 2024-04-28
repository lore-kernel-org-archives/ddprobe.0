Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C3AF9D9
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714333343; cv=none; b=cNr8B2voKuV1HBWHE8VKOWG/7PUa8JPIudFi3aDc7Z0VY/jlStSbVZZJzC3APgLFO3i9qGUr/2j8NASRNSo34l2+KLboa+Aq1By6mDOGZpdunF+RzpmxgAw4Rmr73VdREtnQvTtv8TEdc/lNTjDQS79p2TeypvkAW5RPN33o7eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714333343; c=relaxed/simple;
	bh=2v6iCPaY+/nmJYWg7WpMBeXUNXvJKXvatd3MGVnPKcU=;
	h=To:Subject:From:Message-Id:Date; b=NslMuX+dJeBtXUjFLKSRgrG33Z7sM6+r+MmqiJhNnBa4hnqE70DL3KYCw/jGbtIhyvOCtlLh7HCr8CHbQT4SA6pydBwlrPJzFAJjTQIwdeOJwKsO8dtFbTI/94dg/hOfw5hFYCfZT0DXjwX+22UcWx+mxN1P4YNTkOPk/LsiGnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV/S0/eH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV/S0/eH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE39C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714333342;
	bh=2v6iCPaY+/nmJYWg7WpMBeXUNXvJKXvatd3MGVnPKcU=;
	h=To:Subject:From:Date:From;
	b=AV/S0/eHcgPtlsnUAhao05Wyl8iZKnuQvudPjlsdaZ41t3dK0BK9N6TlURooFo/Ak
	 /Z6A4dwd2hnz5r7RfQdK/QhirS6aKtUXB/jLrs/C2jtFmZum8rHpZu4Nbq7VzXuVLL
	 XDZ1+0UL316hPyrdy4S3ZpItj05pam3Lxojt2/l59nBbXBX48bQ852NOsWVw/OP7A0
	 n9XpST0KgV9liN+TN4ty3+cZg9wnGiz+cvQDov9eYpjIdVqyvPfrEFW7+SaO4Sobnf
	 lu6lc51M3/ySTawFRgnMDdsRoewRF2YBYhZD/M5Ut2PV9KaXk6Wo48RaXU+DY1Jd0D
	 Am0ZZux+QHGxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2D1C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433334275.32425.7320343542141350161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632ec8fcf709ab6834493ffbf54508a3a6df9dfd4b7cb029fe76d802707a545c
Date: Sun, 28 Apr 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714333342
