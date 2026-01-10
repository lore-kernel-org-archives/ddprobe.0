Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CB52FB97D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768040034; cv=none; b=eQ8mIQHby+09X2VQ2b/v442ps9oDeyC7nZA1WgdIh9xpfOv968V/1J6+ldAwNgjlVMVVujwue8NF6UmcC5fVYAcRUHRUlqFHeWz+CTbDfETMkiOVw+CrIAMNno/uVDUNjrgZDSNbGikKlKfMhN0lmm55uNwFnecFkjR3g8Cxifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768040034; c=relaxed/simple;
	bh=gMHDuUausK1m84eNnkMROHNjyHRXbvRDjG5ebg66uHw=;
	h=To:Subject:From:Message-Id:Date; b=AGuOqB0jcbX+FhCtIxb0gzPktYzEtjZcJsBKSc9Ss4P9tly6MEBozlJxVQ/jUChDv/0lhtb0mO8XjnQlFmfFIgAZxq9aUF2Oa0csapJePkRq9dke1OY+kKMNRCLH9hQ9SpzbOAp6kRTopeIjNCBxDPtm/mCzK9KUXIh5F1h3ERQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZEYO9te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZEYO9te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768040033;
	bh=gMHDuUausK1m84eNnkMROHNjyHRXbvRDjG5ebg66uHw=;
	h=To:Subject:From:Date:From;
	b=hZEYO9te0rgV3/LsaoDXZ0fUOJJ7NMNQBsUZTqCOBO3KgwfvMg1GuvXj5uBPK05mI
	 LwTfw83fibnb155cBtvKWRqRWeLPXaK5Z7eSNAhFAgObXmkPy7OtNBwVpCpaxEXSIa
	 DZS5Z8qbZ9h1d1JtVQhzQUv6GKv+N2i9q9zbbi1wWHyoikVb+Ip+A6lQmGCa3XvKCg
	 HHO3SokTYj85b8SuTGJYEURnLRFK5hJIxwQKu3qSIHc0cTXeqefAIB1jynxByLmfm7
	 b/nVfuN6SFwr/cl2MvNfvOQIq9sZjbAIwkgyhgAK6w+myvssoob5CFrWJxt0aZBBMo
	 9fO2rAAcn0GCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B7D277DB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804003358.31047.15928969680108701920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e64553457f9eadf233639099f5859628447c4556ca9c31b2d16dda3651b3c58
Date: Sat, 10 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768040033
