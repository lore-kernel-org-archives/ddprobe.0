Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C636604C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781086534; cv=none; b=eJdZ5PBwY0K4GVM5BY+Q426aKL/TVS9QwW+DA8IlVjkSwIUTDLyh92QBbdP+AibsxX5d23G/jKti2bwlLwgcL5Lel5ak9KEINzYmHjxY+iha45iqG2G1bDOXXSgYPXt2vtI5FDBbdRtMXLVUNfGvfbdfIQqkgolV++b5XSW3dSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781086534; c=relaxed/simple;
	bh=fUNknqZWHNv6BAHiFEDWsZnvdU0gG8rm6vvjwyt0B3g=;
	h=To:Subject:From:Message-Id:Date; b=B7ECjE3DpR+mxNXyvxDZg2a7noEbOKlC64c7TtoT2PDZqOPY/PsU2KdiGwv8oSBeemiwIS18ZqycXWxcbcSvtjOe0j8qzEDZHAVpqXEURR28qsJcPNxp9YVJd2EgATXDNwVA9TE2ZsZ0MumoVYh+7cd1K+b0Vp1S3Yw8T8A74A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlnUR7bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlnUR7bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5C5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781086533;
	bh=fUNknqZWHNv6BAHiFEDWsZnvdU0gG8rm6vvjwyt0B3g=;
	h=To:Subject:From:Date:From;
	b=OlnUR7bo5O6rBzp/MbKT4mmEJ0C7QBLL11yckNZ6Yg065YK/Q8yBr3na56mBfivyn
	 SdrxrRBL4EUUbQW1vR6iGYvCHO+1RlDWj27yl7QUQ+uRYrc9aO4BIisxniivAenviQ
	 /VOciPNvSJrdCjZ1b5oKK+m7taACrUAZ0y4w+sFh62fkAnq1tWDahB8234ORDUsTAX
	 z9+fptiPITFxyE7e+8rwyXxVJ3VGpEbqUyxFmvMgSbfTNGw7X++sLVzFeMuO/rHS1C
	 QqiS9L3Y5q91z3FvoodY+FxQteCEASAE/NfGRFhV5JwzmRJa6A9fU3hOq0Nq77kqyw
	 YFK6xOll44qmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89E4CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108653368.18888.16335125176131895406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd7dd4cb3fedde95f6f23bc583909ce205354288abaff3675a99db99292c550
Date: Wed, 10 Jun 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781086533
