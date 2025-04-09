Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36549211486
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744236594; cv=none; b=Wgu3Lt7OzGXZiH5LbUgsmtrUm/WE3omUAu4nQnUgC5uv0uS9taTpXizYcnsQU3dNwVsiP0wmxV7qObBF5XmNtQOK+h8SRutWKW/BuAwH5nYoGa0nKJiJV9Urdlyb64gG8x6WCsXr3XzD5xq4rcVvpMY8AIvPrmO00lcpkMEytvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744236594; c=relaxed/simple;
	bh=KlVCNi9d+zKpJLCa32AU3ZMDFQmmCNtJq4lq9ag0eBo=;
	h=To:Subject:From:Message-Id:Date; b=RRYYOI9GaGCqinAHhu47AZ5x3EBYNQ8NkXdOzpPIZ+AJPmjXtIKDIig6fGWiXNOvUpZlzFflwjqO0z932SvXW6rPwHNHFOpSNFq8bKZgFEN6yvscok/aclG5XFC8Imdw1G0L20goFdtzWWyawIobSYeUYakYTcFvqJEs0HN4TEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeQMnxys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeQMnxys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14C4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744236593;
	bh=KlVCNi9d+zKpJLCa32AU3ZMDFQmmCNtJq4lq9ag0eBo=;
	h=To:Subject:From:Date:From;
	b=HeQMnxysNXdCRU1p8TKsusQyQfUG82iPC/8kB9EjabXCYEfD8dHaw1ZK34J1EGsDF
	 AuHlUH4V8ZMrGu5X1gk++S7O8x1s9KSKVVkgjBOeWgla79um7UHFlwfoyYcGsmGoXM
	 BlNDmM/F6vly7w6nJzAFD0fImtgM8mzZfw2akwRvIyYTxTHPGdFrEPRoeKd0avaDwa
	 AYnv65GpOteyVmSfvb3BoGhArtzDM2rkztSmdpuqZUj7OBUB2KKZF9/e879poz7xbM
	 Sikj8QC3+i7NoWtoexOqjI46dypjBO2Knt3Apmxwg8xltCfckBth2GdOE0fXPv8xeV
	 Jk7/eA4kPfAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B288C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423659362.32532.17834508633896881277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abd819ae8713f8d50a1aa9252c90c86f743edbd4fb45b5f45b99c684cf716d2
Date: Wed, 09 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744236593
