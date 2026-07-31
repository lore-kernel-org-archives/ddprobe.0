Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4561045198A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785516634; cv=none; b=TLkVg72fJxx0Qu3Ef6Q7OEWQkMXmj9luVUWmkb8F5K57bqOQcl6XeNfqcuLmWcSNHKYJcQVBkLyTn9d2VQD9ksGwk5FJvLU5EOvje6BraviiOpt230RTeytRbtNj2hnJtl/GRN+2c0so6lli9oE6/YSCCLuYWQoB3Nictz/N78s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785516634; c=relaxed/simple;
	bh=Zw2li03JXboSzl8efzB/v58tRi5PbIt24hWq3+5GPyk=;
	h=To:Subject:From:Message-Id:Date; b=IkjRXzX5nFUywNoI9NPljdIcziOrk4p04WsDHvkCizQQOp30zDCyVMwcORGKKirD2NF88qWyl7IZiICcIPnP6cHRNVbAtGw7coF6L9yK1T3xGuhHyBK4eCBwlienWXeD27d/5kUDSyFvoG7tsClhKefNwFpggHsDTps8Th4xc74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/CV5fhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/CV5fhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E96C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785516633;
	bh=Zw2li03JXboSzl8efzB/v58tRi5PbIt24hWq3+5GPyk=;
	h=To:Subject:From:Date:From;
	b=e/CV5fhzK0/RYfhacoGZTzWCbruoP9MOF6TeLXOAcfXcFlAzWZptDJLz6laXZKenu
	 Qvvu5ZDelkjiDgHh+owlANNhCrDFeEFZnYy4dWlx1ofZ7a839TFrnaVCmeWhJeyDr8
	 AuJ/zrvWD4Dv7YI6RVkPftFUR8paeMBpQd3aqrcpGIcMRkQDl1VV0vXGty5qQ/5R/Y
	 3AaAK9cAbp8rHQUWUKitcciAFeqM+QVGWWAX7tMiLGlOKSCztjuVl3t9dWou0Wl+f2
	 2JddFW6JS8x+BxFIbR/DCHLZb5KvvDne+uFQpaoaqfRwkNQDGC5uUa1wdmWuhfjiW3
	 gwFvfa0GGd7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE210C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551663370.32713.11576957337598836458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245018abdf04ebc8e4bd0ae7f89c5001bd246005459d335e848ae687870922a9
Date: Fri, 31 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785516633
