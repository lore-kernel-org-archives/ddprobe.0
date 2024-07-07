Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F95A1865B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720350383; cv=none; b=Jq0/8SvyzPOhBf9mz1KAitmIFbEmhQ2x2qp/1fUc5qC2YdJVfH5jaGLOm5nnnKi60vC3AmjaSrnwkUW8JmbUfOf8gqENYXvRRVnUR6jgho/KLbBNMf/9A1UH3ArsqIYyXgFdirqVI57r1Fv+fEHo6QQzUBshT4DtSo9oJLq+Ooc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720350383; c=relaxed/simple;
	bh=TxuOf+OMsjeTKrZvPTPctDFv0rVEtuJKFZygCEsfpGU=;
	h=To:Subject:From:Message-Id:Date; b=RBjGODiYeIhxTVuYir36UzedWgpyKd01NlC32QgEhYCNALtgdLkxPiBcc7KlVZtFTP/k2reStTpfAbH4MxALOcxt00UzOAslYOUf/YZHqnP8bDoMRUkpq6f1TQv0Qoi24Bj4uFM+0wBfYkl7cSL0HXaN3khkGGiw/3x0V4FlPTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQIcyMEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQIcyMEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA7AC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720350382;
	bh=TxuOf+OMsjeTKrZvPTPctDFv0rVEtuJKFZygCEsfpGU=;
	h=To:Subject:From:Date:From;
	b=pQIcyMEZkPXx0UeneOGErBaQ+sC5QkntgluWp5vmB1KQUwLnnS1wDJivmowGFztaC
	 m7c+s3sNY8pQBudm7+HphwcG00hkMKJ1d5erJeOvKaZ9y/kX6AhgtoKyld6klZk0fu
	 LuGLJ2j6R/e4m1CbIwv8ltcWATMyhn7Ch3n7KUB78mFMRd+pLWHIFkTDd0TZEHOiI9
	 dspTxRNUmdLPIQXMv0uGgqZ25ZkV71r34/WL3RU2rsFL7U8bWw11fARVql/wZzj53B
	 Gx4cvUaDSjLwslPpGlPDiBtQ8iOOSn1K8m0BjjpGDLDxruqSkrqs0ge8yesL77RZaf
	 69SPXzJu8wdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF94EC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035038276.28467.18010294900804511666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb01dd54a78fe70e4306ee5680deb71f27dc50b62dbcdf0e08937e022cb87dd
Date: Sun, 07 Jul 2024 11:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720350382
