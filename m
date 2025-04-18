Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D8F2749D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744981794; cv=none; b=JhaLHXXgYh536NTafMoLv1IOzHBoGLhxFJrAFeSfSGIaM12I5oFFBLGtgukLEr40XcbQeGXN69U/DlppubUKGlQ54B9SIfIlK8w+Tda+W0zUkUP2GixbgR9NWXf4mVnoomY312zpN16D68b1YmN886LidX8ysDA3tLDCLM9yiIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744981794; c=relaxed/simple;
	bh=YLnNCOcqHbRlVFPLiez87p8eeWp98vfwaAwf5vAmgbI=;
	h=To:Subject:From:Message-Id:Date; b=m7xcg1aqzjM1zLmdPzUE6ijDLtgHlqSE4XGFV3oI9znX7JvdY60kaWobrRza1C21jo8vhvXsYHdXYW/PMUlftu+I+gXESMHiDn0FlcNA7ytLXZgmvvOm41fvjCRFBS1UXLMVxEWGgagvJ2BG0wlbRPccBnwXv/X7l2xS7g0Abs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+NDhg+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+NDhg+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A8FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744981793;
	bh=YLnNCOcqHbRlVFPLiez87p8eeWp98vfwaAwf5vAmgbI=;
	h=To:Subject:From:Date:From;
	b=G+NDhg+WWBN8uxAXY1k4/f/d+YkoDzbekc9Gr8pjjTb6OqxPNyNC2jmSycWfZudGb
	 53Ww+Ofp+WBRBhC/fGTUZbSOqBmjX99da7erWXBdNpOSwMSKmFF6yIRPIWOi77vCDV
	 in5lrQKyUonLxiVL2u+bsiwwszBJfn+mwS/K/OVnq75j7/F0tzecZXkI2Jit/0+maZ
	 gFADBZfe20XzzLQYDVlHibvHgKNw2TqUWyWKLfN3L0X9wWMgOI7Kv7FFcR2BsrRzua
	 RmBnUzNP7muGU52sGynpybwQYslmhCzRLNkJ37QdGUWICEobgZzVDVptOUO0cwtZxA
	 SWo3EHFUsrBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA492C369CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498179373.29798.1480544771570813456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3baf3c0dfeb34415d8d1c14c416090470b0a818cb71fd0f31aac7ecd5caf03f
Date: Fri, 18 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744981793
