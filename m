Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2172745945
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757773194; cv=none; b=oMIvCrKVIYvR7mr18SomLDBj/6w2AwJC+xhj0aAtIKo4vamBHXYLdKp1rhGi+4yZblpTvtZ3st6N7htDYvoUHY+fAZtnJjm+895FtjbGsWZiAYhtlXtxkc/eyAr6/fmqAexLbINpEv9TxDdP/KVnbSPY8STlQX3fEZDyXqS3hVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757773194; c=relaxed/simple;
	bh=w6Mwh8T3SUaA95v5w8yJjWYP1myWZJ+8Tb+a+RNDiP4=;
	h=To:Subject:From:Message-Id:Date; b=ra9YWPzXRZuj3d26c/Uu1J+EEFd5MI58FbUDth/Jm21LDJHt3PBmVNoKsrdPYSe72Bisddx51CTuSZfp2WONhUgOG5HdjGiuibbh81ILChJNCA+9Qrjy8KZqEr28uwPDKbE02plJkwQai2PbF5CIc2thYdKRBRbfiM23VccsCwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA1yrbrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA1yrbrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757773193;
	bh=w6Mwh8T3SUaA95v5w8yJjWYP1myWZJ+8Tb+a+RNDiP4=;
	h=To:Subject:From:Date:From;
	b=FA1yrbrj0usKssBmQXBnO7KA6N21lz2WiqM+6B6s3ZZfoIs1dLo3MBa2sNcqEJ+wt
	 4NC+WL0Pm/MgQxoxiy64ktzN3XFZ02SgO3RP16dpkAeTLoJpDrTc0qnia8XeIMe4gR
	 mqJLk1aCCp/0aqV3Bo541s1TgQRK1GvQkfpqHWJEbjCabIOJYMg+AGiYYcuMr2o8CZ
	 xJYmRIDYExhGVnjvw7Dc19zlO02ZAACTshcPLR9K6Coc3cVxqcq5D8BJIQOjt+tJbx
	 bAKjFY04s554bfMItzqkwCDaNl5i2Lecxe57qOdZ4wNLcjIIQVGSzgTCJfT34zDZJX
	 Hjxz/Xq34vf1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA9CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777319357.21243.10799675084110434147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761fb59d9ae21794cce933e247dbe62c1aba02f16e9941ec88b7808fac91a51f
Date: Sat, 13 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757773193
