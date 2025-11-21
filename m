Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982826A0C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763725314; cv=none; b=IDh04//dVOLDF9YsoDar8Yeg+MjX3O5u4LghllcNhuQuwVgbci3tWLfobMBA6xtx1u27hmSNsBjb7bw1wA00nfrUBtixJY/Px8jDN28jHNedS/sfDAU/0HXk6SOrVDL82S/m0aE9Ai3++QDxE8fwrXgPICgEjfqXU5KnzDijJBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763725314; c=relaxed/simple;
	bh=l5ktIhO0o4QQm6ngX9ki+jVdUyBJc91HfpGt5sveUlA=;
	h=To:Subject:From:Message-Id:Date; b=ZUE6Ly7hqiA2brwZ41hsja3+gFdqwcQO+EdqItSX0h8JRL1tnF63m2Fd9xb6xYToI932eRtPdJ/CAmeNDCZTxzUr+5rjlJ/iNyZ2ofWlGdFKISRFmJ0i5DjFW8x30NUEmyHIoohWXxUiPRamRO11EYPCfW5rRU8mRVo2sKqF2q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JASiUBh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JASiUBh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61FAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763725313;
	bh=l5ktIhO0o4QQm6ngX9ki+jVdUyBJc91HfpGt5sveUlA=;
	h=To:Subject:From:Date:From;
	b=JASiUBh1SBY1SCmpzKZiK6U21Ev5I7cjRNe6UO75cVtmvo9xv/5ZV599WGc3ki+r+
	 RXvYdB4GFah83HIEyg6k9bkBpTs1C4lwRzJjnBrQA+iZTd7c0f6KlzOzjhZhduQvDd
	 DSztlDLJH5E/RBFdXeMPwUJgci3Fk/LGDPTv+GJNPlyHfAK0/KxTJpPKiNy2S459ji
	 iTNN+F3INrQXHtEdlwiM2TYYEEgZ4Z9vzWDGVXSorFT1lMLF59UFF9RnJiQkjJafZ5
	 QNceU2yfUWzQ3VXVKWajpXMs8dk9OmSg9rya3JaLU0ownyoDKRv3Z58kWtlOAelARj
	 xAcQlyTLVJKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FFCFC266
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372531359.25322.10345349631961575030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f546c5ba7e2be255841ac00f2ed0a244d4aa37c5fab96635be4c8d8265b6338
Date: Fri, 21 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763725313
