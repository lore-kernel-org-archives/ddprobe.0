Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E211EE7DC
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764282774; cv=none; b=dm5L6LObqbi9OPKJJFxc705EEFvL0MRFnPR5hmIG398WWtyYYp64YIisCX6fwqa94R6Qpv1ukvS0erk8DXyxlKTE6BatttYplUt+Sy3gsOL/eIuawREnoYQ0V0ksmWv9oA/cE5LoA60oXrqzZIdIjValWQt/JFdj5PA89qbO79U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764282774; c=relaxed/simple;
	bh=bnl9aVSaU4qyZjDnpiIktDtvYupOf2GQ2jcBEUB3ZlE=;
	h=To:Subject:From:Message-Id:Date; b=ZNULPeQqE3zQTP9IeTC4U8Q8pRnxVJtWA6KKZNNWDKk5iIEiN91EoFsFAELzTVclYCTWwaylhn+V5qpBsDRMWH3epcTVOMQV0a1NcrLT4kVeg6Lbj8UjcLQ+bSAQc8brdB0T1Oy4+ZbKWEOvKpJyGnuyEPBh2yZ2v1l/n8WWWEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbkB1UHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbkB1UHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764282773;
	bh=bnl9aVSaU4qyZjDnpiIktDtvYupOf2GQ2jcBEUB3ZlE=;
	h=To:Subject:From:Date:From;
	b=jbkB1UHg6ayWsZfOmUPSRMSNKNPp4ubPWWTI5iHo6QN14qCh9opu0Qo/S6Q0WCaaQ
	 PeU54nh9Ctr2FgHmDgKj7zAD6/3C8rrYOBMAmoQ5hoc8Jtn5fAbr4uSEWzdD+DyUZf
	 1PLJfaeu0uqZxV7DbGJSio4rXK4FieWp99nJF+QZ4yRI6yZxZ+kIJ9UKCo2yN27yFH
	 /wmmH6zUGamf3G0czw1dwFtgohgdbewrQckZ31Zcl8ZR0ZifW4uYlhsmweLFHjUmQb
	 SAiC/nVYmma/vfMk2tEj1MyzRvr/DCw8vp2GgDBKdLfbDxHYkYNSVyvIpOsJrvKLXc
	 OlHAQ92z+YoyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A23CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428277358.17151.12216552784262452544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6e67146af89162e65e9753071d3ded14e3052134f7151388f4c781aa1d8cbb
Date: Thu, 27 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764282773
