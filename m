Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5445D14F9C6
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712952563; cv=none; b=rTOnyRd3eyDQ/NHVR5GRRJkqmLtnetgiZZelm+WcclPKtSkvr8eSQMnLEEt/JbI3nWo1YRD7jkign3fCRWt11u9bUIftwsBE4ZAYzhSFycPj1tYDNPfcptXwEaUZbJelQANre1D9qhJoTQK6E6Wf7qjQg58+n3Hlzvt+olM4trI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712952563; c=relaxed/simple;
	bh=n6+/SBPAdkDRpi2NWmcJlnEAnHYP9y/N7zNTf/cpeFM=;
	h=To:Subject:From:Message-Id:Date; b=AaNuJ1YPQo/6T81xCOQ4NmAmBmiNC3obs6RpazcC8Ps+7yc9EN5xzkQm0ovuA8iJgkrzVl165kpIM821XYpuIaBVzGUGq35s9+TbHM7FhIncnvHRn+PXbgYy4LxcEcUqIMYr5AZrRjAaGQLnobR95ekqxp5yksjZRRpzwnHLccg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC3+2MCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC3+2MCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05D1C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712952562;
	bh=n6+/SBPAdkDRpi2NWmcJlnEAnHYP9y/N7zNTf/cpeFM=;
	h=To:Subject:From:Date:From;
	b=AC3+2MCgG4/+ETEwaAiXiqmIiricUsxHkL1T08YvdlkN8PzpQItHbRkixopP1F5nx
	 gmfPxXmJ7Am7xwU9akOzKQ6am0ARHU0KdvXNkE2jTCa+3IVyxf8qlQAgtwgwz7vCtX
	 QmCwQsDk+Xt5ZSMxduf4/AVj2oPlXo0b0RpaPcpdzNlsuzmAV+nkWKriEc1V2gbMG4
	 6rEzYfxMaR0W4ys1Dxc7cW+FN4vF098r1vjRpgW8X2wzqtONcCWwopCaRY6P7vTio/
	 U2J7iKdc7ubL5aw5AUwLBe5hjQWVqbpgvkpfXMG392FF/FW8t/O/KlSXdVu8Ur6dg+
	 1x1j8mJlO2A9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFB5C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295256276.24782.673447801434853019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a609b89c53999bb9c7f9e2873463482b6ac9faf632944b0010b58534436f67f5
Date: Fri, 12 Apr 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712952562
