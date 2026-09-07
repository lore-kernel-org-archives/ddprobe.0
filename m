Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3CA38A72B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788797434; cv=none; b=LkIlnFPa0q9iH6JfIWBeh8UBL3GQus1gFoQBf9D5JcUIAmdV4pc0h34B9+4yY4yVFWzodC6HLqoaO7xjSBQEFP931DUEUPHsS0JHTjO+fWsmSUZfDQQCOKT2Jp2dqX6xT10Y7iEyN0wg2RWFoSiwOTRvxCyqKj0Lf0P9822E9sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788797434; c=relaxed/simple;
	bh=0yEaJqL5q6kq+QKhF1US2fHHEKb8T6kR8KQwnINAt0Q=;
	h=To:Subject:From:Message-Id:Date; b=CjiB3FjlJcRC06uKX6a4C2rJLdTeIA9UB6gLzgi1tLBzcUkRbZSduef0OB+RHDfMr1nTGUCogJIlRHSO2bSH6xkWZgxvbDyTragKrGXQiKFw8BNnW6xDTfDHYJYTheefWqzVmv2xrV6WopwDT74Qvt3i9K5KF17zBfQQUMHYCGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i43euPvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i43euPvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D9EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788797433;
	bh=0yEaJqL5q6kq+QKhF1US2fHHEKb8T6kR8KQwnINAt0Q=;
	h=To:Subject:From:Date:From;
	b=i43euPvBkYXNzbsQSZ3iz58/BDeRgaZ4atrQlrW6N2zbu1insrqE3S7tGC11ED3Ny
	 Ho1jjnrHnoJKVc4OTevpIybBMkDEHsUeruXq/QaCC6u1bzvrj2gtET7pfdiFm+Krlp
	 VNjPOW/qPYMg7DGzvg2L5LPnT+8SOyFuEEd8JE4nMeceKskqso62G+v4RirH8PxhYc
	 xgF3V2QH5fcpZxV8yciynhQG3/w4gh6zg+68JEgbRDCLCiIYL1cTnDqy16lwT4uSw6
	 u49xfl9XGwBFQXvclGGxL9n3EKtlmTIUBIhGSUN44Yo/YPgwLLNV8Tpz5Ya/lm1ymW
	 V1Gxz11fMDaJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E0BC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879743370.11496.14352709890006103490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639c035915df6af84e2c165e77f662c58881c6a47b70963d605826fe9c109ab4
Date: Mon, 07 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788797433
