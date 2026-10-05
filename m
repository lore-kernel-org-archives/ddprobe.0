Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D52947ECED
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791202234; cv=none; b=gS9vKxjRX3zofhyMKx7fvWvpr0aNILzQZxYO93Lxz7ByNMyRDVE1z+VvyuRbKe36WR2yhwBtkNREmCUITQvW0m10X+PGEU5CBLA3gk4qiJkMdJbGlvD7daQakN+y5GsEAPO7UGTcAlEEnMBfEN5YMvCvZo9eB2RO92vKTgKjCns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791202234; c=relaxed/simple;
	bh=ywhhqvy0vd046gSRb+GZ0ALdzwRyLCIBZ7mfWy45DC4=;
	h=To:Subject:From:Message-Id:Date; b=ZjpoBxNYfzu0Tubd7GcoqC0FLStbuQelETt6RiS00PaYKQ4iJtYTRQ7Sns9prDp5N5fWoIn4+JwPUIOjYTNPrseKNLk55GLPajC7oTTgEPqsyfQBvzPaEVOCvmpomWxFxiWguFcKU0BOxGovsacbjj4W46uDLzhtCr8VW3WCz/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWKCd+f+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWKCd+f+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2441C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791202233;
	bh=ywhhqvy0vd046gSRb+GZ0ALdzwRyLCIBZ7mfWy45DC4=;
	h=To:Subject:From:Date:From;
	b=YWKCd+f+VQZC6wQbDkIRZYPtCcnwnuMmUsdx3aCcbXMrMDMFCGSUDJMz43//NdYhE
	 L2fYLNe21f3cb0sN/OMcBCjTd/Lf64nw6Tp4zy0MzqZwnEl/xaUXk96PI6Ac3kuXhx
	 QuYjCx/TAzWafq+4iip5FxKpdvW091y4s2n6Bdx3qkJ4cyUVcpej2Ap0jMHz2UXYFm
	 UOy90jhWplEnjMS/W7idxYW4oHxqAKud+f7I18UkOIwPZJiwMyR0ZzQAPKe1C5JKMn
	 N+kwaFgdgu95THSmOUCFvNDa606WZlsM9UrKXA1GeQKY9YJecgolfFkKezHMpQ8ZlW
	 +udUILyOJ20+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1008CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120223368.32294.16865549475224715947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d83e94fd5079a4759a256f6803909cb568ca5bb9f728c5f10e89f103870264
Date: Mon, 05 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791202233
