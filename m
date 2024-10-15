Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D16D1E0DB0
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728985554; cv=none; b=TH7Xv8aN9oL6FYE7ayyFjTYA+A9W0qtitSZkj/SUAuXkE8DgIyJDYaV9HmsrqZHver6hMBUQoyXmRBy3fZIKHYKH9tgHHtqlomUBkSBbheYZlezCm49g7Tpwl9T+egSSP7snjPY5q6oeoV8xiFVpchHYqYLezaDwVL0nEge6j5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728985554; c=relaxed/simple;
	bh=WSj7KxfCma0cP6NvaucTmMuCbsTXzXYfaxVdjKjXtl8=;
	h=To:Subject:From:Message-Id:Date; b=AtRJgZlX0xVc/ok7iO9rPsGvZkIxLYDDxBlfs9n88un6uMPXYQzBASUasNqqGG65dVdpsr5cTOjAXn5C7BQmTQ4HGNafPBuqTqdCpz8pz5I1kT/E1qtQP6dGY0rgkAwUb007ZJHY1HGYSKFVAjGMqRW9M/AriT3eXtNk8E5AVVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAJGoD2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAJGoD2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D19C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728985553;
	bh=WSj7KxfCma0cP6NvaucTmMuCbsTXzXYfaxVdjKjXtl8=;
	h=To:Subject:From:Date:From;
	b=SAJGoD2z8MNuNaClpawcAnbgmBM4N8059MyoUq7bHXfUK/kbuOQQ9Y815CxTvgMfq
	 sNCnadkd9IYXnnuOiZvf5aRX7+UBJQG4BeGhf+sIWz7OzFylxSsz6N+lh/INRFLl5Y
	 dgg39MVkNULBrYazP6wm70l1Zfsomdf6iQ0gk0+CbJkkvsWR5asW3g3Pjh0aKV3G/r
	 Fr0coOaUKlL1Hkp18mZDEiIw1j1drQtJDz8LyRP6wSS6Wk0Ha69b5SEqeO6xdaSlPS
	 biotLKpD+G4onD8o6Mrixy2Ar4KNLmWAHh23GWGE0JuT5weF7ikaHUjWw5XDoU+MUV
	 ztEMNNlFvaBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B9CFC276
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898555359.11223.18224420300243652587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef4a9c93d0ea8a4ae636b6fa81925cb3f589bd413754507239cf53a9bef40bc
Date: Tue, 15 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728985553
