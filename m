Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A4CCA64
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745305794; cv=none; b=p3FuHWpWzVzR6FWHl8DK6FLWBsIwgr/KZGwLDRB7KHzjEiWQGoy2RkNIq8AXXxcWO3QrvCuXcQQXZZ0m3+DSnCV7ogxjR3LiGawNIrjOBYp2uCwYkuVKaT6lUBFq1LuDTBJNlfA9vKabWu3S2uE/RUGJONg3qODyUUkRuaQJZdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745305794; c=relaxed/simple;
	bh=tK4oVL70RvgP0SfppIxSmhRSVbjJfq10I7ADDqESnr0=;
	h=To:Subject:From:Message-Id:Date; b=i84JoD+RlKYeBzvprOS3F3jU65H7wjIZoOFDzNik7gKRcCrZ2VdbggUDkNK2e7i08R6YGvk0Bl4n5IW94G0ARW6ZlOZKTaNloW4i1LJOE11+67WtVFg3BCUgGrhtqerLMtify8VBSxGPvaf+KjmFEBgTKwnLBe8BgTBlIVSexnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhgQL5gG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhgQL5gG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C88C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745305793;
	bh=tK4oVL70RvgP0SfppIxSmhRSVbjJfq10I7ADDqESnr0=;
	h=To:Subject:From:Date:From;
	b=jhgQL5gG1vHjVEJX3My4Id9m0284kONV7WKhmkfCik7J1CQvIYcHrxy69lMYRMos1
	 pWXM3fYVlGiJS0d69dv/b/M7UsGq80utejP+cjUmTiq1Y4yuktPQ2vra1sxj0dUFUY
	 mQl39ywodV0m86wq5uVgVN4LLJpONy2Naba7TPsVUqmOAqBYlkEv90bQBLGHBydkvs
	 M+sCSq0eyBOulNjxYXpdLL4v06sLKmKD0/jufrFaQGfXj2y7zLSbysJ5UQgrn+vQIw
	 das35FlRyJWcQiu6lX1NIL7D2C+74BZARPWA0aqNX+mNnGBZ2PcW2ozyyzXPRJ6MHV
	 tEWX6RmWVM8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E1C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530579359.3679.3100165015260890755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14622777d4ce4a855753e30c9a3f9df6f0ded80a5341f3700320daa14b6d513
Date: Tue, 22 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745305793
