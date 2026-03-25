Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118813CCFD1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774438494; cv=none; b=DNF9Du3QdWND1sGQGddTjHnT44Mx8Wnlka8SPEcFPdTluOfOUQWopCfesLrEpKfc/LK2SBJn89RYrRpGg3m0rfQQS0VZh+5ORYuhW5fc4K9Pwb4LOeibEGeVF5QjQSUu3ptJiWlNQT0wz9VIKkSzYVnxYyaC8E0nuFdyDKTEDig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774438494; c=relaxed/simple;
	bh=DbQGKWu+EcPIn4HuUCXJx12eNRbTuiwVk7CPGSYZxpM=;
	h=To:Subject:From:Message-Id:Date; b=WVbRJ4sDxet3COQm1eNp6gKPZGXXNNFnCZMU5IkVKnYtQDh2/wj9dfn8Nqn3LHe32wIhCAyzr4XNDsQlatmBVGWNv6Vm02VfFd7kW6bMgg4VmtUIgbRunxNAK8N6gNDeVbZFv2Go5+DD/FjmPQAgiUDoSC2sjQaLsVnVtrDVQIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5xGtai9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5xGtai9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A9DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774438493;
	bh=DbQGKWu+EcPIn4HuUCXJx12eNRbTuiwVk7CPGSYZxpM=;
	h=To:Subject:From:Date:From;
	b=O5xGtai9wjdlaCW2tF3FkUY4WPUiAV/kayksG3l4uaOeqmJiHoOp789SR+X5C0F6n
	 SwTvI/lQVSgI75Fbsr6cyJsHqPIm+FuO0NULUR6k8lblvLMS7Azle0X0CZOT/uRKdM
	 LWT2Iw85mXjEmCXZUbp4+KB29XYDA67McLVan8DZbiqDHcaInXavOVRvVqjniT8NQ7
	 lNASVulsXeqSLccWLnZbGaBlwlBN8jYqlbnGs3KvnA56zs7iOU5L+V5ZqtgmyNyEWe
	 v/qUxGq0n0lXZkpCyMcS3Wn2EUYwFXzU+a8niVKTRGkT5u2a2V/c3ixyOMwr44wric
	 jgnnJ8GfyT0Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DF103A9AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443849358.4548.14275449411763646261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6890ee4b9afd4b73c74ddc3a4043e34405d80e322871a96114afa1cd149a66c3
Date: Wed, 25 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774438493
