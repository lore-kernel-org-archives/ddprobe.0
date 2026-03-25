Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2555138C412
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774426494; cv=none; b=kRCdPnQSRsTkBwIuQ+x5FFarESxBPQMNK9ghqwmYppDgnHCOJ1POySBnSfzGc9MwYt7BLQtgHWy2Rwl12VAHBFp9xtPlfzQCIVTufcNq/hiccTRov6/LAxGIvtOP1iSQkOw95hZgjDWK/wwS3mCn2pvpU3KSBwxhvCIE6BUvams=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774426494; c=relaxed/simple;
	bh=R+8AmRMGl8XAcbH1uKBS7JvzOyR0xClaJx8c4eyKdFg=;
	h=To:Subject:From:Message-Id:Date; b=c9xcmCcmZ3L8GCKlOR2maDMMcp9U8lBo7CKj6y9i4mzj6UarP847SHoxYlGyrmO57yMWQ2QBtoShYqPKbdLTpL3x7iJVv3K9+790LdcTsHvfKzKkPe5ImuIy30RzSYEYd/CQS83mvaQPmoCpbShznB0K/Qv39UY7PWTIs7PoywI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zjv99O6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zjv99O6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95CAC2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774426493;
	bh=R+8AmRMGl8XAcbH1uKBS7JvzOyR0xClaJx8c4eyKdFg=;
	h=To:Subject:From:Date:From;
	b=Zjv99O6J30IMjZUNwirbMOBOLT+jW7eY4oYCkcXLSE0U23OVMtgiMFf1QUtT1Lkp6
	 SX36itFKPETg5bJ20R8j3s/4Q8bHOzElM4PM7rBUr9okUVQbqU01gbuxzsKvgNI9QG
	 mdDa34J9I1tnTNSBKV+aboh27/B1h5KDiV6zTTglUUVV/7Nx00nqjzHhujGIQ+a/sj
	 qzsMdKD9aHV3N12wrPlSZRzMPu+ICBGVbrBbdGOjbCjxl1/9ICV+PsNDFrRSzXJx4w
	 IKuk2UDczzFhTmGYGUQAxTp6vIpInPLyHgxFe4zalF7doi3OlUT3NF382HGxgivC13
	 PktlbwD0p210w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCBFEA82F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442649361.16670.4075339259667817457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce6e34c9457bf0f964b815c6e6621ab77041bcb5906a06dee2a7df8a63189c4
Date: Wed, 25 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774426493
