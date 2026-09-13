Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AB937A4AF
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789273834; cv=none; b=utwCXXDUak0Gp+TUVB2tDdS/5/bDXZ54MXSiYmSOx3QmcU/jY8z3f4mSvbwtvSxCOd/FKnPKf78VQy4EW1tSWY4ikCIFx7sB2zvcYZqg4OQkZFsIZ/VnTlKl+tWFPSDWfZF61D+jVMTRbBSmMZZaN8r25kmd2500Tk6VuuE3e9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789273834; c=relaxed/simple;
	bh=b6R7Fy88x7B9J4v1V8Jc8InrVV6isYEZ/vXZwstcAS0=;
	h=To:Subject:From:Message-Id:Date; b=CZ5polNiMJ9vvhE4NXG5OUj99CKp9gQ1DPbjUWLuKVxbAggrEedyFjM1zXt1Qtt9RxdXu//Uo8oqE9W9LL6s9fF3ivBgUN1j785ctTdS1NoP8yQ++V/MYQ9ZWpAojxmuA6KcfFyp9UcvIWcdjopUvv80NCqS01cQup1xqDfZAWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwWc+wR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwWc+wR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD56C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789273833;
	bh=b6R7Fy88x7B9J4v1V8Jc8InrVV6isYEZ/vXZwstcAS0=;
	h=To:Subject:From:Date:From;
	b=fwWc+wR4oNgJZn8VE0KvMz0tX+5kYvcvasoEN7Kv07U+5I9W4K4UqCzQNLPQSkshd
	 AQ1vxzl4WXaEWOxsnuJ7pU3qXKH5FgpvBEzRESuGkz43+ddFETND1Lp6Bjhk8sqURv
	 BTLCPHDqvRU7O6rum3XFigTUffAZCbbXn+gekAp5CdTbrOY4m/R6hNukkzpEzN62C5
	 yzFAtEcbaZrw0zKu8guObnfIbVeN9JfoujrIdxsjXTcZbdQ8JnhLNvlDZMQrVm9jZo
	 B5/VZnm3fCCJ7owP3HTVC/FL7uqtzESPDCQu6YhL7Osg3cIa/FA9OK83HBZvHaHW8+
	 7WlMOljQ6Az/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0830C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927383369.10727.11889723089496514223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5671dba0f60dd9754f1193ed1601a82ae42a312af4379096ff624635513327b1
Date: Sun, 13 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789273833
