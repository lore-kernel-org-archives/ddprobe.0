Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F1D136348
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749118794; cv=none; b=GwSeMr/NKtHuQ5UafCW73gtmZHv+aInwY4483aFzguOFvya/UtUEYvXqKtUk4lbsvvOn7VBaYdH/t2sDPmOUv4WfO005Dg0i68YEz04v6hMt/0eO74XiaaftvUM08yokcSg+t5Cw4oq0j5TL6eebeXgjBydH2YmNh7PlR3ZDu64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749118794; c=relaxed/simple;
	bh=O6LEub0MfErxW5RNz0IRDgV8O7DBFDTWOmqiEz3i44w=;
	h=To:Subject:From:Message-Id:Date; b=f0tf3dIGst2UwlEoKfDdKQkOAxoC5OMxEss2JlezJUeOh7XEO6lPsh11KpMWqO3R9N5YYJE7bStboU/MkldgP0TNHuXheXopURFfnNkE8PlV0fF8KPNhN5v0zplgS1v7XA9mvPUlL+QYgcwAeGtmdN3m01a27nW52Mb4vZQ3PnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=St5Mf3Kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="St5Mf3Kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E61C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749118793;
	bh=O6LEub0MfErxW5RNz0IRDgV8O7DBFDTWOmqiEz3i44w=;
	h=To:Subject:From:Date:From;
	b=St5Mf3KbzkgCN5r5ipTyWQQP2baIO1f8vHBSnxR8aLI5VkoIZz0k0A0oBZ5FxM/c4
	 nA4KDxeVfAOGYUCUGQ2oje4QR8UtbnMHyoG2lEHNCOdtZW5HaaoNQJjXwV/X7kSZG/
	 uIZLM2n8tzqJ1FrlQngfxAwFqJJlkMq21AvHBnwJAOjZsiAmVl9mWjtKwM/MhYgL/j
	 tzweX2ehLm1pXRNWynto2Txq7ddVtL7kAXY/1I30hfjVKdlCuM8KXxdinLQeR6LxiP
	 l1Oin4pih8V9t0Yr+v+ju9Bwo7f27yEr6uw1xAbs6bXFoSGoJzw7PXXUIrZZA3GlY0
	 K6cx86V49RQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DBC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911879359.16300.2770714281578021135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18890810cd4924dff29b6c8cefc5312f2bf1a062899c52b3f736835e7ab9239
Date: Thu, 05 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749118793
