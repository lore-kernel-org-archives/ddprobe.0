Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D9E6FB9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706234897; cv=none; b=FTQHkqc7uhXoaVIRkhnEpFrvdpgU372vcWAbBUfxYRledVCPXA2W1wmnHpDnQCU9WPameDi3TTkl6deTvJktVH/UpUZdr6ztmssrt+dvfOassYMgJntnu8sRWkuBlEYosxw0uIRnq2Sx2ZKUU26CMB7weeXdof9Se9uIstPCh1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706234897; c=relaxed/simple;
	bh=RFdeFpJ5JhcTBnjnSNsi3KMkMWrN3vCP8tM+vwnOGTA=;
	h=To:Subject:From:Message-Id:Date; b=AvyPBYRllHqlvjPMWOpMTgi7LK2yzSVjh1QXNAfuHZ1hYno98Qlqkr0cDE/XNhuOCZOJQcN31mgYmtYZLnY0D3iN75z4mKnGuFTzqLxGsk0nA7bZe90Rp3fOnn784w0uqq9AmO4Fe7vcsAbwCR0QrUGXDigwq1qe9sHOtYP6ZZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhwvkSkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhwvkSkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82AC6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706234896;
	bh=RFdeFpJ5JhcTBnjnSNsi3KMkMWrN3vCP8tM+vwnOGTA=;
	h=To:Subject:From:Date:From;
	b=dhwvkSkzrY1db0KT/bjET3myS3eJYHL08Prwg/rbsZNZ74XfQjgQDV5bgoCSUA7yo
	 34ApS2Mqc9dKZ36x6HCOYdKVqtWllMsmT8+JbcLPw25kvTYu96JZUgCuRxz4djZvJV
	 LzLvxwDHnE9SIEkG6SQDSdcNMbUhmxu15v8V3fvUVOWHHCZBk8uRRVJFwNq7lho2m5
	 UPXl/oHmtdJkbLYEhpCbibZ+5DL4TaBuNAaWxc+GDAhEX+YonyISlLXxFgm4J8kMl1
	 cBlXt4KO3dc5NCbvI8H+Crd2ALR40sjI1oKy85NtYjUkroPWqMM+i3zzhvBh1pU0SI
	 +0EGmNZ0cDKPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66618C47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623489638.11730.17452600087365662169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb468fb9efbbd478cc0a45ba1bcc20ac7bd9f5dea6d514e06ddda10c0152289e
Date: Fri, 26 Jan 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706234896
