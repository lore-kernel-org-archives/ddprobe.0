Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433DE47D924
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785541834; cv=none; b=TUYVaZWhAevpboELs4Q+TP9rPaYR8guW5FsdAW3FkaDFFGV7PHLj6yrPgAy+ddTv/GNZ5b8Ol8BWFQGZKzWzFr41aUbfYo2kH2okman23JtKOt2m1APBq/Q9/hYRUqDVawLzkve9qhIJULgs4UENHn1Cj64D8QfiHxRtyICS+mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785541834; c=relaxed/simple;
	bh=XBgnS1rIaMjEqMiSzj3wkYROa/cgFna5VZJwNaJlLlE=;
	h=To:Subject:From:Message-Id:Date; b=mVarIEQd0EIDXD0F/6XC30dyhWmsPOdisJg24a/na0uYrDilw7H6T+VuhovTrVI0bT423jSYj3i1+lqOx69ODx5wcoAYz2oGvdKKW+9jpmmErT90DSWptqJj6COPhEj6myXEkRYgvZu0lRRxnt/KvDlJ+MJ6eBb+73ivdfCsJ2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o601BZyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o601BZyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF008C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785541833;
	bh=XBgnS1rIaMjEqMiSzj3wkYROa/cgFna5VZJwNaJlLlE=;
	h=To:Subject:From:Date:From;
	b=o601BZybWmsZFmcW4QF8lRxq1j5EZI99fUliID+VVW6r8pUzioB8BEvIQShz60m+g
	 2D1cBSKEP5H5HeV5sIt9FmYc2sGHeXInUrImt5hDPL3xLBSWc/QxRwLPtpsbzKlIIN
	 SZbqzluD3Moc4HVO8sD3xJ+bxEl9BUf3awBM7jDevBgmCN7pIObfRATyfYObi+3Qcx
	 B/UD2Ae4TKPtnYzczOoQXTeRcedVIMvPMeHUsM2CyoqvkbwOl5mHFqepN6jeQy9A4M
	 EWVxWHzXy0Nmzyi2r2vxgEEYqO3NMfRukinZY3ILelJFAdU5E0992qaHzw4uW3htsf
	 k8yBRbKEUZdkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE301C55171
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554183368.21346.7812698573974085071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdccd73dfbec7c5b7c8fa9b1f703421fd9a7e5d81e1b6582967f35056c37c11
Date: Fri, 31 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785541833
