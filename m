Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DF41C84A2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783225714; cv=none; b=adZI0R8heJhEPhQcNFSdj6lTykM+DWFmpElJuTR44zgQGWWT8BW8SUfzRriucQkWhqOzP9l5Pj8idJLobuGgI/uy7Dip/W2G83rY8i19aSwOBBeE7T6AYeaU1KNwkQDi9iu4rrn6/Aep0icmTVT/7WODarLuPieLXrZNsPME8i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783225714; c=relaxed/simple;
	bh=BEYfR3uxsa1S4WLmhhxWpZiggNHwIn6MeU//MupcRno=;
	h=To:Subject:From:Message-Id:Date; b=EiZEE1xf+57k9LyqYXBJcONwEdEJaaw2ZjlI+ehh3NcTdTPW9WLrS85MPM8XbNKhpI1Z96QuV47AWJggZfOrsinjmio/EKeczokzWTBWq0T5ziW20MD4RXNboHavFojSbc/0WtWdH7NdgAJMSoB1Fm6xnTntBtPe9L9j0zdXqw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCs9VOO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCs9VOO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46A2C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783225713;
	bh=BEYfR3uxsa1S4WLmhhxWpZiggNHwIn6MeU//MupcRno=;
	h=To:Subject:From:Date:From;
	b=FCs9VOO+oAEYTjR2oqGS8arIuabsg/DoG2JqhB62W59l485C1HsEsRdbr5zkDdblL
	 RoNkmhrtyD8few8T/JkFpiQrmDdbQ7f1hJMzvZWLKpI8Z34tobOQeMA+Eit+JxxmQU
	 0vzMxhVtiPXsdpcuqb3PLOXBSVvtHchlAqPfDv6fLsRO4bdrjp72OJshL9iai1XRWB
	 M/zBQFK3V+sKMjIKQnlMQ5+qRIHLAj3oKLXUKRNuYa+M2xE1EJ9J4VZCkbCtxzK//f
	 y/FBHzezl6LYqiURwHC3lqgbCZDWV0+/zQ2tBYG8bkQ6rSi/k/J8kYoSgs9dVhSCNw
	 WIVUw70cowGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0FFC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322571368.19736.16531331395344677375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7e4ab3c4df97fac9d70e9e9baf3881423d30b78d031451437d7f595fa71b5e
Date: Sun, 05 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783225713
