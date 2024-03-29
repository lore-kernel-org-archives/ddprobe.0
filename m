Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E223B78E
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711741097; cv=none; b=jxDKJPgu+NdaSz0ApJbYthrL59EOz9r+eN8SD4/NFgmUpUKFl3bGOrcf1Op+cjdCqa4gi2ic6Uf2mIeOsdPPvoT25/kAvKINHCqPMKXzGQxi7jm+fbE88XmAefmHtP23f8J5tuho+7tetmfwhqTUdc1O57QSvC6ibujPpFPDxh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711741097; c=relaxed/simple;
	bh=4fyY4ipRI4/AIYMfPgOO54GWrxkQdr2k0mai+mirN1k=;
	h=To:Subject:From:Message-Id:Date; b=iLhCBMzm31VTkpJ1VxFdYJ4+PBoLO3b/x/4WVJ8fyT87Vin9Gbqplpcv5CjWJvJIuX5/AFnCWOPhhqUZFsq8XUjwtEwdso7rsb9JrOxJkJwRDIzwK35Qg5QoG8rYw5BCeIfSneDZCMKCIzH1V3kPbUqDci09S0sWoSwqxnfhra4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTrs+7GC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTrs+7GC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA01C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711741096;
	bh=4fyY4ipRI4/AIYMfPgOO54GWrxkQdr2k0mai+mirN1k=;
	h=To:Subject:From:Date:From;
	b=BTrs+7GC2MGvYUjNAr9UYT3Oef4VHhOIXgf9HK4HCH03iCwcvPBfyPQqkmoaz/4T1
	 NxrdofxoE2AgrDRUeyuNcq+eLrkaDDtjlX7yu0jkjUtVZxW1c0DdQeczpzvJSjNfza
	 zkL1sCQ4nrdXxdYmQaiJ2F++EyUh8C8T+NHoiC/5VSx7u5XiR04fI1plHr48u+sJE3
	 Zr+WQXT18vw3ubNwvwpTIFgypH60tVwY0WH8nIEcO59mSioE5aBVKqRp5OQC00XY+l
	 qKXxacsqEsBrvUmdkAhM72AFIuQ3fJAM8e8Y2VaS4rMU8PIV0Yk8sohzs2o7y0MgYK
	 AqK/Mjv2QBT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680CFCD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171174109639.16972.8928693666915780766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94af85a38d2e895a2d7addb0198b070ed1c7d482084b1111800bdad4ec259e3c
Date: Fri, 29 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711741096
