Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2631EB5DC
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744471194; cv=none; b=X5Eoz+ZbWjrGW0PXN5IXk24AjoYZ/886V3d/I1cuikSUuVGItGE3kgOmdARLChAVv261+vCBzCPDBklHWTtLdUsOsjZb2df0L1C53LqqLqUCwfUu70uSsKtuSbn6rZWEk/mRzTqvvsZ/BB1XukSvm4YjSpvuYLfbDzAcwHrvhCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744471194; c=relaxed/simple;
	bh=pDsllxvIwcBFgVbTXMkM/XK8lSU8CMyo8KSw596Ilt0=;
	h=To:Subject:From:Message-Id:Date; b=R09rDo6KrRid9qURjam/Y71T8RIiY4ua5ObiglEGXfGgt5Xr2PUQblMczrNgIFCH4aiacnnl6R777l0sKlicXBuQDBmwTa49NByLFS/xOLdYcQA4s7Rvs2uYcS1dMpoRW3/NAapzHmS6PSdcAN4Ah2o7hNhFP0308C4q79A1CYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVRNKlO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVRNKlO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AA1C4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744471193;
	bh=pDsllxvIwcBFgVbTXMkM/XK8lSU8CMyo8KSw596Ilt0=;
	h=To:Subject:From:Date:From;
	b=FVRNKlO/He/x7FyItGGJo+HK8xyiGWGIOj5V7MrPYMvy0JzHG+42ekIOLklPpMDWv
	 AbwZqIOoTrqzHrGugXGFr002CxWJIMBG92/CEunTA1fQEJiAu3QHnUe7WxT+uBEQ8C
	 TtLjPZKW8ZjI5XE40skq7DSDAUZOffbd3MOApP4n30m4cjKlQpmp75PzTvTO7AIXt+
	 Qxgah/VHhD7XVS/Wsebt4K+Z0Xasx16L/yHlwmndIf89IkmwKx/XMfkI5B+XCtvBNk
	 LJup5xA67Baha0mCIj3H0PlvsAI7hadc7JaLF6+9MuhNymJ7tmxIZ6rND8YUWj4E/d
	 cnfcmGssqMn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B592C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447119359.28924.18034099248344833698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce542bcf9939ab50fc92ddbdc1ace44f10df26844255c19d4e6bdfb3c8497ea
Date: Sat, 12 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744471193
