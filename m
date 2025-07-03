Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EE0288AD
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751550594; cv=none; b=AUnsYAykbsJ8wgOHUfCPDUgSjOXHaznLDERLRk8t5BfpjWxRwLbZXW6WSw+nsrRRYiRJgWHuANJfSIRyseKXjMN5ZrdBQpFGqvl1A1hI5aiBDkGZiP/GezPFiIALN2pbECrImSRa7TXLH+QNnyOo2jTtonTOfKpFIEIGl+1/pU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751550594; c=relaxed/simple;
	bh=hv3NPNu3TQq+BQuB1tfOUDA+MyoE33S+i4lYMQb59jg=;
	h=To:Subject:From:Message-Id:Date; b=R5rUsEG0Kv5DQMJeDGGdHXQBKHZ3N1pXfv23ARGYUaCWP7JxlrBolTmhMiVl+UKNCjbpOsLG61PLZ0a3l7RcHcYKIyc6B15DuZ6zotrcTYVECuMfQXDH0Xg5uGjaLSlQHTBtarOzxoWUtkA3J3HfTk14ATcifa/m/pjcc08Ht2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHgQgTqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHgQgTqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CED2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751550593;
	bh=hv3NPNu3TQq+BQuB1tfOUDA+MyoE33S+i4lYMQb59jg=;
	h=To:Subject:From:Date:From;
	b=sHgQgTqq7+TByxaVual2hgMduJEXJg+DjJeVHDWSr5GbVzwtHlaTmVj3yPD60HOAI
	 U1XEoxHii1vx8boQ9ExuxFPUsNnvtGLH2UFfJ/3qpZBmV8tQEsFh+APYfVPSMTxUPs
	 7iDNCH+fC00BU5WA2Ag9W1Tr7PE0pfkUh+8o6JnULTdkenR9HE8v2bFxXtd4ylAkLI
	 MXuJOIIFHIx8LNejlXeBB461N28vQwR87nweG6lh34MG1iohwQWAez5/ngHD10Y4tQ
	 Lj2mtJ/tZaDIOv6O4GjY+ItEdsPlv2qqmCOQUbpt043V+KER3j6F5/QxaY3txiNfeA
	 0M2GDRAorehMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1EFC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155059357.22304.9428531806389091179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2eb8c0f91e0d8fe037f4a33a00560a733910c0355a591206a8dec5464c332f
Date: Thu, 03 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751550593
