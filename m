Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7971B33938C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790990434; cv=none; b=fZEgCC25foV7dRY2aLqc5iqnOoGmnTbtSIRSPM8/rYsdx+OMmcGm3so4YnbS3svexbhvIWe+WuLVLQ97ecnTJKxK2yJ1PqneLI61tnCxQYo+qf/NomKm4hs3zDPMqJatmggL1ilMDiv4vcIOQ8dcRQ4MgAuejpKYetUazb1MfLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790990434; c=relaxed/simple;
	bh=P1KcgPZLh7G20psRcLTbAqYgoXR0RbfnN3iUq+drDbE=;
	h=To:Subject:From:Message-Id:Date; b=Rf5ic3TBe/CUK7bUZ9qY56BlwG+YWe1+VMVkqzHbYK7gjfnt+TWgmUjiTSH1Y7Rr4xXE6ifFLwJ7lMRHFlUNBPos6ArfnsJbNYYSnaB2CNp5YeLeD7p7ZcHgb/B8Se3LKrr+RzJG9O0CoxN4cPSz3VPkUj9ZDYUs5aPsKhQz4/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqgLZ6qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqgLZ6qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C54C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790990433;
	bh=P1KcgPZLh7G20psRcLTbAqYgoXR0RbfnN3iUq+drDbE=;
	h=To:Subject:From:Date:From;
	b=lqgLZ6qctCM2rv6zN3S0MTGP/BTBJaUfjGnTqewO8S/NESL0nMG5xwnjfnznBuJ/Y
	 FBMZyqK6oBqjY+YFDTSbhxibHqvtQ0JieuXGWen42PWEZ5lD+M4fpQRk7tEekoGPEB
	 ew+JS7FqCLRDzmm1BFhs30L28ZDzJg5WQDmcUyqwLtD+SAUKnDgNLpJyEztwJBaqv1
	 EHy8mxhXXuvNIMrw8sggcKBv5t4j+JYdFvY29HiL2Mop0fD98gqeDNmpQ7vDrH6OPh
	 1KZv7FL2+YuMIBTsSqExoFsGGFgVuwQczGR7ungQhNIktC/Df+mLrclcirc6uaBhRk
	 to5/Zt+ImDNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD79CA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099043368.9156.1830706066716548119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d503964f90cf48abc321aa4212b7775e3a4b54b9b10c5f7cc850c17983908c
Date: Sat, 03 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790990433
