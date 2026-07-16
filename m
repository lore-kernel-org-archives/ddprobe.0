Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662633B27FE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784235514; cv=none; b=ph1K6N27cCBy9HhNYbkBhU4fDWLSlj9JVOfHIpyoRT1PDiSOl6M+CH4n2tBI4mksdSucJhabPl9O3uxKkWywhOXJd/A5y/5qLPM+j/UVFdaMJbFG/hLf6xwuS5xknsKx9md8wPYVB4ij+RhKin4iUpKfLTcmEeUPpjX5o/X7OO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784235514; c=relaxed/simple;
	bh=dhlVDjN3L45oqEblCndkJFcY9lGaHULyrtW4URFFugA=;
	h=To:Subject:From:Message-Id:Date; b=p2Cj+6Gqnukkm+pPt1jSs3KSLFDL3PGjGL99zl36ca75Ta/MAl4dlPWrS3ABB5u0pmKue9nbpzMENAOmkGriIraFxZdXndwCj8REpiRro+HcVuqGapzy7Wqkx9RbW13LVnR2B7ccuVCKs0djx/82VVaDe3yaHYYhxOZKNSMTFAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RngK6MH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RngK6MH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3D8C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784235513;
	bh=dhlVDjN3L45oqEblCndkJFcY9lGaHULyrtW4URFFugA=;
	h=To:Subject:From:Date:From;
	b=RngK6MH9x90ERwc5FeSKYHFkc/I4p602eWp5m5aA1vojb2j80xW3FOqkNjplSYiio
	 4C3HWq1Zhe0MyrVRMhWtx8++ILbtvW+jTX7XpFozyOx2GvG5YY0om8BcFgbzTf2Gps
	 4Z78Sw/w42aBSANUwz3XiK3N2dbbnSoPZEsxMxGF7RcbYup0/qSIoHkJx/r5QjjQbc
	 ECeUQcxvsr97HXFEB6kBsN0M4XjserilNoCxqHh6pHQbisBVHsqd5AxbNI9tahbL6m
	 WynoDCZx/WvjtYmDgJ3wBiNq1zgYTTSbaiOiYIiAxTsusfRAnl00791fh9vDxZGGMj
	 oBWXsOARfJkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C53C44514
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423551368.7816.5130689171914917046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49a2f761fd50631bf8ffea2d5698562f7e15b6789d8326fd7361c0fc866de18
Date: Thu, 16 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784235513
