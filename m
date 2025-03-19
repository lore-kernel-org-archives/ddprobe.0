Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA3C20DD74
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742365794; cv=none; b=g6Ec02AzWN5hvVlX2srC/VEIcij2d2lBZF5Hnx347RrsUAKvgSu5R7UrGT5Lc8jxILHeJQxYl2xKhADbTfDXCTfnPjOnmhB6PGDr80VDIcE1jSkQ5lgg6X1ZsDszqpUZaWYYx2yZXBifp1eblXo3hEYaWPZrrMV4B8xv6/WWl6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742365794; c=relaxed/simple;
	bh=NAaHzgmDcfQNd9sl/YpTXpR9ygL4e+KE6zd/bSSRSp8=;
	h=To:Subject:From:Message-Id:Date; b=p3MfZSKfZy27+lNKIsxImd+5yjGuDvh/opQF6RizN9i6hsdNUAPVTHlyKuJR3Zq23ZT0qOd4/Iv38hqCmy95C4jwRT3ctyUXR3YHyIkYfVa2EnThUqftovLHWznBQl4RXCCtalJaI70JD3Ds2IWvLC5F8V8EFGWe9VMqJ2y8Zc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb7Udd63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb7Udd63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9146C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742365793;
	bh=NAaHzgmDcfQNd9sl/YpTXpR9ygL4e+KE6zd/bSSRSp8=;
	h=To:Subject:From:Date:From;
	b=Gb7Udd63gPMwahxMoPOsCa03A/SJHBgWf5FNerwNI7aCjRAA2xkrPBqocUoxMLNBa
	 3iwcVrH+t5T+k8pOPQZZL0DDVUh0hxJ74XldDnwruHa/2bDXJtDSwNrY/g/rxEwr5K
	 JqvBKOsEvjILBBIanEOJLm2OY5I4FadFwst+GUHMnBzh4u3eFQk+C1ESOSA+60wb+r
	 41mvj93+9KahHzGE/lWLvsbBA4nT+Ht2KkhW+K//bcEySjDDbW5LbBqxrcgJL2a9ql
	 23Mig23CnyeULZ0MzT3/2rBbizD+QoSRefUJqmBQd/POlTOZbIb5nBtr6x92dtsEuF
	 gR757iJGJE5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2227C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236579364.21436.6146535203469837670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd61e6a09745de71ec54c7d02865ab34a1a1dbc07cc8e2a0ad143f37cde9c96
Date: Wed, 19 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742365793
