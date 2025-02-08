Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4508624337D
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739057755; cv=none; b=jw0sMtSuU8wL7QpotWlUeRumauG3c69Eaxaa02OWX9lQO/O6NO3Nu6boqh6x8dPuVLrA+GQD//buvSF9IrDBU83Ke5UZtu7+X7ygwHqzT3yTLJ36Bouqg6+ahbRVdGSMyUiHpYkztZGCLGsFWlZhjc4Oz1xGHtiw1ai3KmTLtXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739057755; c=relaxed/simple;
	bh=ZKTrwhPwQ/pcBAuE6hcTPuVZ2NysjntdWyWAt+6+13w=;
	h=To:Subject:From:Message-Id:Date; b=tu6j0dTMCdMA9Wu+f9okDwjqG7KJeyg4u5WukclpoZaV4yPlxf5QN7LJ/igZfyqxQUpaukhjSKAk3zN0J3vka5tNGZ30+NaXM9VOdw1Xpd7MWmCe8vXiAN2b22eABBk8FpfICXmkE2q3OYWkWLd+QDFZExQ29BlGcVSn2q62aLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9GMic0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9GMic0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC4AC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739057753;
	bh=ZKTrwhPwQ/pcBAuE6hcTPuVZ2NysjntdWyWAt+6+13w=;
	h=To:Subject:From:Date:From;
	b=A9GMic0mF7vfkoK9SYLNU04guh6bpkjXaqa7oFigEqMIgjH1+X4pIiDG8QxheGA9H
	 tE/XN88WaNqqo5iSSxwTuXluiZKOaIFxKKyG5nISf4qVdiH8XLJvcTmXToGtOmHYUy
	 c0iY5xsVaeOSd+GRTuloHTFic7iHk8WLX7+k5N/jCSnT0DfRVK1xUTQ8Q4j6TU4fmY
	 Qh+1Y0SDUw14myVTk9ye7v8P/Zft+RLlzvU9CfjWtLmgqRpRfpqvgshFZ8Yk/WC6gJ
	 2WEytjZ/8iZYXyomRFOsqqplyfybKfTy4qYeTIEYryvyJbofLMgvzyIcfDbeAEOQe/
	 2PEoPz2oErtYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA977C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905775367.2564.6044673690096683220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0bbc84c5f0ee04cc14768308bd30f19f588d0a19942c233251a279be816ec4
Date: Sat, 08 Feb 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739057753
