Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B96B17DFE7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767776634; cv=none; b=LKLD7ivbU5vZPKxXDgp0K8NVdIX5AaUZfEQ6NNlmWljSOV2os2mX8Qf1gvTA+lt438prT8CTQoJ1jeYIv4SkCwB/VRMDHaH+hjzccMEFVAVSz5lE35U5YMHG2OFA3qx9Wl8BnF1wJ8d7AT796iPdvnpjlArjvwIP3X3aehkv8O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767776634; c=relaxed/simple;
	bh=hg/Zx7sKEwAP5tZj/pT5hTbIyFTmhdp0CHEwNTvHIkM=;
	h=To:Subject:From:Message-Id:Date; b=LJ1fAhW/W6xR4s4IzW+JcYKxuF+yUCGikZZQTrvMRoS5tN3C72W1t0OE+xVMddIib09ANwnlijziCVyUJsBZNihPt0K4Z0QEGSm2WK3KAH/dyUL/HArqV5jd0XrIz1g2kosI0u15+rYYeIIxBeiJNWd6yA9ZVWldEJNVEjUe5+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcgQDRkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcgQDRkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E9C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767776633;
	bh=hg/Zx7sKEwAP5tZj/pT5hTbIyFTmhdp0CHEwNTvHIkM=;
	h=To:Subject:From:Date:From;
	b=EcgQDRkXASMUy1bU/DImLbVTeaaYWHIFo5lRlCA+eKKBQR64whGk3OPyHZXOyomZn
	 cnem53M8rhgaMT3bymaFWjHG5mBEtIh/Pf0kN/XoQfbgJ+fTGENbEdRn7+Fyr8xqOL
	 8pefIK4vrxn8p6MK+DzFSHxDXX5eBhb84SmuUSAfGcKKidzNQSkMlxVofieQ5Scx/b
	 F92lvW2Bi3o0DGQT2HXl7AuoEsMMTpmjKgOrJtKX9FH0Kb2ytypDvjv03lsuMm25T9
	 rbk8MjItNkWCqPV7ESfT5ZqLZBMK69pQKVa+CWFaaj3xyuM59BLGLQjPsMZYJSTI0z
	 7E1J3mDWz/rrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CDCF6C13
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777663357.14291.13254599796163513635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f1a4bcfe8408faa9c8568271cdcdd9b0a3607de7904e5779a1b5aaeeba4fd1
Date: Wed, 07 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767776633
