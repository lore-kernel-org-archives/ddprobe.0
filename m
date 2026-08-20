Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791431F9B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787267434; cv=none; b=nMCcP/QZ/ES6OyBVOYMGkIfHrQshG18VzTA+An0qfu2z9oUKHDsdtXRNCT3biNaVFVWhjI23h1VBxTmJBIy65HMW87eL1ngrPKKAMKE2RxY42Nu6+rfspg5e7Ea3dRBmh9qxT0wwSImNn3sjrbj+jXidS5VzLa3+0EvJGcFPEwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787267434; c=relaxed/simple;
	bh=pMv/K7+dJ3ots0rQqgFUWX+6JydjtfeU9ZdiEPIP40M=;
	h=To:Subject:From:Message-Id:Date; b=skhi3pyxB3jJKM6tJW2mIhLVD9/sDWHIH2epYnpVNqX64HoxdZJg0pUzvAaayc1YZqPbt7w7JSOTnal3nowPN4NLJsJPb4+o+Ovfp0IFhA+DJeaL2BCOkXc8apN7ThBysFRUfMrPRHIJu49gUZK8AfN7vF6qo+djMnwtHIngcmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8V/gY3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8V/gY3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF879C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787267433;
	bh=pMv/K7+dJ3ots0rQqgFUWX+6JydjtfeU9ZdiEPIP40M=;
	h=To:Subject:From:Date:From;
	b=f8V/gY3T22rRfO51sIAgHsAARJyrm/m1nmtvsXIThNdUiAtsi3vdOz3B2Mr4UYp68
	 UuC3XCsvuODWeazoeojgQiq9+vHge6+hXF4GZO84rqLXUu6sppQdUHN6oZ4PO3ghiq
	 msWji9IdnPrDSYb8vIdfJFgwUI+Y4C7awZb0yp6Slm9egcH+wKFlPlvtNfmAuMDMF/
	 Dupna56ufffgnB3AY4z7PNapRMn2R4xOwvVjzJ75YSIIHU5QDqM3CojFOfckGXZg7O
	 keK9LhNmw9WRCaweFs5DVfFwi23T/pQIf23zG6c73YQFhGeNkFbDsYqjMzANBKOapR
	 uROIg8WEWXPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80BBC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726743374.19114.4439816281855207617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e3b85c8bc8a5db05758aacb2b9e645a4633149dcf5be8ed155c8871f47773d
Date: Thu, 20 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787267433
