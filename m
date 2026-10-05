Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E454C4F7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791220234; cv=none; b=Hi03hraMqlIAP70Fz2cI65MnwXR7/FefOzp8MlH3MjtJC6diff6gys/ox4/YwMn/YZlE0ogyBB/zX8w7sfpptWbT6RagRg6mZXJmRPxl9nJkkBlkXlajCbV+v64CV4aa0KJsIlhOK70FCD8rFaP3ZW0fndSk+TjjCAXlz93Bk/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791220234; c=relaxed/simple;
	bh=cgdwwyqGDx5EEaQENczCLDAoCY8rWocpmwtNumlHSQ8=;
	h=To:Subject:From:Message-Id:Date; b=m6IsKofRiN1mUr/mWJL/MQQRgnIPXfUnD7X4rvlZKjvEzvWC5hn5Pi2TGyoRKNjccbojx9M9aMxQnO9wZ7CoVPbdXA7mj+KXyEPt617wsLzkzx2WrQcr3wrIGdc9SjM6/1Jein24EQaIZVottqOvMM2YMabO2+x4dl23SRiRyDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGF+tEGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGF+tEGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFBDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791220233;
	bh=cgdwwyqGDx5EEaQENczCLDAoCY8rWocpmwtNumlHSQ8=;
	h=To:Subject:From:Date:From;
	b=uGF+tEGEO4P61cHLh3hAPv3tNEb8AUurzxTAE4tbDmYkjpItN3im+aNVTWflRCe15
	 of8naFYnFg+HVQjnhkk7KduBH3fD6GJa4yhftynx0hV1ouvhc2z+9sJFc0T+12SC9i
	 OK30vU3EWT1HTERM3XsM+YCbAi9uhgodJFcJFOIw4lVDDVHPc4safeObS2tr4oue1Q
	 8h4mugTdAfYNukeIZmtja+K+ko960q6869D25Y+Nt4QXXGU+DUn+jZRz0s0s9wF5MW
	 V+nlOtv+N1YBeuYZkFWCZthXEFE0r6uEUVVhw3x9/05PF011TzgA0LtT9AdWHgz3bu
	 OrUs4jTBWjehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF48CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122023369.16394.18049660783974941294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f15ce53be2447b7c482a8fdb23acbf098ef7c9fd4b3d93e5290fbb4a265d12f
Date: Mon, 05 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791220233
