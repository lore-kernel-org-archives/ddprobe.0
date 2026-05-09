Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C7288B1
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778311654; cv=none; b=V7KKCccat27UerKwa8G5RIJYxNolYfn4OVXn8O/yBA7FN3dU7uTfRRCAO7wGCmbN6eKKzsQV13GvcrR/U62UdUMQn2OmhP+U4iA5QvQmgRqSa8ulu/V6dFyVysepGqYHoy5zpL2QdDDGm1xA/zvHzg451iwv4A1bG83qDIZHziU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778311654; c=relaxed/simple;
	bh=r68jXYBRo+sOH7O1A90dvKHVLrKnbbdNdYlAWW+N4g8=;
	h=To:Subject:From:Message-Id:Date; b=GT2HGtMsasT1rnja+Zj1mGDf5iSEprmG+8CcFhmsMJ4BJeuwxFy6+3SVgvh9F8NXzI6rkwMkButWpbkF1ceF2ias3oTRE64iCvIxM0mdQTgvOatUXTUB3JL4+gsbm2oeYvdnRlh71c0U2PdxZfOP51TZ+xqHaO36dSCZRxJ29dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APClfw1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APClfw1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD73CC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778311653;
	bh=r68jXYBRo+sOH7O1A90dvKHVLrKnbbdNdYlAWW+N4g8=;
	h=To:Subject:From:Date:From;
	b=APClfw1hAbenf2XDcrckQ1iEAJYQLY28U1V1IWuN+VH7br2WAFAZrhwS0yqu8IBbT
	 ALcCQFlar9SiFDQKpoSCbwlXzZj9VsaduDCv6UOzUUgz8Q/ELh8ZTYMuH7bK7hpjbU
	 BYRzE0ClFsu4krrpEheNQwf+C/sd0NBWl1TAGrL4Rc8kc/YrWypdu61QPcMo/7t8OM
	 yj7UPr/NOG/535ztr35c/NI+v70INELIDJeQirc8xoI0hridie9ZQse/CqzSIrK3gk
	 U0JqCs6kPKrnJZY1B264mgBvszDCFvzvaYhdReuJcXABAgAXMg7O9JfeZB5Ni50hni
	 ehjmEAuYIkFVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB862CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831165369.25900.16046572151035294761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e255fe1882b04253508cecfb416c16d8e1cbb6657f8a5631a034fabd7834e5b5
Date: Sat, 09 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778311653
