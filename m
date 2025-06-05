Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3991DFF8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749154794; cv=none; b=jRV3GsxnYw/EvDTLAEs4DhWnUApj+i+ifKODJmDHxwUQpCyFb6BmYNhCs7tt6Cqw9x0M2Slv0IBbPlsH80NTxGgPdrpvUN0/V4rrBbpobTcf0q9xTe68ACwFnxdd3FOwe2dbBWahywMu45mmYa3mhTQo/9tjWPd06U2AkboYGuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749154794; c=relaxed/simple;
	bh=rs2T7UNj5y1l9RVIHbMb4VJRrnkjI0UCEjZALwPTSD8=;
	h=To:Subject:From:Message-Id:Date; b=IX8HXlAp3Jd5BTWYFDikKh2PmRouk0eFVGBxU/BIs0zuKe6Aq4gzXkE4pwAOsPRU6OBs0w2f1N1kaqHMINKiiA+GmX00oxOmPlZzIq9V7o4aoCb0NDkvU031b/ncP0bNjUtKceNCYrQfT5kmZO740mb2M08yWcFAWj9LvPwS1AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/HD0TUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/HD0TUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749154793;
	bh=rs2T7UNj5y1l9RVIHbMb4VJRrnkjI0UCEjZALwPTSD8=;
	h=To:Subject:From:Date:From;
	b=H/HD0TUj+RC2wBMy6RlXMIqxU6f5jhXllPCHCbTwt2qXx7hreNjxGUS7HTavPpXbY
	 zSgvR3cNJwpkNxfEGOG/+9k50LO6MSOI8aHTQ8ocvjKW7KvnEPkXJ/HZ1yktz5jQ1s
	 q/70WUs/P2dKtlTcoeWhiVhJ14jva2vrBoG08AbSrsLDNO+CT1xYi+fyeKKa3i6yKS
	 JQaJIE3TZTGCYVD1N4rEZdce9YiLmyvo2NVCwf77+p12NQxD5+VD2QYUvkyGWKKuEQ
	 yN3XMDOBogDB8LaiZyN+zFihzWtPAwMwiV/dYaX8O1e7h+EJhUg7ImmJZzvRshXxYL
	 ap69u4qSQe6bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F987C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915479357.1822.10962202433678951329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d1999e26eb25b59a64d7888ccb81772fd609d02ad38283f4070e31e54e379f
Date: Thu, 05 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749154793
