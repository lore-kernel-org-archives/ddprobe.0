Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280942BAF4
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748822997; cv=none; b=ScRyav0/TmBA5v3gVURLskqoK19xDajxdFYYUWAeYNglbIJs6emx0zy/8OgCiMOR/PxOhpfrw0NpZ88jhqQ0z9MCR/XWuRDwt5TdmvVNeLqjRSmQlvELB70OUC/XuZ/49fDjS4tVBG1A9vHsdCB49scHZDmi0LGV7U4CIHHiTIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748822997; c=relaxed/simple;
	bh=tC1bGM+TDYhgkSZtAqZzTIx/09TT6DNZuH6niW3o9iA=;
	h=To:Subject:From:Message-Id:Date; b=NRwGvtvhPdr/9aI0XCC0TtmxtQreYUkihFGtZga7lEtjWFj6D5qF5Byip8F4vaRouzYYKXim8xjd2MkSqkkU+l/ECba1rn2aHGele6MeoBGlynoFU1zR32yHo3H8B7bI7p+QGcGNgT5/W8A6XmXibPvJSDej18I4uwrgd3FaRPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0/HO1DP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0/HO1DP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB3C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748822994;
	bh=tC1bGM+TDYhgkSZtAqZzTIx/09TT6DNZuH6niW3o9iA=;
	h=To:Subject:From:Date:From;
	b=m0/HO1DPESHhJc7obOUc2RBCSlQm1VcU/7eCZfAbOTN5zHfT1bUTVkcYVestTeV+F
	 OCMwt72PIIXrJRt7sF5m8j+kxZGFeYANl/eumWKRWk+rDs7fdSPC6RM+b3yvZ0T9Kf
	 KdYaGgLrXuLmmY04qxmIIF4lCqPT2N5yMKJQ3pTtcx1E8UAiymtxIxRp44Mp+qIFbt
	 bwcsWIf51041Wy3QhWDXbTwsa2+O25owVXmx/FlnUXMlRFwHFtXtyimFh1KXd0Ta7i
	 DN2EpTj/P1LY8w+3gpnzMtcdZNPcIt91tGuTNLguZJpTCGBo5nOy3mC5uJme1YK1LV
	 2qVRY0RgGZ+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BDC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882299357.9802.13049309212706698268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36a8079d5b8f67a37586cc73d18ece1115d57866fa351bd2fa14e4add9e93d0
Date: Mon, 02 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748822993
