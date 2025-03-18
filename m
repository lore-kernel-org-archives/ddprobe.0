Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEAF1917FB
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742320194; cv=none; b=rYOb1Dshvyd7NSgTl/IclrgSrXi79QyfGTRGshEXFMKFPxQSkL5gd3UCX/MAXZcpnHz9fl5qfg9fQxThmHlSsBfgoV4Y6z7GqEgsHhSM7NDBSGx8rJSQ+mddlDUPEdo78YsxU50bpbNzklrEeWYza7MAihbHQl1qugAVwgfBeBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742320194; c=relaxed/simple;
	bh=yRLNOV5YQYgGq6+qhHvMDf+ZVvidgAD3uci3WfgwyFk=;
	h=To:Subject:From:Message-Id:Date; b=iWZP9OB3mEcj4jbd8ybasBgdrnGtt23hSSl4A1Grd7P6stjkKaoRE0FSeA2HlttqxnX2Ik6jCfXGTj51yhDipzuUoOmAiLDy2E2tJYCrFHw3vn1MYMyqgZHZ835ezFao3JOp+CP8BoTDt20/rV1+LDr+6sjIGAhMEKrQHvZZ9iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRN8hV4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRN8hV4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5877C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742320193;
	bh=yRLNOV5YQYgGq6+qhHvMDf+ZVvidgAD3uci3WfgwyFk=;
	h=To:Subject:From:Date:From;
	b=DRN8hV4pEgb5i6Q8PFLWi7R6HJTQQNA7XCVt9PnDl+GVsncksMpEFW+SRqjdPkxE9
	 mUDJkVe/15DLq3qMjca2akN8nRgSLicLroY6EdcObslTKwNP8qmK/azzuRg5fmZLA5
	 0F/uRCqkQG4a626vX6AX+kRc67LlnV3wD7MUYZfOqL/IZpkBAmNepDTIvzbzqpB0AJ
	 gzYLGpxpIYebOzlC3HJj9XJpxQBeU0h/z/2RZkqyU2GqHeCTPNAo9jdUDMcWsRiny0
	 ACkglEYiXIfCRwC3CQYgEoPA1+fE16S+L3CqvrwGxjErb5KYUMDwXZRlnwNANPFr/1
	 1/r9z+CC6EJfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D31AC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232019363.18557.8725044985817261864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be744a13f4ab76e4a15c260f734301b9a6ad37fb21d6f1e51793da649656d00d
Date: Tue, 18 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742320193
