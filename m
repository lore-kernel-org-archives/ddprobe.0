Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DAB495038
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787850034; cv=none; b=ZHEiHylUgW84Kd14lbdtBKmcV/P6mzUMPdghJa8qKIBAsdcfb7jRVuniBtN/lPCm2pouZs0ApAWFsQ2GN8NX5hIeWiF69w1KhYPLB21+dXVkZRzyfAro//ZRjiLLLqTLhbbGaloihnJUqXuLihhzLSA7527jAb2gijxn4I3Leck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787850034; c=relaxed/simple;
	bh=K1MJ/jrLDRGyIKcGI3pfb7fIpizniPwFli+2bYzogB4=;
	h=To:Subject:From:Message-Id:Date; b=E8urHZ0vBE2EdjaoBkforvcsKHeDn9Uj8wSPdubsaetE3YZFlhKf+GrOiA6PT5LlEkQWlmkleG2rt9UA7ZdJgi1IHvyd88IWWiaAUxayB7vEaMeljAaee1uNz6W1FD6t3kMeYbHTmCqozX83j9PjFpuO/ziIXwarDl06QbDEutE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c325tGtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c325tGtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC69C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787850033;
	bh=K1MJ/jrLDRGyIKcGI3pfb7fIpizniPwFli+2bYzogB4=;
	h=To:Subject:From:Date:From;
	b=c325tGtgTHUEgebDI88LgOHRYe7/BnWsGD83GF+LqLSh3kuO5VPSIgfNgVd46asCn
	 GNPX8uw4VM8y93mGnJjpO/c3uIWgAPsF1kWMeCYtefV9NeXzkyVn1DD2Gi3720i21y
	 n1DYO6e5UQVeI+W2ggdbazFuFKGrtDTd6FHDW0NjZiYWM4N42Z6FZu1JOtdyeiKZpp
	 ZD+jVmQEPQoFIXNId/sUVUg4aEpk+XDJC65B0e4JWL4mLiL8wX3L5S1uI8JAjUdZef
	 zQA1J2oZuKv/ZkMEwOkCPkqv277brh57QPhDOjTka1ZBFk2iaXnc6z1gbTd1WkbGVs
	 r/4t5v93FMYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB8EC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785003369.4457.18073713877424442565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e548185a159620c40a6b8175144f446c8b981cefdf2162ad47b05f71d08010
Date: Thu, 27 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787850033
