Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B20F4499B4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783628314; cv=none; b=M5ed8MtZQnm4EHAaqyaYD/IfxUogQSCPMV5jqWAovwz2qffmptivflrez4HRD65FkamIN79uIgIqIvIvlr21KpDL57BN1iOOf0AABMT3qelWtWxkjRWg6MsEbVJMygsgymW5h2v7f1WtVGCXp4C8G9yzNItZOBJsP72rA5DoEnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783628314; c=relaxed/simple;
	bh=qG/svA54SdYoOc0M9SBPYGrK9QLZajZlA2rj9n1kRWc=;
	h=To:Subject:From:Message-Id:Date; b=jhyxYiBFgWeggjmz8RihYrQWK2RIDOpkvPI2u5dxRP6kttDf4Dze3Y4JJCwDqxk/vy/HdKjMHBUxJc1WD9rEo4QJMQWfrdxUm0/ORGC1KFQCRJEg7Bjd9Rn5fjLyzrgLB/1FHxaKtcbTF4M470Ld/eBVQB6l52ZSGVH8yk3tIiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXkQ+ebY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXkQ+ebY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8A6C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783628313;
	bh=qG/svA54SdYoOc0M9SBPYGrK9QLZajZlA2rj9n1kRWc=;
	h=To:Subject:From:Date:From;
	b=LXkQ+ebYHUJsrX3yY5A4fCvzwiEMCdehEMv+EuWHFVneNNgSv05oYYvXjU00HwQR0
	 RYeO0FTcs5ylAXwuzNabPnXeH/PYlLmMV83kafVzldJabqCfAqoF4Dtq2VCJcXRvVG
	 fVUgF/i3NmCHb2WFgz2kCso+lAEdziFY8eeJIqRA4PcgB5gxAMCmes+UvkngLlzVUT
	 JxbVGoGLVkHEdOzFowjswR8IAtJOym7C+Lh2dH6qaSt2DyM4q723ev9KznB2E4g4H8
	 COt4SUs2ULOJCY+GmDhrJz6+zYbYmodju5W5O26f+yhtULk9hEyEcYwZDWZ82w8sd7
	 u792m4eisMNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7570C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362831367.8418.11231228318197990150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e957f3813536d9fece291090e4aafc2ae4fb62e2bf0edd1b6c0537e44114bfd
Date: Thu, 09 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783628313
