Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8324A2A61
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791915634; cv=none; b=coh4du6fvqOdCtX2piA6DWtRaZhr/XKMeZz8tdVLzKwrsdMNLqn4Uohf08dtTs+bmLfY1VaLw+qCKPsTAfxZuqTh9Cl+Gn1O4uD/NRiWiU8V8N3uNPFkMdSLzd7gOBc/3ZIE5nJf8eHFxRZ568vDglIrG83BDCHoSRqEC7CzG/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791915634; c=relaxed/simple;
	bh=0PgKj9Jv5NG3sxfrBf3RBLd/XPEkzG+Euzc2MduFTA8=;
	h=To:Subject:From:Message-Id:Date; b=UY5NJCPC5iq4ZO7QUBq6QM7goZGXjC9vEd2RtER19NpKCxZsVYyJfBwxf883IPtP4h/o0VKaM6w0S2Km1F41fwsFUQC4Iuay/GWZRTFPHDOCRoafwWo04N1EToT4tcq09SWMDoiX4HlIwfCE4IZ+1m+aKzCIXCJB1ZFTW0GCemE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bac9Cp7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bac9Cp7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD366C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791915633;
	bh=0PgKj9Jv5NG3sxfrBf3RBLd/XPEkzG+Euzc2MduFTA8=;
	h=To:Subject:From:Date:From;
	b=bac9Cp7cmnJCLd95FzhueVaEcG2U+ESNLDBy4PKG7t1j0qGrODxZmRSe3+vDISodS
	 jdZwXnMbTuztMNjDuKqG8J7qbK86y7cQB8x9KVS4cC5fbmXJ+Ovuo96EgP9FTFCqYH
	 VQ4yjmULr2IbbwpD1rlIyAXF0zQMmgJs4v32z7RZnCkA1zdqRjfwK3OlgfYUBjl88d
	 enDPRxKvb8qJ5Ac/zDVUpAc2CcVFMUjHvg4wmded6r31BkSgZJqPByj2UISyF5152W
	 /KQmG7ZdQTcwdzXM8dTBW0a0O1WIp7KmrQE64IPf5DxDWkvIG+l/9nK9ckSN/IsfM4
	 pSMXsqJPbZgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF7CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191563369.2924.14254575248926891567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34cce0a781a4c2c87cbbebc4e3ad4c21dbbfef771c3cfebcfd0acddb313cf31
Date: Tue, 13 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791915633
