Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C63B3B42C1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784134714; cv=none; b=PRlenEFbQRNJ5X/8DbEb0SVItJlC3fLtXMJn7tGKRFmH6HldGMWkQPttiF1OFJAzX/vCRQbmwQLbHkDPZGX5NNW38UHOSwHgVslG55JYUlORjBvxc9PhVP/zqSBWOWHjO8IWMlvQcnTLw11msSZnKS+XANcyRw+KpPo80gvgMdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784134714; c=relaxed/simple;
	bh=CaGAOrvCUisQbKWkxCHQWMuqmYqcVAuW7c1bMVlpu00=;
	h=To:Subject:From:Message-Id:Date; b=P8RGwytg7qKnQKh6IL1ESADkv/0zguIX7PTqNPiGmi0oFL51sPsuL6rSkUcXwi9wIIMETaIjzm1BWbQRdibgBRrVPij0XZnsTCBVp8o4RHQY6AvjeXxnWJKKeEGsUjP/lPWD2ib++YeQGGVeBd/fcGCn1yBJ/GeEQqQOTm2z42I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h65/FBqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h65/FBqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A35C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784134713;
	bh=CaGAOrvCUisQbKWkxCHQWMuqmYqcVAuW7c1bMVlpu00=;
	h=To:Subject:From:Date:From;
	b=h65/FBqO4/D6202fYsGCa2EX8En8VjxUYgkJRKEtnGidEb6pj3ejFMbWdiqBFO4G6
	 vh/sXYcbktwp3Wo1fJNdMx3MexzLcVBrQBFb73cYkhAfjobOfQc2s8GIOIzE8TjcLa
	 AWEDgmhXX3qN/OzlWd4cfw8/xle52Ek/6XkrNKGJPQv2ujslhDuq8MKgEu8bwLWo8n
	 5S+Nxdgg9HFE2O9ddwM0t42qBgNUPbHNgVqjGciHMz5NCJ1fm+JBIQmv65nMzyEoTt
	 nOPnSUsVRAoAZ8q7XmpiJ30PnSHyphKgb5V3rR+NRlQb00MjkCq1N5iVgB96sNX89x
	 DXBxPHDwSGdiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7EAC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413471370.19110.2517602151505500170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ac9c02f523991916b01e1ef3ea9b3c7c6bb2cc22b991d8c6d6022b186c7595
Date: Wed, 15 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784134713
