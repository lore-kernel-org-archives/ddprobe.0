Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C116487BE
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743404394; cv=none; b=iBilV1Q79CEpTmhXjgPCqcAv0VoshyI7V6kHeYpE1q/h+5kIEW5C8HAnmNrXspv/nA030YBUeJ73e+r3jYCdR0EKwDsgtzOOhQXD48QZBIhsfS1dEbHBvdMhWVbHxS0FkgfCOQoAaxnZe16P3cHZBRm6Q93O2BdXumv5SnGUi1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743404394; c=relaxed/simple;
	bh=2utQ++10bR9tT0j3OFK6UlhI1oz9vtXG7S7MgoACdPs=;
	h=To:Subject:From:Message-Id:Date; b=UjWz+IJvhgxqjf7WzkWWC1iWAVJxcygEOuuWyA9IWePzgHsbgzBTOrUqXMPXMeW/UXYah1y4wl+uefsdCSOUwgEbwNbK7c2Q2LkNB6q6XzU1/bJgZc8tO0jYKhfIbnRyqTQKajFd2+l82RS4PsrXISK6dhtECv1tdS5duyY3pLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVvK/oAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVvK/oAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9648C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743404393;
	bh=2utQ++10bR9tT0j3OFK6UlhI1oz9vtXG7S7MgoACdPs=;
	h=To:Subject:From:Date:From;
	b=MVvK/oARRz9IP17AMBqn0s2+yp9w7dZhpKRdktaEnKJBn0l+sEEGuYWRfhc4xTb/4
	 mzEA3aJ+WQJenzo6PbTYhaDAxRcaf2DOY7nphSx+nsXpxfY22gupMKwhT2whHqruCt
	 xvjsZJL+zR9fG50//k3J8w8kXb3JYYwtDzmfddTzmMPdEk4Sk53E7NBcdfSCFGl4lo
	 VrUmfV7hvyEJzNd0YSPmGHeX80bc6GsjEDpsh2vuhOTf19kBovsBRSGm2CmgQA7Rhs
	 jklQIByJGkywVkUqNBDQACX2NcEDPoHHRVTwGt0T51S/Dw/h/S56o/lDNtf2hohGOR
	 XjZeVc8dnnfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77BDC36018
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340439367.11860.3343356445798295406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d4da78c49a21b5f2ae0bf0ee0db46a22eee373a5093c8de4d8fd9593f9ec33
Date: Mon, 31 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743404393
