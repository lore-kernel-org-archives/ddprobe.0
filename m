Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6351E520B
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754546393; cv=none; b=onve+Z0mQMNTDwlOGQoLxbBP5mbmhWE3E/mDLi7lAjzId2i+ZGhBnJ6Je8FCIc5hljkgI4mjpa2PQlgG3b6Cxd+hI7zNciX01KSVhL4z9L7vN7u8j2wTr05gRwGi7LyS1FtIpWy9iqXJ/Kup9zZNZvUlAOTe6NQNTpNo5gnIOPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754546393; c=relaxed/simple;
	bh=ie7TYmAGwbpMpYvIfmE2Q5onfcPIXvNoX2RcpSecAcA=;
	h=To:Subject:From:Message-Id:Date; b=qa5VWRsWECHIY97h2ZYca/DqeR5TcMaTXMunQeMjwRpDzfq4zY6ni6XtmGmyv6JXbk2i/whylhEQF0cEO5xsiWAJ8RWV3TgMnSjBSUR0+2hoLaW9Hk0vqCjv7b8pg9PVdpgArEPbtHrTDSiLB1eovsE6cLa3bwhsFgCzw+Spsk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVRxpx9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVRxpx9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754546393;
	bh=ie7TYmAGwbpMpYvIfmE2Q5onfcPIXvNoX2RcpSecAcA=;
	h=To:Subject:From:Date:From;
	b=ZVRxpx9yUtqLYPoFTjKamikdabxgVdOdhB0yFkJSm6nJwMg83siPE744JC64kEiKj
	 k0Fr+YlltkJzCAz0MsKf74ByfQnJ68Og6PhoN4KvzD3C1kxo+vT+WLvF5rThSB+qJK
	 q5NmKzGI3n5YqUmZ6r9u8HGh096tXfdgJ3/Y3a5EjWGFQjKANkkHr26vpOsW0To4OP
	 5fn8cEU4TGXiuA1z5TiFZAZRzopFW06ZGHh61j21TVB7Ql78e8rKTPmLwZ9cv2EHvn
	 22cjvrvn2cbTFNqEdnfHaibRAAfmCOMfyBQiC61luyhzSpcF77RU6Id0DD53lvpads
	 Me0zprPLXy/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF0C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454639357.22365.17496867354937755586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c3a4657056264d1fa6aef5af416e93102eddaf2828af18afb1994917856d97
Date: Thu, 07 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754546393
