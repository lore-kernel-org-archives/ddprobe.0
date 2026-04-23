Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1014E3E5EFE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776938254; cv=none; b=Ok5q1kqggRYpUS3CVrvs1sgXcEP2fZHkC6+coOX8maKslrBukjlTLz+Q0xVDcJlnCFrlbDwbomdna56TX0UlumX+GatD5EV/682XVakv4GQf1sUoAjepTUBf+ATNBPJjxzIUNRzqd40Vuk7y8TrDxaJwa/zSYsX8vcICy6OnWww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776938254; c=relaxed/simple;
	bh=kTx8SQJjYI8K5gBcUDZsc+5swsoAuF10snN7N10xcek=;
	h=To:Subject:From:Message-Id:Date; b=XbgXUT67pi3wFMjmDul2wPNTZlHkVRkkAbtPw3rL+oVEYUDhK++Y6JiPcdk6rsayRoG+iRvNUz7bFXOzRyJoV0mC5Fq8205VqNbKVs42JJH+upJnY78ZLIzUo4CjvsbdZyC+2EXlE9B5h1mfcIxgmS8Vak8yvG7uLaod1sMsdI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKS+DcAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKS+DcAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89B3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776938253;
	bh=kTx8SQJjYI8K5gBcUDZsc+5swsoAuF10snN7N10xcek=;
	h=To:Subject:From:Date:From;
	b=cKS+DcAa7xRyU6cRBw0QBkF0W5gtrHAHkoUKdCDieDNjHg31/yWTKItluZgrxAXzS
	 SWKUiWfC8BySHe7CVFovPIntqv8mJHQGmtoC35kstAKA1o+/3ASLntyQZYFRAWcDwZ
	 I3gFrtD0WHKlYj+4jpWDy5BvHiizbUjlgjKv1x+V4NQuwFhJukgFTAB5s8nnnz+QfM
	 YAYls02wb7oYf3qeo23S2o4p4d7VRGlaMZt862kRmbdkLqcemi9BTtsrYdnKS3YIrm
	 hAJlGC6BZ6ZOpouvnZ/MOVNJliBTw41kUMak/5U3hxIqK2rx6BEoEckpEouHvyv/li
	 Bp2yGKUmW2YmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F8DF99362
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693825368.3971.14735186220208166149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cb041af1b4078ba281714d9c48b0e69a5d909006d34d2ef05f52661b2e26e4
Date: Thu, 23 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776938253
