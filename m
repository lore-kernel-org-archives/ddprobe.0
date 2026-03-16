Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C889251795
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653694; cv=none; b=LQ9aJvLnpPd1zKu25R9JJ1jcUVoUhSHz0thvE9nVo1vCYSg54j62BaBtIZL+8Pg1nZukBSEK8SMSS1IXJQgIxmA0G6fzn3xfmdXzQuNijZEMzKPBIPeyw6EOCy4FTY7w+CquYGw7r5+GrVlwmqCN8ImzT119K5VWPpnFBvIup1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653694; c=relaxed/simple;
	bh=tQPzorpjHGMDdtny/c69K+cv643hr5K47pGKuEoOroE=;
	h=To:Subject:From:Message-Id:Date; b=hlRGHC1ngdjlVhqNH9pGKAHDqsCAlbiKGtBLJWMXD7WWVwojN+vTz/Ej5bUqiklJ4KVrJ5StDsRozw/ccMb+2py8yHqCNR+M+JnxzSCKZWFHhq+j1HkxeI15R6VkvG/f60Pse8/9KMQJPRR1QehJtLqFfFES26zdiJAfueqKjDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw8pkBks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw8pkBks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E9C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773653693;
	bh=tQPzorpjHGMDdtny/c69K+cv643hr5K47pGKuEoOroE=;
	h=To:Subject:From:Date:From;
	b=tw8pkBkspAsFbsGt92A7JorH/0xQbGciar8PEr3OBuNFCEs9hwiOdwvLuKvOwR44S
	 POsLAPiRXoxU4GF6iIXaSnaGVqjWebnA3ALsaWygu1D9BSzxix+PBbj1A2EQuWFxhn
	 E4/kEr6wTStAcv78nA0fewxVTVxd8GzNoxs5H+wN9zXNLDVDJVkIp7E5YWABmXipdR
	 S4ghsW8MfnXOP/eTVp1hW1D6qB54ITlxkNtIEWLz9FqAwFrbwD2DdqIUV0eVTPFHxh
	 WYxGxzgroKL6EacuTD+XvReiODyClDktI7N3EhVusQI/gIllbqoxLppKf00vxToNEC
	 n/f0N7hJuMuhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B5F46437
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365369360.22450.18284279954246119316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621923a144a59e27dddc50ccb0ba0249d876d45a6d25df76073e234f8cf67f6f
Date: Mon, 16 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773653693
