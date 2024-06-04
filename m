Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5134C143C57
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717514783; cv=none; b=FnLoR8bASeQDnwj05MSsaZvR1If6KLln+ZWnunRKO7gARapa/JigMUztPCbIsksCVA0m/0ZrwAXrb3PawskiX69akjbLeM3SXREKbeP2gxz3pomIyJEflIdNUFKRtQSriv/f4cgixfEid6o6gxZMAYZgTGX2SgF1Rj5hyg92IC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717514783; c=relaxed/simple;
	bh=zjusAZ4GDi3nH2uztsnVnDsM8v8ZQQg3IEsjYy3HcDk=;
	h=To:Subject:From:Message-Id:Date; b=NLJdcoVBhx40LYDm2QhoFvVCAr0hN2LjnSbIMV5jj88zpqp+O1UKR1yogm1kGCwCrMCHUI1GR6adn7tQzLCq7Swlm7PssxaF9LsjyUaZJljhgy2Tvd91v45Bz6CFkZKa+QAfBsJU9nO6T1Mj+WH7xick1u7tFh5iRVZ2ShBdY4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i09GlB0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i09GlB0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9D5C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717514782;
	bh=zjusAZ4GDi3nH2uztsnVnDsM8v8ZQQg3IEsjYy3HcDk=;
	h=To:Subject:From:Date:From;
	b=i09GlB0wXgkcgBI3Nev16buBuJXt7R5G/OVrIH7hOVawn/AmPcqoia5iBr2C0Wy3E
	 CZmNp6f8bab6lM/z6I9pAE5YdJ/+LIxG3KDbIUigOC+piPAuGifHBwRZxnqaMMUsJR
	 YlL4ebuaC7kO5LhMjMHnFo/RTfQQh/jIgZX39AzM3JrAGZpVcVp1AhNc6mDMT06C7H
	 47QcqUMNXrGipAfRmEa3AHq0fYtl0RvfeHSyQYTf5uelaURvQ9I+vA/ij/sK/Q0OSO
	 dLxg145b3Fz9ajWo5hD+Z5oajnyIgdtCxhBlEde4Wb1f84NBT0aqntQs/shM3LZGZ7
	 CoBgee/qzE/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A4AC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 15:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751478281.20602.7919498894614789959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30de09725eff9ee497fc4cede5425aacaaf55ff531bfbf6d3952cafeaffe2397
Date: Tue, 04 Jun 2024 15:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717514782
