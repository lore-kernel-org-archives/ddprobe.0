Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C9C176225
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718956943; cv=none; b=YN2xsTxLbmPcYQ4dP2wwGNm3idNzSK02jJdgmdDxX1g+d1zaeqguOn8gO2Bqx0IeSsgTo192HwXFLslh4Cx+riL+ORsCMiMMPZ1Y++tZ25mrklH+KMpqYIynYRIBDu5QkJhommpqWe5+rHXGKl+gM4Cq6lpFdbclVatUr5J4VIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718956943; c=relaxed/simple;
	bh=6WLnnDCudtz39kFGVQR+Emk/p2iN0ERRspLo84oLUw0=;
	h=To:Subject:From:Message-Id:Date; b=AOob9wfrw0uK9Iz3JHGE/di3rKCrdNxv/xLZYv1xpbrtXoSty7KJNnSS8WcGoZdG7ZOldW3JoXdMylqEmCmNVw7Ciz+mjT+gQ8uf4kw4w8yqmFlRPQ7BnGDTRiYmXYC99PhwumtjbeGCJV7FhIcMRaDG1owK/w9hWCgF50HyMIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1L2cAfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1L2cAfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B27C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718956942;
	bh=6WLnnDCudtz39kFGVQR+Emk/p2iN0ERRspLo84oLUw0=;
	h=To:Subject:From:Date:From;
	b=Q1L2cAfZjfVRJ1rPz1ehBkL+PcDQlECF+k5C5f09+odVS5453+9oGKkriph9MUcQa
	 VL9If7N60i129MnpW3f4satvJ2XB1hq+qGnkbDVDYn66Wc9f2c8V/bhMn29eeCQ6pf
	 /gQOPpQjJBxYB29257se42SzBof3eceUmmLMuEidCB3Df8C0Yu6pgdCdtA88WKpYbT
	 Vp8Zb9xNXdmmF5x8aUM97RLjj8Fuowe0x7Z6XqY11zjrlUEXQDDkrJYZGYespi8t++
	 rF+vFZLBJ0/XLTaq8qbcb8Phv0CMlYAfcU6m8a3At/dKg6Mp/02in38atHq9fOwtwu
	 P1IJaY/vnvNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF31FC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895694283.29244.11778433466057267878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa152896e80580bcc170a2f4f56e0b33ddf00ed8305fcd5b194e0ce1495a5434
Date: Fri, 21 Jun 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718956942
