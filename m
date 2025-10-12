Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2987C7263B
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760259594; cv=none; b=OOTTDtEtwHgXBCcmjl2bRyNk5uN/TFh1AzicYEQ5i9CYa75pqVBtebIK7aDilBZOF/Iwviov2B6sP11NZHf31l7/w5x37CZOdHcew7N4WkEVJbZX3Fc0t9UmV97wDEJE7xWsduKl0M8bPxHIfSu+gNi7CUIRLEwDNtR6WAKdqsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760259594; c=relaxed/simple;
	bh=/knEM245SocGWGdJ9qps8NvEfzmjAtDBGVoOKUPj4Fg=;
	h=To:Subject:From:Message-Id:Date; b=C9k3oi/M86plWCFT9htDiWsMx5WORtjPmK/X0eBvTEOE63pCHj7HO855K9G8UfaAlfoGJSDccb9GSvazn6i+GvMVHbcnzx1mG6zQG3N/lDmRevQdTht0o678D95bzaNm+cJmJXcywzT/7QOOgo9axtwJT00HYzj8f2s6BfUURig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHURCBhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHURCBhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760259593;
	bh=/knEM245SocGWGdJ9qps8NvEfzmjAtDBGVoOKUPj4Fg=;
	h=To:Subject:From:Date:From;
	b=tHURCBhBpNcsov1SiRlav/tiMSCca4TSrJTgK6nFC2YvzKnBBKoNVxTkE10cvPzp6
	 yUMm87WEVw0diGyOlBV2szf49aa+VDBwG8/fPXrE+hYMrUtu0iP/gr4e/e3pQD34dC
	 YLp2uZ+wPqjU6ZiZKzhMA0FyMHFfTVRmZACWHORtzNAqzjwkyfSIsldCL8OS4olNeW
	 as538B8kG8WxzUeMQtG92mmP95XCh6iL6LwHXJPapLImAPFP3Ud9wE3bSqF93xOpm+
	 i4XE+OQXvgCYU3jVYxp5iAxceCUfSVevTMYyes3lcswGgLDYUCgHekXu5y1OkIeO11
	 pbmJSae57u5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025959358.27354.1110484548656131349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98587c7cf7f6885f6aca47ecb7e664b9a71fb282f20b2f87c6496cc127fce0a8
Date: Sun, 12 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760259593
