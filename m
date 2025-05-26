Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1AB2CCDE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748288994; cv=none; b=JkOTvaWSViGGOlpt9iev13KniCsolp7OgweRe1jcu3Ydc+LxR52O4CVWbsrPs0JeBv9fTUYVm8nmjZLdiqkQyYbzkqL1lPzd+0RRbO88AtXfoxIKYc9ZhDoNZzjlY6f19zhvfdXFUBFYtBtxDMfHf9QDIpYiOLMPsvBHno+z6Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748288994; c=relaxed/simple;
	bh=G+U60gxbSoBcVLAzqJ9BI+SEGKYxeGr01iA5yvBXwo4=;
	h=To:Subject:From:Message-Id:Date; b=kgVTFMsiaubp+AnZ21dvnziBs0GWo7lIC83oPhVy1vt4cRSaqEqKm72ewtmzwaQhHvIAulMHDHa8oGjWhzRA8l8QGwuMbwCoGOfN+1J8fiREbLJTQZGTlmgEW0zaydvMx+lGiXxjEBu9R7PyBnE2GBAU5amHz4OCyVFVkiWgA1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8WSW9d0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8WSW9d0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3BDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748288993;
	bh=G+U60gxbSoBcVLAzqJ9BI+SEGKYxeGr01iA5yvBXwo4=;
	h=To:Subject:From:Date:From;
	b=V8WSW9d0VCXrWmfRhH6PluzFAKMo5+Fln+cW/S//Vi6dKM30z8iJV/nzsjHBKdpMw
	 Te/aBEY3bj872EC4A/MYScRzAhG5BlBxE4htRemaRXZsm7XiXrJAgCGoPiJZnLI5WS
	 07V636YUIMcNv5eGjKDEWJFEhpNgyj/hLT8/ooyy7bXofn/mKWuAJ1GOrR4y9tL5/d
	 e5f6aTA/XN4cmJKEYnXUZY5Y/P4oLAYWrMq8b4Gv67wDzvY4WsISMmIZQOiiT7Fx4J
	 GvcKLcy8ABhKFCyOBYqrCO++OLKJOCVdlSikGgQhxHLa96vIFVmhEYTGjEyP0fU3wb
	 /aIFeM8AwWm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E9C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828899357.26747.14052516335192412664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a985297757e34745426131e2081773581f7462ab8827881fc51ee4786c48f994
Date: Mon, 26 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748288993
