Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F987246762
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770539034; cv=none; b=eVl25QjjlqsHMNkq1rDoDcSiWt3c42b3AxT5exnKPE6PBznR29xZx5Zeyp/LMFtAe8lsuY2P/v2AN3qnKD2/baiolGTo4MkvsxBrlDUEHvKvFCToX2/s2mSbvQ8arT+fYs0wPJQP4YGIaBVAodsQb+IsPk79cPho1O3cKXSFt8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770539034; c=relaxed/simple;
	bh=yjjqoTTjjvHzDeW1vJVxDmvX+gLDLz62geQ+XEE23w8=;
	h=To:Subject:From:Message-Id:Date; b=nliRkhX0sqOyLetgonMSUyaE5UY3TLpNC4OTht/cqWQD77A8MB8CBrPbaOJlehc67UvqTXiUdr3ZF6qnlup4s9HSGz+Z2M2bf9KgRqFr9t3LGqdigmH9i2YK7Xfe1NFyLjdf5vSeMzW3qQXbpO0l9pLZ/FcbZ4FSk7FZFBpMU6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxOX9pVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxOX9pVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1A5C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770539033;
	bh=yjjqoTTjjvHzDeW1vJVxDmvX+gLDLz62geQ+XEE23w8=;
	h=To:Subject:From:Date:From;
	b=YxOX9pVrcHn2fotHMYSeD8bUmmGLLO3aTmmDwU7437c/qEdel8lnzZLAl4NyAJG2/
	 v4bxwgsz8RWft5SUvzn49WPbdXocL+M4sgSaldZnxHSxpH/1NzVpRWdCnOdb8FsiKl
	 7p/uhIpqnmTA1Bk2x/T1kX28SnnYoVozkYKlWnUKBTJqmaWRqeabJHEBcKB8Pdb9pU
	 qyPrFomMAf3V5DtMonhiUjKXAJkd8/7QT+lMdV34FRxXRg1VuN2M8oqey8kXT3/+L4
	 gN712mjXez9ZZQtRs42wnT/0uBHioiZgVoshJRXayDdBiPWQanlZ2s4IDIyKFGYnmF
	 dsxG3/Dh4durg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFB0EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053903360.5587.4020474404342071817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848d046b4e4b651d25afe009ee54f5e8622f9cc706f07aced781cef4e352483c
Date: Sun, 08 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770539033
