Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4543A168B
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792293634; cv=none; b=DioN4D8mnIrW/5Mo2e0SH4rRKOf0KdTE+famv3Egp5qj4cJX+P7Ms7kw67R8r3QfqZUkgqk0IZ06UDg1fkDHwDAfyeFPOvym7L9yKiyBxdwffRw4xTZ7cbkP8SgDYX1gKVZJTxIPSjhxraXPR7FnspPZKqh1zet0ltYD5y/Bk0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792293634; c=relaxed/simple;
	bh=dqhDpSH+7KO2edx3kGO+cDMDqP+3zOhB062m/HMRvZg=;
	h=To:Subject:From:Message-Id:Date; b=sQrykK2403Q1I92GAyuK/+bkklIbn4bm4YnxsUAK1HuYnTjnSBTLvTUvjUfAu4Wz0o0VxUfOG1/XWsPjt9SnRZz7y4idydtdTTURtX/OeE9liaGr0dN+afXgUZTWI9rnefgqAc8z1mgOCNT2OXaFpPHh5YZVA6D5ZlcAQmULBmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdU/wmrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdU/wmrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA63C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792293633;
	bh=dqhDpSH+7KO2edx3kGO+cDMDqP+3zOhB062m/HMRvZg=;
	h=To:Subject:From:Date:From;
	b=NdU/wmrBOyBEnC43DlEJTEJgvIDHgayX1H6FV0AUBZ0+f/r0VgfJjZLPRFAAGLZnL
	 H/soJXW9Begc1DPBJ6duOWQAL3vMO9aAjX/AKOGNrOTyO1K3gbexm+4Z0VTQ3pWuUU
	 Toc6M8xtJlEl8r3aIcEBz4nEVjUV8KNZIj4JKsGEt5X0VHoWZbv0T20CBoLg+EQ1oD
	 U5p+ALSpTm/RjhloiVvArpAgfBI5QI6fdCYAYLMCa/yixWCAEAfM5Y3kPQwahg3o8G
	 d4f8bp7Ojm38iIYuTfKNymuhiJXNWVxT7FN/TW1AMHGB/MAdKRQBpyYd1DoQzYzpFM
	 SkGAsOI9JEiGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9851CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229363372.29657.15583116009112493130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31cd952c6a8efb6432e8ebe2e61d7de4ef166efc826ac692a94b9d47d8a48b9
Date: Sun, 18 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792293633
