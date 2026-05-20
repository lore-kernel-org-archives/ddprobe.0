Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE6D2C11E6
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779306634; cv=none; b=ZVUxzcOPaul5gSChQj+jsWXD0TpahBYNG7Y5oSGnRIq4cSo44YYKRPzjP0c3tT5Ugke71tlCJfqZoJxjPZJL3AO/uOVWVQewjxOmMfG2cfxShcgHo2a9RgYOb6cISSOyBX3V8OgUOr8h4GqAAPFpEgjOIrD456YCyFs0i4Whkgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779306634; c=relaxed/simple;
	bh=2VcKYXmxbvwNnIuiDCfsE1bTfl8idD33vLJEvZlypyU=;
	h=To:Subject:From:Message-Id:Date; b=SdTrqdIyps6aC/WdT+UZDiVljvBkYBVX+k1AgRq80UMxXzOEKpnObTpIUFnzv5OTOuNwMoBnhjUNWjWUTpfQtLRuSn7hwc2jS4pf6FjxlEtilhUFnhbbxU/AxaXHTlQwOr9jXjHWJYx+RPNmr4Rp/syAUnjmETPw9AbkA1meyf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTxh4w2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTxh4w2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA1CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779306633;
	bh=2VcKYXmxbvwNnIuiDCfsE1bTfl8idD33vLJEvZlypyU=;
	h=To:Subject:From:Date:From;
	b=LTxh4w2oGkuSVwwy9Q6F1ZfMoMdUv/NemQAKcj2mDXaE8+ZBOhMRVRF0G9OKX0V8m
	 ihv+UqCpyUyNTVw2IrHoi8zqW8RWTZFEYs7gXx8EQX5Btjq0oUYASJAFttX4xx6LjQ
	 9pXfe5W0fdiWeM9NP1A0QU5PL4scrNsStk1wi+qR2o1888vzni8+aK5ndqjRWaXGIq
	 FT5vfsACpUZtPXaz4qhDF4knrZ70+mKOKaAqR0yBXE6pnUNVwccs1Nd0rLiAnjCbYl
	 XH1IZSfrWcuMnSwq2Zfqhj61BAsJkU9uM9n13OK+NqXbyHWwjjmOKcdkdU/0W30AGE
	 aSZZl/7iRS9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B106FCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930663369.13298.18082507211671245387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81369b8cdbde9344df08ce1259c1421371d895b564197ff2eb00c18fccd93cfd
Date: Wed, 20 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779306633
