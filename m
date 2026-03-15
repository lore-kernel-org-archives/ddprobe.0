Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287A515E5BB
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773578094; cv=none; b=CX+wBlj9XQmmEJKJxlEbBXXOFdzj5iEIjWNV4BDH/EvWcHS51EvuL0atus4BiEraVxZ43DlMv+TQMlAokojifC7hmg9imkK7wTlklVGliYwF/BA29/zWv6lqHptGtxEem0sfANlbv+bl2OMpvxXqTRcVOs007epMsFfkVufINao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773578094; c=relaxed/simple;
	bh=pD1u/cWAJoaBNfFV2HaievaV/m2hjlnLHcA8f4kwTQc=;
	h=To:Subject:From:Message-Id:Date; b=NzNLgCBXZgFw4B6nvJIYHEuQPYfW5aeVqy6trrS4mgfmXmM2rwx2iCZAJHWhNrtdEWcMMiyFpN3CAcz6AWT4T2NXYOnqGumi9vs61Y1fUp/7Czst2ABAKmEaslYZopGi/bQtsxODaBJ7GMk4HjOSOqUhi4PxzlCDquHPhggaiig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfT1JMNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfT1JMNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A805DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773578093;
	bh=pD1u/cWAJoaBNfFV2HaievaV/m2hjlnLHcA8f4kwTQc=;
	h=To:Subject:From:Date:From;
	b=bfT1JMNvwoFAmC1ob/uMLbo4SSnxiXXLCNjh2XYVX07d7FEYCmN0CWoXAfT+pv6EZ
	 aIGalX4VIulE/FdUZWQhu8lwR2Aym5CKnC3obHGSsETKA84+xUCx+yxVuRrNh/9Hr4
	 jg1DEgEiI+2htt27Q6YpItUYeu4PfzvOwBfYE5an0WDx6hFfVVXVyI0O6lrkvOCdor
	 OlW0sjVTAOJg7zWBdPCsdi/YDdsPT7eXcLc2SvuJe6EfFpp+uoEKB9hVynrDqc3phZ
	 6lNsW2Q3B3OaSpyY9h1VZItCl19sWFoNXgBJ+88/CTNWvf2MiQX2flYQF7SeLXQTwf
	 0sMzkTxJyxwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960A8D58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357809358.30411.7872435403655094561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bc464021672ff820322df7cdb5d261ba89f6fa11757d554777e9c507ef2621
Date: Sun, 15 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773578093
