Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0928925F99F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790194; cv=none; b=Q+i7PVGIuQArJfBKX+BXUdOEIfgbp34Eajuw63OSpR+0pbgRRZgwRvkZbeBQQOlNVo3PCJ+0x0GMSo6XSSn4UfSCklfN0+5j58/bEu+VsC7G3GJNdMv4L2eycZZVcB5J203D00v1sOfISdRGFIVdCaO84TNPVHDwQ4Q/tM06QF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790194; c=relaxed/simple;
	bh=cc8tcrjOYIf2v0aETOA6cLPPR4lxrVlTPnHbYRQZbAQ=;
	h=To:Subject:From:Message-Id:Date; b=QB9Hagtc8tOU7dVwMC5JerXddnBWCXXRNYhHIUuIwTgLGxj/vpPHLFIbM3cjlDBEYUgNZheMq/rm7NMugyhhVmz0F4g42JCGXz1da59DdVXFErUqOOLSQH28VEOsxrgFDp4L3BLNpckcu5dK8gUxzC8EpBRT2tK0ziRo2KbwmtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idB3BPGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idB3BPGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC7BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758790193;
	bh=cc8tcrjOYIf2v0aETOA6cLPPR4lxrVlTPnHbYRQZbAQ=;
	h=To:Subject:From:Date:From;
	b=idB3BPGmJSvmZ1Zwolp7T6nD/VNXueCLIEwq19/2DAkgUUE6KwsnIFgdRHGUdppqq
	 v5DhHuzG2tRob1JC67BB4cNsZzPIECsSuaqFOP3pEJjtGWU88Z0UCwduR7Cgj/195W
	 M/EcPBujt6ayycMHsfb6F6hrS23eKPfHrRg+Ork57bwZNgc/eQf2dBp1qCf4mUwwEV
	 OMdr0JiUsj5HNPHbZjkbpQHyboBsg2aOiSj+vk9fdCfaXRC3W+SxkedKbOjcfBXWcD
	 YvXfbtooMsPmVRC3M0AJWpC1fWO6iISEqWr/1dWAc4wUH53rQZDN+RGEp7Bbpcxjy1
	 3S2RXN+8BAwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DCCAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879019358.18540.4622378125579765482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe237875486533dcf088f673c2c8ff3ad4620419d85966f79c0ce938ac4cd95
Date: Thu, 25 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758790193
