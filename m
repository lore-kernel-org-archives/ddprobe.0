Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C173FAE10
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786051234; cv=none; b=hy6z0H2aV510lUj3sGpNwop/ky+cygn1OrYY6y/mj+XwLcoKREOyoTNCXI50XxuXnikh+n1ENzYyYz6NV0VCwjW7iv+/zMpIDpVndztIn1Jms32RXoPkj94CyyboDYePcqpNZX1wXhOKpXixNLkjnW1OOqN72e41mgCCBdN868k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786051234; c=relaxed/simple;
	bh=AOjG1K/rAYF+hYZcT2kGJg6zdWAgl62+FtUvZPMLVzM=;
	h=To:Subject:From:Message-Id:Date; b=XjkpmIW4U7VCeQyHKT3Z0aAEVVbp9dLuD4l835z8JAZDi0mQ4N1TohK6Tp4iS3UIRxl9ZYFMdOGnHimAgy48313veQBQYimqPaQdK+vNZpc8m9JhbGnP3JhPNoFujmWVHx6LXXBaF+67GrSNE0+l+26HrSwZxqlA2NJ2kWctJkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwJaA16A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwJaA16A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19DBC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786051233;
	bh=AOjG1K/rAYF+hYZcT2kGJg6zdWAgl62+FtUvZPMLVzM=;
	h=To:Subject:From:Date:From;
	b=OwJaA16ADwSBI7pJLS73fl+JMOy5RWI4UeWdA8MP861YKjm51BGwX92JSX+PecSO8
	 ue7+P5OwS3aS4OdAnFeJghg2Q8KnOFhHnQsCqO+rWgrvH5USF4O/iA4dyVXwttpC/U
	 dEKCctilcy5hsccsWSfeqLF2uRPZKJaRWF8IIZDvOeK7qfzfiDjUaovSR+eggf2q3b
	 r5ey9rYc27O04e1Rnw/Ilccgq8Jf7CTfMbkb2YZ8VARdDoxknvb8su/y1/u0F9+CtJ
	 T05MrgPhR7CHWbYDWiuHhoHzESm6GC32e1ThluJhRU1rWBfaWPwxZVO0lDdQFPsyV1
	 v0ABbvGoecUig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CCC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605123369.21193.8382982572237660460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d703b57a9cbef02c25f4c0ba9cb0a0a2e0df5d3d51c82853f29921b6f4506f9
Date: Thu, 06 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786051233
