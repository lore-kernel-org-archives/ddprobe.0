Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551D03B27D4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788104434; cv=none; b=Pgyqx7sLZQhG/fMXUQCSfwkeJbI7D5Tpyp0rqcw7fLupPsyBFDBWPSJ/yvcOaTjf+m8Aj4lXCj/kaDGE14FhAd9R/10YnI7LVzpivJZpZwzOy/NZ+mfqf28EmFFm+t/1VlB/imoT6s2Q4VDfZB3TEuiQ2+B6iSCb/DkEwspykfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788104434; c=relaxed/simple;
	bh=rZZC7DxhUEaMu5gcXFbnELgFhoFSik/nX8dlnSZOYPQ=;
	h=To:Subject:From:Message-Id:Date; b=CftG0WRDDb2ThOPm+0HPrJ4kVzprrf9NBz/2E+ctUMHmEUByS8GoLuiJGt8Llikq4+/g7eVC7rXmWFY1lemOB+JQvho04Txe4SCY79nn0EmkQ3hsR0c9mIvSTbVkbF39GtCGhhJ5PDAW1NW6bdiMqTStXFo/mCuvEcgvkpdGP10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baWI1zLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baWI1zLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E78C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788104433;
	bh=rZZC7DxhUEaMu5gcXFbnELgFhoFSik/nX8dlnSZOYPQ=;
	h=To:Subject:From:Date:From;
	b=baWI1zLk/jFp4tDufxs77jA6sSF9Rp2IvL4oCMI1XqNDqtGR+akIs16Me8v7fxdRp
	 tWefJ3qQHXvdlUnuQ7pStJU91248dpl7o6X+KWtVf3Zbt5U/FPlRraafjKe8AYrTJA
	 WdSl5VFDdD9pgRZgt94yDDUSyaw0knEWcsqjJyZ6jC2BSW02W97HX4vGI4HVbxvV+X
	 k3LgX0HO88a69YdVcQtMt2hSGSIdhDLfJjIYuNVi9Dq8uXVgJMf/DroqtmcZA4Na5p
	 km46EE3YZcnyVYmqhcZkNR1xNROGtLMXkl5bN2r3SlzpPirja84tEGuN+HsYR3RDNF
	 p5IR9FmvhT47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C16C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810443368.7018.13992887972862040459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45f83823529a2ae49bc80a2bb10f8f20e85f8547d32d669201a1280a430801b
Date: Sun, 30 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788104433
