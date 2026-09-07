Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C7165192
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788802234; cv=none; b=aEZG72tnxai0cHhuv5On4gyIEy0TwDFns7Jf3wvskIUrhcQ15qCBUIu53LE1OlgQ3u7mV83TVPcKChJpOJkIj5YhirE6LgS+PlOGJV/Ec4hn2JK0NeHrmAHdRoWUg5mtA8sqzpbaC8eakF41wdgLWLPvwnetj1PLT7MlmILGwl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788802234; c=relaxed/simple;
	bh=RMy4+znJFuZyK1LgTLJq4RBCM5tQ750+cMtC/uxVH8E=;
	h=To:Subject:From:Message-Id:Date; b=q/gFhNch5Jr6SY+K7B+lFWG2KEyGI7tVMRXKug5YtAku5oB/u3Aw7VbYSmZ1vUGN6AyhaCjDGZ6f240vuxpKDfhFyGo9EIt7q081CAMk9uNzsrhatVvGw4NXVIeIwDoW7PvBVKuw21Y23xITbmXQ4RZhAh5GLhC8GJZ2FzUCBVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYH8ltMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYH8ltMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C68C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788802233;
	bh=RMy4+znJFuZyK1LgTLJq4RBCM5tQ750+cMtC/uxVH8E=;
	h=To:Subject:From:Date:From;
	b=sYH8ltMVUiaWSiyAZ0mb6pd8P/YlemenGn1jBk/Y6DpY5kHcuinrfs7vARpABe1UX
	 kGWwKkOQUYwnHboZb4dhXlr67faVFzwOtoluNuje/nygis89sK4RbPtorYdvwEykIV
	 4PnPXkMUnXDCbs4x7Mucf1TCiKkym8XYFuYPhOMtyzb9ZoVK4HTAC8QwhYXTWGZvQp
	 pxVgpj1HaCC3lHGgElOnfybkeImwr51O16OBI376jvNj13ZLML87Bh16xbSeGdAikN
	 8u7bJeaLwhDP136NFV1TB+oGCrPdO1Ab/CNdGpAYvTYGiZYBgCuSnALkHcDP+x2vQE
	 K2paYPbliePbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B197CC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880223370.23171.3854055882955161639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003b0ec0729d406a95a43cb2e0dcdfb779623fc48e67e82c56611f032b04d6c0
Date: Mon, 07 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788802233
