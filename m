Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37D1FAEFE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729013754; cv=none; b=iiNt7eAPrT7q7ZEHR2ZBcgKtJSfvOvehIrC//2JmJnyISLf8904tVtlf1Br87/65OwO7JDtz/RVZ8ReNk782p0wl1AdhwQOEIRsyS6zrRqMpiIev8M8GEO3FH2j+/o1EyNAz8vDoQCJ1pg1kIwCrrU+S9Lze1biEh2GpoOKaWL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729013754; c=relaxed/simple;
	bh=IAAqOt1LGNYHSYm+DD8rx1WWi5RHYdujU+R+5LUwDNU=;
	h=To:Subject:From:Message-Id:Date; b=Klg3mjNlCVPYotLbYakEBAK5mB2kwItHeh7gyOC31bNIQfNYtqECWy4MZodbTECQQFQPneHcKfWNN3PdEAa/qDVMFRZlrxM6089WQ/mxXFcqqdCuIMnkmqkyqqaoKBQ0j+UzsnWL1K/k5BhOrBmeL2sbs99AXsEJFfjpy3KLThs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JC4z+9yP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JC4z+9yP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF8C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729013753;
	bh=IAAqOt1LGNYHSYm+DD8rx1WWi5RHYdujU+R+5LUwDNU=;
	h=To:Subject:From:Date:From;
	b=JC4z+9yPvmS8EwVnz76l4aI+AV1o3xHj8Wj4D60VZ5Ag9die5z62IIiaPa6VU8GW7
	 Uf7jfDPtDSu5T/6rY7owHL7vQ4oOl4SFUvtBgsLz5HZDDHO5Be+tBh+7gFYzPczsfw
	 8mT9z2OobBmsge+GGy4RCWYQgXA7CnxQKxkr25b1dt496EYI4SBozHl+Y9bZsjJ5FN
	 VwXx13ZqLMqka5SME5SN0G6Nwsgd0N41JrTde2RvKO2ErgRopSa4+CJOYmpJoL1tTm
	 07jBiQXA26u8rTIEVPGcVHXZgDgqd16Wx06WdSytq2J8bYfGuQK9vf2tkDd9W/BP5j
	 Ky9B64Ux+eZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93338D1D88D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901375359.10151.10359977708380030263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c826dee25ca9875015fd4fb91c90151cc844e4d79128a201ede6fcd2bb95c9
Date: Tue, 15 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729013753
