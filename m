Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F58419DFAB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769979834; cv=none; b=fF6T9wkwVxk4gRWndVjrc6qyZoKLwWJ0yZEgPKZf/Va4mWL1gbyH/J+fbBzGelvtUUEbWtVWXjPJEYkrMVw4Ao4AdcabEkoAop6N6RIA7Ql6O9TVo55un3UpBwL9+v7ITrewq4YybcJvwvXTS6J5Oq3z3IibBOSHLDgBSXlNC5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769979834; c=relaxed/simple;
	bh=gCo3H4nc2JlHCmR2/5UIldj2312zqo9nyz2uCG+NM9A=;
	h=To:Subject:From:Message-Id:Date; b=HPpRDwIHhwy2ieyaMJFHXTkI6MtJSyxRQP6DhbQ5R8UalMjmSOIYveoTRLcYkZ+hD0vU160k1a9WBcbAtSnFiUr1Qhx2YgMNlXRP3bnb2Np+xqYRwd5c4sS//gxAP3Ta/rr0w3GyUYbazvYCPI06JHeGhJchnwXoNYO1b/cy6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enp8CP2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enp8CP2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2E2C19425
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769979833;
	bh=gCo3H4nc2JlHCmR2/5UIldj2312zqo9nyz2uCG+NM9A=;
	h=To:Subject:From:Date:From;
	b=enp8CP2AlaMBquCIsRA2k6REKxAgvt0ZWHkI+q+irhJQp0XEv7lFGU2QxpSQ+m+2g
	 TJpu9NhP13xnNsHjiTVMLSSoN1S+Vr9rpP/9OvAV0a2LDRiYXNVqKMqPWt4cTvGfuB
	 BVNxW5pbi4bdLM0HLvB6XbE7ZnOGBc2gMFeRvP3Xail+/67JLNgNPZpUJ0brm70TTW
	 BTXZBquecZuLlDOUAETJwhZLy6x5ylNI/2jX+yOMmSwkgZvjdTCWQoAdfuuZa4pqrP
	 UpFtuYlDwOpe5BKs4jkCxo0yLV8gtEwe9wwgcAjBbIqaBPwv9ooYBqmKB3epJypmzE
	 0D4vTzQ5RMpdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E1EE6526B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997983360.27235.3920329451943254014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d52aa53b166e179f9320bd4024efcc4976ad9c7df4a298e21dcd64531a71a14
Date: Sun, 01 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769979833
