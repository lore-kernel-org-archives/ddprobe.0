Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F26329C35A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774014894; cv=none; b=bTA8kXK/9EtG9LznNyofL6nUyf1YQWRh8uARC4yufZ/r/1e1VdJmyLiEvAEnQx7kJtRnJxKyPR6+4iHGphcTOF9LgbfYS+yNWuZcOhXyNGOGt/fFu088qlvZckNjRlJNUX2r7I0YAPvvQe8iLMzNgh/TvabTHiYw2KSRqmLZqVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774014894; c=relaxed/simple;
	bh=X3fCOJjzt7gLksj5rvtd9yjx8BFdr6z3XlFmx+SsXfE=;
	h=To:Subject:From:Message-Id:Date; b=P6NOh2u4OzMthAFicu0kSzUTL/tOqaWW1a58TZFng6fgt8qIGFqjk32k4H9WHn/umTnb2rnpPC9R1JK8c1gDSNr3kuJuTwrOGJRZkTTpvsyXfy8PE4RwqfBCE/183KSq2on63DlI0t0C+KN09a18kx2AQ9NRuIbJYx2UqN/lIOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjJfQPDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjJfQPDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C1EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774014893;
	bh=X3fCOJjzt7gLksj5rvtd9yjx8BFdr6z3XlFmx+SsXfE=;
	h=To:Subject:From:Date:From;
	b=PjJfQPDnJnZIAYrlaCUCuacC08Y9nSzE7kT1LAUOEhWAt+yg+R2Swj3LR0jgI8rjM
	 Ux14n0CMV0Xcavw1HiLnmm5+S9lpg2s0xXvwKRT8lOUsNn+Vj3fhfOQc5ZdVkduQDU
	 gQU7/eLbgjbqdSu+j7XxfRxdwLb9y+o4hH8A8ZuN+tUYVDo+qMspCibLwn36s8KTfI
	 zI6WToZoOz0+oRxRPp+F/gJjyyEs/Q5MiTaXemM+AJn2a609786XhJgC86A3sYSkVP
	 aJYoJdbS5Psu8Xq0bgy7jCAipv27aGIszEOSrN4+Vydmqa9O5RUUOoeaT91RiRRMmV
	 PTL168Hver7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C221098782
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401489358.8405.14743806709577311194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b73cd7782ec45721e22a698f96a308de7d6827b29fbbd03e0d90b926179c11
Date: Fri, 20 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774014893
