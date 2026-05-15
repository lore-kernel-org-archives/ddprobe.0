Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261863FA5CF
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778832034; cv=none; b=m7e2LqMlsGY9dmveazaTF5eShI9j4l02oVljaqPmfqH74JothwEBX9indCKoM2HDC+ERN92wCaupm8g4GVvHDSOpxBXVxM5sdJdboQkLN/FvkRqP2OoH54qcOh0BkHBK0/FpKrZNufGVgp4jPaA0e9woKx+o/bVCN0apneEBVvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778832034; c=relaxed/simple;
	bh=z7srK73cAWs0z7NIzRbe0OS2VFAmQ9o6oGxERpQBwus=;
	h=To:Subject:From:Message-Id:Date; b=sEt8xHFLsak+oEngi8dZod+8/d5lnAIBPxVElDxO3GRF0YB26AlvQa/sHRAVZViouwMcgKYmAYoYTyJKk4wNNCKDfTqpnQHo1vzubYuDN2Iiodnv8y4kq3ZXe4yCTHNhWLSMTiteEGj5S+oE8hY1FKHs4oGmPiuVdjQ0MdDh1sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8+BTnNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8+BTnNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEBFC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832033;
	bh=z7srK73cAWs0z7NIzRbe0OS2VFAmQ9o6oGxERpQBwus=;
	h=To:Subject:From:Date:From;
	b=S8+BTnNNxq5+iG5tlk9PtwNn6SUQTAlA8OnTlJf2Aiqg9fu0sM/9bOqlF0pAqHKmP
	 pyloeyPHjaVONMjXuvhmYV4mc1DnsUObJ1KJPjsnwg5RSm/6vlkiqBGLpiIlSBw5A+
	 PP4THXcY/FxnYS9Xru47SXJbatoUMBRxl7XNQ79b+krmX3eQo7Vh5uOHYE7GKTiUAs
	 r0p9EUW0qXm1pZuwa6ZoRY0VoUjqgohjb1kH2WCgcypC3xNyW5DV6aScR18LAs20cV
	 UGhqmaTDXvGC1Bwn2N0punO2QPCXMiAAInCrbxlBc+uHm4V2fm53B/0YXMbtF/A2+R
	 /q+9Wq5CxSOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F5CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883203369.8638.14571267565123012126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3797aee9934fadac1a9cb99ae46626b1fe4c5936c02b2bb7f9b0fe4581377d1
Date: Fri, 15 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778832033
