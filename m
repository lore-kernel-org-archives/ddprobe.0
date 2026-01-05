Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0D033E7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767572034; cv=none; b=LQlS6kT03/RLiRRw53MpkAhZjOVKv2wnSNQtjht/2eS90qiGNTF/NAQ100CgDFYsNAsX4kR/qNp9KizvFo1Mkx8AWqGYBKXKC46Wi9VroCv0aeyYqWrbAQwHi+xqW4m32OaNxa6aEwrK7tP2RbUJk0Nfna9hxudTLRiQ3kevviU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767572034; c=relaxed/simple;
	bh=0lzjCJJE7ARV58g/eA/00GWAewIoVzm+X0ZrEr+gqDo=;
	h=To:Subject:From:Message-Id:Date; b=brwnu7k2lEaOzuf9vNVz6BT4RPdv2aSgxifNfx6KrD+czEMIYg1M4sBjbm4XnbGwCt/R7NI91qdmEYUCGXU00Uy0uRvPoQkE+nsxAw9IXwvxACYYTDCZDp1iH1s3TPmL9CWE/Vauzb/VM+ZkBoPgJbSuhWnC0o1NQ759QgNUMAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osFy9TMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osFy9TMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767572033;
	bh=0lzjCJJE7ARV58g/eA/00GWAewIoVzm+X0ZrEr+gqDo=;
	h=To:Subject:From:Date:From;
	b=osFy9TMNa5XF29H5aESJpXt14XGJV1VhORAhvJUeIZ4Dye3rzwQP3R35WZxG4rzzG
	 F49s1c/51y1RYI/CipaIjs17K/6MNqFLhwDUeD+cbaIsp9jysRVNkRVlV4hm1Dn7ak
	 vwLw9G5MR52n4nLyvd1ujAvyHLHEVYNN9FLvVhpRu13xqsYu39QauKT/eRP3q2DR6+
	 jzEJ9QZ6lt63ikfbo9HOWSr7NC4G34I4rp7+iZzB8QJBV3q2a7dux4CSZ6j7Ljn8FE
	 4fLYj6LN3ELYnk7NRghdpg32+lj7INJAFza31HGt70fiQeNFqgCmyuVeZWFG+Rbyq2
	 0ddySqJjbD5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E19C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757203357.14943.3804548790201264256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58fe0ec8ddbc317043846f09885f69ecb56c25be318797c938a28e473cf0e72
Date: Mon, 05 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767572033
