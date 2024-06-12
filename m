Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109A23F8F7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718216903; cv=none; b=mBVlcrZ0M/BRE8j2Ld4XXqytHXOrZu6330/3NGXmrczDrgGi5pqsfl7NY7VfIXkBZDBlxkUgTxeh1VXsWqLw17MCVjET3iaYikzvuIUtcDZksZ6IvXrMZYOJU901zph5mibSchhpDpnFNwSGyYsvW/vI3IxMkComzMRN8TMFoU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718216903; c=relaxed/simple;
	bh=28JJTGJpfo6RdZDRLnrur1Uky/vjTfZ4eKQJxJdcoe4=;
	h=To:Subject:From:Message-Id:Date; b=PNFzi5ph1sA+UKP5ehHTkXlpEkspRPV1Ab5kVnBASjFe6vqsasHRp/jM2FKRcEQtvRs8CLHy4ukaOVSDRU1vKi23UODHmxaWFeG1NJcTob27vBR//cSg6WG0c3Fj0pdCpqJo5KURVutnaEiT1+3EGMo1eUTRvcgW4/dit8VeMRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goMCfjh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goMCfjh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4326C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718216902;
	bh=28JJTGJpfo6RdZDRLnrur1Uky/vjTfZ4eKQJxJdcoe4=;
	h=To:Subject:From:Date:From;
	b=goMCfjh6F4GSdrsqr6NuNYE+JCKvtC62zrrIZ8xQSpoN3qgHNAojUGwlHnuDB1fPv
	 xbaGmTQiTiAraFL6vSYrZSJq+zH6Zl8UPqlcw5lfSVUEh7ecVah4+EcVEkl8hY9+Xy
	 SN2D30RhKS9Z0A3LLPRz9XjYjyQ0WOSZBs0cFlwVohXOrfph0Xh8ZWOIKT4Jos3KWp
	 E+WSKcXceHUnQGr9QryW8oo4F4WfGdMQiWpGzK/aJMz03BBuFqHuen0/GpnzdiE4z7
	 6+EH3uN5/aviVPbVDMExlfzL1S2HbHGDB7I1NrJW33zjHIp4ak0TEnE0EIw9Q9OB8L
	 ZciiFtLH5p0jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CD4C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821690278.22715.16426178793230379018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74638bcba5cac816a114c560ca491a0bab45c48a319b6c46a090865bd2ce1bd7
Date: Wed, 12 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718216902
