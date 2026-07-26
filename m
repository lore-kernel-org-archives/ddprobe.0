Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9C18C2C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785064234; cv=none; b=gxEN3ZPUwZrjHHs3YjLB2i+0VGALVT0gJzRjY7EkHdh3TKeZHBfj15oyqVK7eyZT1QZmk5thJ8G2IIu9eetN5A32g3XyJXmbJW82yzFwrOSb2gB+TvMw2XoOYxcgBlxCwn+QnbEWSVAYnMBl+O+mxdhtUjk/y/ZecbC7vT3Tzt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785064234; c=relaxed/simple;
	bh=4IEMfdoobYYfYljD19tiDHzwjRcQhm+FyiGvGbcKt48=;
	h=To:Subject:From:Message-Id:Date; b=VBPBOJH93B9mR8Y88PIS+DkTU6wK00cTYluYB9/x36g26bSjFlyFq3VM9U5ClRbgYf/6gqmyXdIWPrETFlezFVW/56q7FTD4lN8lOGch23nD1kUNLBOARYYY9Cir2Pk4c3qDNoH1ePR4NHo4joxkflvTzv4QmZTRkuEi054ehzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYWoDOLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYWoDOLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5826C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785064233;
	bh=4IEMfdoobYYfYljD19tiDHzwjRcQhm+FyiGvGbcKt48=;
	h=To:Subject:From:Date:From;
	b=iYWoDOLfBBaL/4N3J4xJ704gmXQKIY2uyTIF579qu/GJqy2/SpZeFq8bGvak6y+zb
	 Xdjm44bnHqck1RzNPvruJPGCyvP4O/5V/8E+6aO9SgouwbQ1asKeIWkVzRmhjjrJIy
	 RVTZePyvL3tuKLKxds1Vs1RtzRZHlW3E4jdtFHe2ivPzcIW6NcHdl4jufZ7r2b4M8d
	 P/qGqC39LXh/wCnCMbcICi50wOAk9X2NA5vrxM7MjKf0UQ+8Z0WzFEp0FqUu2XPmKc
	 0PDYbBbjDhIxf3Ot/GIZosZfqp3xV7/v/QW+Bvkunl/j/ALzpWvphAON7nOrzeu7cw
	 LpfhCP6gS0v0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDC4C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506423368.1499.9254338984169243721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0055e2abc0fa830623d2147a8670d63a222735723236251381c77c4dce5436
Date: Sun, 26 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785064233
