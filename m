Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A13A3BFAFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792214434; cv=none; b=pXN/p6QmWakUK9qN01ZNI4MjVWW1BV0sJJasgGX4dJeohvROVLsZSgl+fL6p3wN4mqu+YjpG6g0Pf/w8x3ybHM4LTnnf58VAo86CNJqZa3HmliRNkDdl3rF3AZs7s3Z+sjNEp6s0wUjQLx8MSJnUShIyoIAxBi2raIJ/s7as6Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792214434; c=relaxed/simple;
	bh=C7i66h0T9ZQjDOQ/d6Z17Z/Du2/KWe/q+2bk0RcrvlE=;
	h=To:Subject:From:Message-Id:Date; b=s+bFsKzzkKaT3xQNqdI2nuO4g6Xw3afIBc6RFwEiAtPtZiwvvCavYjhbA9b9Eoh/UR2XkNtB2Nm27Uf0vYFOG7QI86xkf+7tpPgMJbShG5yRuL0qLpEGc8NCcf0WFOhwW4qer9YoD0W663AjHceO0vZVCQWkecw6ixaBKCRWiJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiTaHedC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiTaHedC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE828C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792214433;
	bh=C7i66h0T9ZQjDOQ/d6Z17Z/Du2/KWe/q+2bk0RcrvlE=;
	h=To:Subject:From:Date:From;
	b=TiTaHedC3TyeSBHVgebazS75eWIGkmhCEOVneKDh8aUSvDLWtQfhX0DNNnYA4Iikz
	 7oK3n5GHU9uhz4aifvmsk4bCMmuZl9wWIElExTPQd/qYdh89aDoxwyX3WLluyqoSor
	 6/6NE053oTmeUZfa9gCumpWgqayJzOCpYKxxy/CkV1ABk5WWMX7mWij1F6ZbDNyMCk
	 6HZEmqkVCDesnQDC2r9TUQPa1X3reaBzOLrsXQ7B+Xe9ySh2JcybVPklxKdoKQqrFu
	 eepCkl2gw2E79BYSriRSzAsy65OmHlFRv5UMFJon/yAfO3MR9ShIZgKFDcCEMyMIpO
	 Hb1UStthgctEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCB4CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221443369.29734.14889259464501835470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157a83cf8b536c1895e967772e1438852743c58c288a2f76bc172af8f03d5deb
Date: Sat, 17 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792214433
