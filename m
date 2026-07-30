Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CD439446B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785445834; cv=none; b=Oxldz6gqvaxM+4tmu6rwDoFA7lhJp4nH1N9f6MI2JmH0pWIzByGRql88RBI4FKpzUSpROrUVEY8djBPFtas8bXZ/fZWARv5KzTReIv2vTgraj/7hszLtgJ+PJSWdd8dsHerGJPBmyY4yy3aLw1WItWYLhaglir583hvCBkTAJKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785445834; c=relaxed/simple;
	bh=a3e0E1dMNvJCgXKYgsMHA6zUMjZDbWEYEEKddfvszlQ=;
	h=To:Subject:From:Message-Id:Date; b=QbP5P7TKEMrLsJVvOli1dyct6G/Ss5Yj8VnssmhslX3MIZX3D/03AuMMfcG/q5h3u0iHbKsh8reKK7j0mWBv1zquTB9g/dQC+H3+rrTtuDDfYrx2L7Lqys4sfXszFkQ9urq3hzYoV9Z0RFOZL9VdhQcdGg1Pi1jlmXQcijXrk/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFmFYl/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFmFYl/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6C7C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785445833;
	bh=a3e0E1dMNvJCgXKYgsMHA6zUMjZDbWEYEEKddfvszlQ=;
	h=To:Subject:From:Date:From;
	b=vFmFYl/rv0iqmPLEG9MoWmkTG/ryu3YWva1TROOjh54cmxam5CFrbTNxFJzTEgKLc
	 Lr7j2Wp8SdugUFcp+YpSJD42G4qy6GAnRE/3aK69IyOAlZDVzMxFI9Ep2g7UT0O6WM
	 lCcCh9BBTwXLQ/fvUmbjVZH69WX383geYGG3mnVW6E7lILbIofJLwAjAJXZRxlV4BP
	 SDo8Xxnwk4tj3U5x+grXGBcODnzN3T+Fflpj+R6GwKRp+cGYmaX7xBAfXmOte+dDpq
	 S/tLqILPS/3YFTv8QPehIRtzV45zBUE85Pet0iisHhVRXis+v6wcofIWPTfGDQnPOC
	 lqZL7j1o+eQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6EBC55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544583369.20090.9834331695180572098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4f3542847a9d965762c7f7f646988f981d4ead33e36dc35c566e479ab032e8
Date: Thu, 30 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785445833
