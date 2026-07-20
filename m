Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE8F3D952E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784561914; cv=none; b=GWfOf8xIfYrJMEQpULT9dk6ZoocbIWoti6BZUkAF1SphVNnmqA2wF9mvEYFNr+uV11gXYrixMhIoi4AEvtL9QPizpGyLOEwyRDi2iM9uly1cH/jwxRfCT/s4gbGfKNtGvNeAGbxHBrxz+sl1V92SyflT2yFAcImWdM7x5T3bbUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784561914; c=relaxed/simple;
	bh=8nSVi0PqG7VYXxzkkqwzlUfIQvEOPCZMveTNDtLYBFg=;
	h=To:Subject:From:Message-Id:Date; b=CN+pR3kevpwyEkfca2CIsv0MuWsD9iw2dcJ5EgLriqPfSx0YcTDhJd4YA8PLdraXfAZOs1pMefOpiIcWO18bUVhVwm23F7TQvuPGoUAtH0PyD8IcPSgSwMTfmmKUl9ZlMtrGZ+4F9zIqyxS0bgsdFFtAwRB8kF0WfX7ErbyTxKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofHIyOVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofHIyOVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1DEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784561913;
	bh=8nSVi0PqG7VYXxzkkqwzlUfIQvEOPCZMveTNDtLYBFg=;
	h=To:Subject:From:Date:From;
	b=ofHIyOVJ5RNSs2/cc0JGXMOmISReYYo3o2zNmzbEngH2rg61HJRnB+CbJiAPuQAQG
	 aW7cv/NoE/95sHHASbaVSGLVow8BUdx89jMpubXIwdgMwdTArJU4i7JLbmsFtiVYF0
	 xHajWgN+9kQUkJi/2C+GpUgfpZ0O969gDuCVgYeiUj4TylRawY7vvy/eDlGCX7Ey7u
	 AICsbuo7RSZz9c0Dlqlr7sXRg9PmPMzP/rICopOV1QyYVW+mIKSIYguj8Liw2dSihI
	 KDF/8IuIFBjN4+Yy3bGE9UHbBm/FdNNcb4K586Adnq/LkO/9k82w+AdnLKpJZKxWL6
	 wnaoiB7nRXZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C29C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456191368.16466.1067040947217228670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ecb6efdcae8580984132009e69c49e4e6e5a453f9c98e14e00a3bdc300640d
Date: Mon, 20 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784561913
