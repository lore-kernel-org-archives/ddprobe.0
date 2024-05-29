Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9AA16E876
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717023863; cv=none; b=a4Aq9+iDt5yhIdFtEdr5TBoJN37UNpVhd4FflDAly6Fq9MnRCvryNyzbpdG9EpxCqEutTdrD+vh05X7LftGI5s4/1ZksfhMxAajB/oAakDKepxPmWk5hG0itI4Xmuf7GOOkzZVrPH2Iq0bVmXoM8sS3FhUNyo9kvjrCsKA6w2hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717023863; c=relaxed/simple;
	bh=U1QlaxwSf4p03CBihWL5DP3VN7GQtuL4mSza70JxH3g=;
	h=To:Subject:From:Message-Id:Date; b=VEKsC0Ec8aTvfa4g1JVVMwbCGv2YSOzoO3x5roJAfj1HIIMAevRWPSjf87rw/c5/OTOfCD7c88gJS3mnpdionzJqk42jAdG7I9FHSiaekrL198WmySSP1iQ9a53cd4nHXr0+kVD6RQ0RtJwKtZbJrJBdh3nmnzRHlsEETmolBoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkI1eyuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkI1eyuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C6DC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717023862;
	bh=U1QlaxwSf4p03CBihWL5DP3VN7GQtuL4mSza70JxH3g=;
	h=To:Subject:From:Date:From;
	b=KkI1eyuSZ3p+fBkqs99das4qTAHMRQsi9HZP2o0PKFQa61BRVrh2bo62wWiYa65Aj
	 fJ82npgqti9FkHHNFTy1HStg9d28XC6O+vA95p9Gpewc48PIVmEJkyH0f9i66gOmuh
	 ahWUlBJw58d9olXnJoevtj4660P9eIdXh8JJuoA0XuUBKgM4sDF2Wb+RKu58y8KqaZ
	 S9G2vtTa4QMl970rvX/6ElzHkhmPgeh3JSuswOYfB4NWmWZlnkbkJvGG8A5gYx+UcH
	 aVL3f2jKpPir+4QpNZ5uQ3yxu7cXwdMTCB09lOAUXND/fJ21DYvwhWybJv+EdMF953
	 v7t7JrmW2yt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD30C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702386275.17886.16619172178077086527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064903f086ff5a76935f946ac835a8ed12d32f7daa4d38b20bb52ee24a76413b
Date: Wed, 29 May 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717023862
