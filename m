Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C91C329E46
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770329634; cv=none; b=nLRJpeviaY7dUoUsNhSxY93zYmH7ngNndJ0wJQRT+kaqWKu7m5tWxGOS+T2MTnclVUdVSrz9N3HQxVihqPuwsh7irXxdmpOd6FxvbsnY/pmZXF0bLrdP98U2CDrLEQ3TaxyexEExUSYCKWtY49evlxwZrXBDance+zerPwLIBR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770329634; c=relaxed/simple;
	bh=RBeP5HqWLfq+RGv+ZK3S0xUkVrR48FzrnQZ/VdrSWbg=;
	h=To:Subject:From:Message-Id:Date; b=a2zhZCPAx5DaOGA6M83f42dMuhmnrmrI8jozRREfC8dpoYgFODt8UYfns6rYqf/7seWbfIN1eKSkQToIMl/Cq2PDb+qsU18bnIT0Y5J13Xj5jhvxCG2FtVwDE1L0Nkawu3U+rCN6GrNCCBARJMp5rMbLxT29V2faQs1r31oADW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6z7/rw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6z7/rw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DBDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770329633;
	bh=RBeP5HqWLfq+RGv+ZK3S0xUkVrR48FzrnQZ/VdrSWbg=;
	h=To:Subject:From:Date:From;
	b=B6z7/rw5oyUKZt8q1bF5kkp3zcyoX1annMTuFKCP26+zA7ooomCZD+pGQDwE65B+L
	 rjn4pp9ZlpcisA4fnLvvmn1bSHeIduzAmsVlf82Dggd1zJ/J0FM3hZvIa0VYv7n9MB
	 K9aMCiEbCAPzp5S9jwE27iiDQadO+evT5DIm7mb3VNqKlgu6L+nY/XehcInC49NzuR
	 GfaciZbFBiATtKAkRdAxyR0xT75V2hlKFebNXrCdcGsZRE+cJRjZlDh+I26lwAoyg4
	 4HA34E2nCF39kPrBFEmbbjQxUvhFcGRgHwZq6baMxk6YXAJtEwjT9+YBGudKdTdPwS
	 xZ14EWIbLwYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A11ECD9AA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032963358.11103.4293614945739226024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70d5846aab1ae45c590bc507f60836525516870a4c1acfe237ffd703557e6ed
Date: Thu, 05 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770329633
