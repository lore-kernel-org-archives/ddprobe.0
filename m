Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FB6425CFF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774971294; cv=none; b=ZEf+LKK1M/ulhchO/V6HSDIEmtfwPNBn+o0y43/G0bTXqcNt0FAXeUiXwID8QKl/TCqNIqgs2IBEagByOXHV4kyYuHNYydWLtBF2ZSBqrU3k5X7zw3Dqb+ZfVRP1h2lcIEtL7t9lEeJVoGLK3RcGNXEGd9lXLCFOeTLXeQsD16w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774971294; c=relaxed/simple;
	bh=SWDB/ZS/xPKINICJvF/bCpY45KPq8prifX0jZu+zK8s=;
	h=To:Subject:From:Message-Id:Date; b=n3Tm1SA4MwMNJuHrwbuLesHKxTJeAhMl8C6sP2CPYkkMPQ5vg9+aGcT6XSqHhGZrQHVu6qthAXowq8obFdJNidZBK8IhStxyo0f6dG5xqleZl3EExW4xpVuAoUz3xGtMS8JxsVKagO+1IOmJ/M8g9mtpM9fBpQWeAnfSj0DH0Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3X20V/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3X20V/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9942C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774971293;
	bh=SWDB/ZS/xPKINICJvF/bCpY45KPq8prifX0jZu+zK8s=;
	h=To:Subject:From:Date:From;
	b=F3X20V/ZDtWoBNif5B63QCUyz4aPvIBqubNRywOKBeOZ1w9hoQdglhAJCnAQktQQ8
	 4dEKUQ3syozSMDFuzA+hcveyS0/d9laN7H9MzC7PMLDYTPHHdq8vqR1HTM6G3fFv5M
	 xlIyh84cMHMXnGynzd8sXnEScHrqsCFJtn7xVAFhqr0sc7GBNdc5cnK5M/7Fncsu6k
	 D3ACsH1rcJSpzR4p3b3DFc7nPtxy5OcG4O433oQdhytag0YiFF2E2BphyqAOYZ7x5y
	 aXUjhiDj2Im9u2GEmIUCWjpmgmKRAaiZt79mkrzJwvRKFXIZWjysY0UrkCo4IxciEl
	 YHKJ1zEGrb53A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2656109B48F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497129365.865.5020473337064868171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afbd5af7b0df3d2796e10199150cd2441733e816f59a5ea65b6d588a8cbaee6
Date: Tue, 31 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774971293
