Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012A11119F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711755497; cv=none; b=ZFjd0QgaML1eB3y2fke0wWEdyaQvZJCQVi3PJUgy2SwgN4q2NtV3PUC7KVXbwZkpGfTdaErduZK1Q/TZ+u4Bo9Y4Zub2c3u6RneAlWc2FulcAPuDGqCkVnA3CiNSAj94fsMdu1XOihgD3Re3A1OtQfI+8GvumOQpuxNB3jVlNtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711755497; c=relaxed/simple;
	bh=afOeNKJKXDZ/ORfWhvTRaJauYI/wcllEFvwDkcZ6CfE=;
	h=To:Subject:From:Message-Id:Date; b=bIMDHa05PtQBReSwXLOQ4vMecl/mDqiPOcHGlxIAE2FUiSvybo+xyvlllNrlj8OOHwda57Zyv8Av+8jeQDCmBEJn+I4IdKjtf/HUXfQD2yp/cPZyZlEzKsbuco3JquwRFSGq3zjfpz6J8qlkVMZzG8V4ZKY1ARxZVRQ66zItFm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovl2/y2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovl2/y2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774AEC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711755496;
	bh=afOeNKJKXDZ/ORfWhvTRaJauYI/wcllEFvwDkcZ6CfE=;
	h=To:Subject:From:Date:From;
	b=ovl2/y2p2UCAnmG6Z8EPC6a983I8EVL3CSBGn32+hkzoCMzoeAkFVWyEeD6RHSHyU
	 mHVL7auAVdgp8WXVSvXfHVfF6zOxZj1WtWUVgV094IU2QZeU/7jixJsjacgrNvYkY/
	 AqcXYYZAZkwIzNxMrpHM1a2x0XArptFEWZWLO23h2i6PLdjdW/V+rT32o7n26Ip+8q
	 6bW+AWkBCkz1TNAY75rOjs+/dJZJTTnFmKHHF/NJlfXsi3e200/hsR59ZfJNrF2HCj
	 KaW5q0Iry89ju7UOenf/T0UpoPkA9tUq/Bms7K2isIn/6L0qVOvXc6qfntGL8y0Sh3
	 CKdJmDbunm3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670B7CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171175549639.14027.14697993244422881933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d38dbd16553810149c0b6a78f14416b23660f31ce1c228afc6f1862b75dd304
Date: Fri, 29 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711755496
