Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AEA42B75C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777570054; cv=none; b=Kz9LZzo9Oh35PS8BzzJboUarh2Jp/j9ceID/ovu47KcK3QNfmcPoqTk1+MZIfvCGR1o/EudsrGuvegXgSnReN39S2Bm50Ij38rAKt62gPHPy3alchRf7az1HbKVc+pRJD6wdk9WSmReAf1ExbkO1+mmqgcZeTOcoehu2Yudj4eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777570054; c=relaxed/simple;
	bh=DuPvx3cWjkifoMVeA+Fw2wBvBxTjgBv7tIfsnRKKfYI=;
	h=To:Subject:From:Message-Id:Date; b=kqMFIbuhH73P7lEpwhtX7oX6DizObt02SS+5Ct7IUCUZSC4Z5EB+qZrsrGhKLWGrNuSStrAMiE3YEpDC+1t66Ij+1ZUGpN/ekskWkOQ3sUSfVO+Y3FWIxJrzh5QgGvXkX7tvNwkV2z5RG1BdqUpcvyhYRC3urJ/9Lmd8EbzNe5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFHbzauE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFHbzauE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA29C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777570053;
	bh=DuPvx3cWjkifoMVeA+Fw2wBvBxTjgBv7tIfsnRKKfYI=;
	h=To:Subject:From:Date:From;
	b=oFHbzauEljHey0hMf6+6PODdc06p2gvebzU7XW8Xw0aMWJyBlZVJDnLtgtXFmYS7X
	 FoETzqNC63lLGVQBeeZ32q3Yx8iPV1fHFUvS6vrupNn646buRCSj6XECKg3zFOhzmk
	 knrprng/8bsGjDwIeW2sbQPXz8/m9AeO5S+Igl23+8F2HOIZ7WJx5/GqdIZ8J2dGcg
	 HjzeVn/uhE8XeccItSvqRkj6Dj5XeGVuB9/z4HL5ZXMIfnZzHnNoeP1TJSqC87pz9s
	 v6de4AEseIGXQKVO8mAk3HN2J0Lf62HSh03Z9CrKAzOwBP/V2UQQ3s50OZ0katvitS
	 t6zO2nARaK/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA608CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757005368.20150.1568190122889536267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcd2fcd857952bdd19a24dc3d4e58489bd03ff9139f3edc9ac06402dd9bc4d5
Date: Thu, 30 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777570053
