Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4962727EC7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787422234; cv=none; b=BG053XlB7Jma5M0iLkUrvIwl1d62pVNaM9ODdF8CWLWfW/aO2b0KysTiEYX2o5+H15nQPoPWFjMKE/y5aDXawhmKgpUPy+c+xYV9BJNvlrCnSW2ko3/2UjmlaKlob6l8HS3NjWYvAR1C6aB5D9pcBWQIsmKpNfhy20KukdbOJGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787422234; c=relaxed/simple;
	bh=zM0wixFiAsvKRSTgt7pmtQQ3aGQoXBvgRzIE6iqQDkE=;
	h=To:Subject:From:Message-Id:Date; b=l7vi390iUm/ODoCc4BfalDD9EL5RNK9NDfICErabO+YU8EaMBLzoXh5nLk5ZgQ3Ob7rzuwx0UNq38nrTW8eq+04gBjIbBrnZbdBS8cQc3zPdZ3xml8LClENbDbaOw53Q3NRe2+mFwqrw1eUh6ocY8wf+IheTgr1Z369yMqu1mWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlYG6WKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlYG6WKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EF7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787422233;
	bh=zM0wixFiAsvKRSTgt7pmtQQ3aGQoXBvgRzIE6iqQDkE=;
	h=To:Subject:From:Date:From;
	b=MlYG6WKpopzs+xEdRNVjvdkz890awvf0eSRBfV8i2IU7oicogDomNn4pHtM3/AX9q
	 QkSL3IFxSa8a9xozwZ3EA9gi4GTjvmWEIAzl19EPXwSuPfnfuaFC7rPR2f21rgEOUN
	 jf7k9vDjx2e/oksK3DXBrcqJ9LM6JfnYTu9MIqCQhlX+TWV9DnhUuYaPKpYRYc0oDk
	 kV02az0C9ELKyrU4uYmhr+bbF3zBKJf8Ll/dblrouVVGFCm06yn5NwA4jzxT9bwfjK
	 2MzEBCA/CGHtfyWp3bJJHFL4gnxNsBXIXTIRuXl+jnrrG2H6BQD/jEMet7hm6hVlqU
	 XhIojlhMKIL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B198DC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742223370.17174.10086548056619596071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb2cf54e19d7f83e91328681c08ee0eb580e5894deabe72e57485806a3d19dd
Date: Sat, 22 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787422233
