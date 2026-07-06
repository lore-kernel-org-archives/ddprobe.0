Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1A1422555
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783349914; cv=none; b=kpnl/OpfMBCVROW4Y52wWHGoKJAkAfwKiVZabOKjFp1S6LUNh+mJvBQkSnPIwFWykVH8cvI9HEEPZ3+cLt0X6kyO1+hB/xBazF4Ei9segH9XiEu7hIaBCwXSUgmjA48K6RZcMVPyjR2H2AzzIki2Y4QmzRTk9Rba3eLgztmrulk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783349914; c=relaxed/simple;
	bh=UAqsGWeSodCcTulcUeSpX56x5dTMtG+txaBIjIt/SOk=;
	h=To:Subject:From:Message-Id:Date; b=NEkCZ4up+FwPWEuj+DKwk6C3vwQCaBqiJiQsfDbvxKbKFmdmylgoafrmkAkGzt2++mu+AzQ9/KoLcczjymd2ALaIXep941OVHLY9q93aCZhJfZ4k4MkZvCuOpDi0Aeaq4Zc0gf6d6dPXyENpZiWnrnZBYoFjxhuF5pimsFZpykM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9XsYP2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9XsYP2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC781C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783349913;
	bh=UAqsGWeSodCcTulcUeSpX56x5dTMtG+txaBIjIt/SOk=;
	h=To:Subject:From:Date:From;
	b=e9XsYP2N1PCyc8tUYGV9PsxXeBGblvXoUhQQfvf24uSn9ELptxK0Bcv/kTlDbDZqf
	 8sD7tu/knzLFsuj5kdjpf7TtUMhiKaooUV5tb2yUJBbZZgpYGHmzkuVZAgp1pqILzq
	 tGSbSvC/uw7AMdRv/YuoMv3wtNjXwMYtfR5+AEyPOM6uDH58hSbjlHpqc3/GbbTBVK
	 NKErsybH9AphuD8gLb37PFr0HdKDID/goe1vii4WZ6JjE+UljhR3hrjo3OSzWcv8G6
	 Pj+zxo1XYWRg7cYzsmFrmph1zWVRb49WzxvgxmqtrVUq9UAfFidmnXiowZ8qhydw9R
	 fSUrqgem1StNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF07C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334991369.31942.10282640610910048246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f0dbd399d0b6231074f3792e1cb7db6c740cadcbb26df8be63d79cdef9f04b
Date: Mon, 06 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783349913
