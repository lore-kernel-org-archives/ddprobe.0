Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623722580D2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754932194; cv=none; b=K0Rf81TcLeRwqFeQPaEtA6ACLsl3ipG716Pte0lky6eFd1lvwrr3d3kUVNXO7+/rf+9+bhPEsDCl3oXYBTJ48NcaEVbElxvaN6XcoaCCV0mOJl67p6v5/wF4g6zKwco2QE4bMBdAlQXE/lP3acrPw0UeUGDOjSEqIDNAxA1W4II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754932194; c=relaxed/simple;
	bh=monGczcJhWb+uni28SwUoy1ZAO7wn9ozXJm4zfYx0Lk=;
	h=To:Subject:From:Message-Id:Date; b=ZX88Anhj1QDmOu6l6uSMoRm6PgXJlloNdKX0wFhXbos5t5krCGVnKh3fgQv55mVn8OMtVElT0jzH4weOsI4SzsytKaDfl25L2BpP7nUo/ElCly5EhM8hsUi7znLmNzlMKBqR1D3unUxxJNYiPpFTh3acuXNfhD2uEt6g5ZsXydk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J88BTg3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J88BTg3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179DC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754932193;
	bh=monGczcJhWb+uni28SwUoy1ZAO7wn9ozXJm4zfYx0Lk=;
	h=To:Subject:From:Date:From;
	b=J88BTg3KjGwRX256iArBOrzCGnFDWPNSg/GZH/+p8ugHfmu2KuDI4CWNa6wkCT0Jr
	 JqgggDrCPpkivu0/gRtyuNuZW6pPJEWY2Ynf5stvt2nyrnMVM0SmSj6X3/pu6gIrpI
	 HfCs4V6u1njEHnwZykKdHwckTDOysMSeUlf+VjwPTvzQwvUF27K78gQ8XK9VE0bBOh
	 DZj1X4kfmbPTODcu6KVW9ewTWYscKg4WL3MzKxuy4TC676O1B2g5+DrRqxHzfPCqnC
	 m/EOuTOkTL3dgWlA4SgFzWrH1HGl5TGaPxaFuib26aIz56tP6T86AvJj5Q5zdkMSnp
	 50csta7sNlYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92100CA0ED3
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493219358.14903.9430459436283586402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c4d5adc6c7e54f8334d401823785706d81737c5d965b59a9225364d6c7ac7c
Date: Mon, 11 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754932193
