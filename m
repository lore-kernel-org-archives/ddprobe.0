Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30972FAC12
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763000993; cv=none; b=XkW+6+2qPGb3ns6F7DMS/WZoXPXdf0Ct4L8mqWL8+hMVqf2Kyxg4x+AXN3m89PeY0RIhyCIFoF6j0sPAcJWgLyirsYDpw60haXAnh+DVtrJ+qoJpoeap8KWhpLLyQwSRWU02ZvE8YQWw3OI7VQ53XMxflSYF+aA9tnhL3nW5Uz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763000993; c=relaxed/simple;
	bh=s6TFliPqpX86oK+IVdMObpMOmYkUaGpRCiB2kpMRLDE=;
	h=To:Subject:From:Message-Id:Date; b=OSLysIgij+83TZ+fMORDiJSkciYZLWK3p1FEaVzRcyQ9gHWk5nwoZzbPpwYxpJGTqa1oSAlCWJ9qVXB/5CRrqGGLRaU5PZ5RHAdonQAxH0eiX043yfWrV7NeDAojzEs7ElDqd3o65jqG2oanSXZwDAN92aEr82b/hlBfKzLWw2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZb0FHXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZb0FHXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1715C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763000993;
	bh=s6TFliPqpX86oK+IVdMObpMOmYkUaGpRCiB2kpMRLDE=;
	h=To:Subject:From:Date:From;
	b=iZb0FHXSF/JrFQUGXigjMKxwls2Wgn6LsmoeP1OeKZKfStp/5LEwAvl8pTKnPjTNX
	 Co+QVl0nSsJHdp2MJlkMOHiKdJF4HXy+s0ZZtxV5DLi3sWkx8bRFCdCOCeKHnCVq2S
	 9g+9khkIAqvjAx1pAkj0IFcGYFkZBsOx4eXlSQEUz4W5G4JigjLNEvRT8M1PdmoQHx
	 w9lanVlUdXSgpm/IiGc7iN0C3/LanxYh84BZcX31hEYN8wFNxiZLabwh1oeV+lTIYK
	 rkRoeZjfvb3tHsj2C0xuhQin8OIkGW/4kAOY58YpWttlJ/4ZmvC3pAk1wsQhmcjPQR
	 UjNYWxe7rnaXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C8CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300099359.3795.1069411899504557846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98434bd2b691dc9f396e474ab890f5bc943139a188e9feb91ebeaf5007404029
Date: Thu, 13 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763000993
