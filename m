Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10B478F26
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767749034; cv=none; b=jDffAFGiBeCgkJkpkotBHtJOgwrc+f7wB/InCXtk4Plrviiq4M8IHFgQf5KVwtOezecfx2otC089J9HDNgeYO6cxAh6CBlpbY+r8obToMPaDISNbH6CDRQq4KEEPTg6ISyRRaaVtsMadqH7Crgg/kQGyrseT9RT4ia3DAbyjGV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767749034; c=relaxed/simple;
	bh=4QyTXsowueWNvAFmzTMLShoYs93qtv+XWcLnVu5E4i8=;
	h=To:Subject:From:Message-Id:Date; b=DUoJ0WjPkXkqX/fD1Bg77LI37/rsXfnQlv8ryhPSftfTGRSqNkfESqwlcI9TBAqnS9W8ZXF6LYI7oDZlkFU6hFos8iDEZhvO5Q/nEaT/OgBGghoT8os/OJDdLmBu4h3otTDr+HTiZyaajmPOgNVIgprCxY4162nxS5tsItB0fow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkhnO08n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkhnO08n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BB9C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767749033;
	bh=4QyTXsowueWNvAFmzTMLShoYs93qtv+XWcLnVu5E4i8=;
	h=To:Subject:From:Date:From;
	b=WkhnO08npzrZe99HVL/+LJEHPhyRRjLspIqAiz8sWd/ZoGC+zvzvp/R/6oyEmug8v
	 DUOcBIJkKLCzxU9tSS1wM/V0J1jiawi4ktotJv/5uWBjXb05xKA5TmYrJhD3gBVMki
	 EJXWhA7BjG7SZkuK+ixoRSRKmGIJpGBCAaagc09Ov4L3z6u8zRrGEPxAndZotfBaVO
	 O59tnzcmOoGFn9OoT+Rp4cvZZiG1ojOVXObPgQd/uAaZM6L6MFUZxik+smzmapqjWB
	 2NPPAwSqRBfJHdX9ZTkCs3fb/KuOrUZ1RbISPND3yISrzAHT+uq+RvorNGfEXoz+Ly
	 ky+HcRu/27CyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A9CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774903358.27306.8068542695832805805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe976ca13e1f3eca77d9e06dd80a327b48c72d2c29d2baed9549103d1a7b75b3
Date: Wed, 07 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767749033
