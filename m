Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE371A294
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775198134; cv=none; b=rTSSJ1IlxoZOtq12JmUEeYhrca67VaZIqbCpKia5jeCtNTJIwoYHBMWa37sT24xDiZym7BR8IqHQKSqbn9CoM7Y24hwVlHXvye8FohmgmZy8/+YXN3f2rXv7t0HD7BWYtxfm+M/L6ZTJiarNOLh2AJMFqxUWiD8lb3GktoDt6yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775198134; c=relaxed/simple;
	bh=mz0XY+B/zE5RWH2wE2cXiFSFeaItolkgoCjLGr/enHw=;
	h=To:Subject:From:Message-Id:Date; b=SMVqUrPCnJIvFbZP42E4h1bVUNqJOQ/UTXT4EOsz8TbMrQ/jIMoc5yi+zKw9htqxTqcKiHD5/DKEoDTgreAQwmeKtRnptzsbdTlFnFP7sr3qNAlK1PaMyB+O9RfNzuDpoDYgnxEOW46kv+RWVH5uPQRRM8Mfyg6OTf483j/ilnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EX8JaFZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EX8JaFZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53BBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775198133;
	bh=mz0XY+B/zE5RWH2wE2cXiFSFeaItolkgoCjLGr/enHw=;
	h=To:Subject:From:Date:From;
	b=EX8JaFZxEjqVs7WhR/wntwTj9GFJhyvAfnRgjivjSl2oYisMvpZAvuHfJ71FeCrMB
	 Jeenu4giMIf+1Ziaq2sWqaY6YHEGW8gmRSg6E7M5Gmwg54tYWDMxOcidC19QFGM9YI
	 xR8oJkbnOFarQ7IOFSrntkl7m7xh4Oln/CZFecN8kuJ66gBBWliYRJX1UaM6vZHH9d
	 DvuzExn9LSQQxQ7VKlWspQIV1QdCjD/zFqBgSK3wcfN3GlB6zzUGqm/WiY8hz2SVxU
	 jiAtPi+8pWtfMZMVbPYmniDSKdO9DI0eqi/XOrPkb6tyj1NJanYXB+8b3+EWG0dnHc
	 zmIDxzwO8VsOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E9D730A9
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519813368.22867.14841572583533539041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca4280a1da199c1e85f55dc00833ac457fe3f010588e98bff05b5d7646adedd
Date: Fri, 03 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775198133
