Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3504623BE
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735439754; cv=none; b=aZTFctts/DLI0KfOM5z87PkbnUeUhZ/e0lWx7TIehZCsNTs6h6MRUNt9Ir8yj05uuVBVhWLzBJ4O3HMoHAdl4zUHRz5e/m+2+AilFD08M/XTIEAr5PjHzg5OWjpaRZVyBe3ip2MbNbrpo2JVvl5SHUT4NhjvTltLmFGYI3P5/uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735439754; c=relaxed/simple;
	bh=OvI9ORxWmL96watbZatud2pDb8bNeRxJtI0HlHwgcSo=;
	h=To:Subject:From:Message-Id:Date; b=SBZc64GTF/Ecc1fRDRl2cShv0Sm6eHiBv3bKOERiKG4BbWlNgYEwBUNMjfgC8KMzcRD5jLaA+D6AWfg0bbQlcIYKJxI/wyKh/Vb3m4AUxfMOPaCMnuYrX/eblQAYHy8hKmnJGk5FeZRAlknzfTk3bgU0q+Sk2GL4ScPD7MlE9XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cANSHPGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cANSHPGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB657C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735439753;
	bh=OvI9ORxWmL96watbZatud2pDb8bNeRxJtI0HlHwgcSo=;
	h=To:Subject:From:Date:From;
	b=cANSHPGlyoPG3XYS83Khebf8yDAClFPISt3E+f16ffc1phZfyE7p0vFogYwCXfoaH
	 uBKeVmjrVEWg7pmu5+D3WpShekVRQO6U+kg3x1LSstGTCFkcQ1gXmUrq0mj41/uyVH
	 OFVnbvYeWNxgNkhnM9rz1tiDGI7bqJnq1xdWteA6T2MOjHKW44uQX22QOdDo+f6S0j
	 oA/53Jv8NBWfRxg1w7ddSzlkr0WfCJxhd7u24G+bEJY2E8j/4Q6QXPEQ018VaKMJBc
	 PhNbXvyOiXTM6z36mnzjUuNETDQ8VUWXmxKfSkTXr40cHSVGnnzji6KTrrW01N/04o
	 YyaaV4zPVMTnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E3E77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173543975357.25263.9248342054208304204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f72a042f20ea765f326652b3041b3da8d16d78421e4cf4cdfff8357e70b37f
Date: Sun, 29 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735439753
