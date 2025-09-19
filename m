Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A6832038D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758297594; cv=none; b=ebkFsUdqs9IcuzpT3t+6bpivz26uTBjApj5iMt6AjJfPvlONjO0A5qh/1UBtpyc1tkiGg4zkRl/flOzhD2wEUJRpK78QiTaNA/0Fnji8o31SKmaoWDk8SYs8cmm1di7Ivi+xUVpuHN5aIEWs9vZAdhBzSgXEqmA9ea+6lFtWcCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758297594; c=relaxed/simple;
	bh=XCTTquUwI3vqDIqJnMdUWcL/nufv8FZmmqJ1eemSVg0=;
	h=To:Subject:From:Message-Id:Date; b=dmTGd+Tcv5SaIqVV6GKEvSLgH85g5MaMB9kJ05etZGsI+mr5Ow2xQpyE8G5qj+l3XLbL1dCe+FmFCQZqmQBb7bFa2BE9h8FeDTU6m5t0wMfjsJco+JtjnjTv2emq9QTYuT9Y5wB4wL9rIiE6STnsxFtVx3GEqOH9hnvxSWMYtos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtNWYcCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtNWYcCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E17BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758297593;
	bh=XCTTquUwI3vqDIqJnMdUWcL/nufv8FZmmqJ1eemSVg0=;
	h=To:Subject:From:Date:From;
	b=TtNWYcCb/Pk5V03Nq2/2YYOtBLzIHJK5+Ald+fXxfFqtrmIe8194ifdRLPPxPiZlJ
	 HmeGEa8sw0Z4Pkr27l+Odg6BpRtwvNatZdQVlEGdfI86l0SFVXB219E2mSB2aNHbP4
	 euUR8eFOng2Pq2hHPaFbwlQlJ01T6PuZ73UN9Oeuo3OWDJ4g5qO0KgfP3iTmy52wg3
	 EvOdt6Wb/xk3PtiyO1LuG+Xwy3/sZs3pzcbq99xVGnmSiQxB2cJdidmT+LWBl8uzKr
	 zF8Ner3z6AQ7YpTZ9r51gHo1z5MLYHg5GQew03Tk9w3raicHvVGS6dlrNMfHw39Fu/
	 xfUCnXZdKl5zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B5CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829759357.10991.8074891649820724331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91ee6f3e0fa060c80249c30488ca74b5e99d04b4196a2abe2420e97a0926042
Date: Fri, 19 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758297593
