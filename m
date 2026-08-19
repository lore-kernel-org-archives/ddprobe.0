Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7C822F767
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787103034; cv=none; b=hVlGGEVvGfCGwNd+C1kBAsW+1JwnfBaEKziZKCsJnJUhs3ECx8ldz19f9zRcQUgysalxZLJE96Yj4oSWfDI8SvIhZyZTpvpDQ3fNeu4NYuIBI3apmQnbvjopShkU0qD2D9YYGLR0+sxOgzvvE87agBWhN4VLNzw6EkCmniwiuoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787103034; c=relaxed/simple;
	bh=LO52M4otcb6QOkjRWFGEwhm2cvRdPLfvAPlcTEfI4Rc=;
	h=To:Subject:From:Message-Id:Date; b=PxZQxPtPZjiKZXhPuQabrxGWzDk+TSiBQvFAyvKMGUW5I5nfkGAk/+T/jZEfmkjDvJWLcRVmwVlwwu9flRMZTHiMSXrAX6MqE+LHZjdXXubbeL2Ps/4APvZP3VI74arWL1lyrWJNT6WafdUmsf7QyVekYYx5oqiTK7oV3gTerJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHIcjxw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHIcjxw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4481C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787103033;
	bh=LO52M4otcb6QOkjRWFGEwhm2cvRdPLfvAPlcTEfI4Rc=;
	h=To:Subject:From:Date:From;
	b=aHIcjxw2xcWRa7gn3aRbyyDI+wGl2SsfE0ZEug7PCsJxusQT9ULXNdKcP6BClGvnV
	 tfAyHvxGGt1yOMxnDUxX0Q/+DRNBhlhXnizuosjDjk+UE1CAS8le3raf+JCHMvSsF1
	 aXAWkcN303oFhxqidPSybNUHwTVTOSouAmDD+JkSaO5VCRz57TzhiRttQZKXXcTxdI
	 PyMWXy3XuWk9kMFdECv36UYs5GkAm0FsFT4mT2/aHepabI1DaSIC3hlqmVd0Z+9XGr
	 /uMz0mSfebDJuBwQelf6NJS4EBZHIHA9Z3be2P4cuknTpb2ny6HgjeAcqolsn+erqK
	 h8ybUcSwU5TiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A73C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710303373.29447.5546046683118676990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfb81a2dcb75f0e6665f0af4cf16b706c7ca97e9cbdd2e3ed79882bc5f62b16
Date: Wed, 19 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787103033
