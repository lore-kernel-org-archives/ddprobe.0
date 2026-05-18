Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D771346AED
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779129034; cv=none; b=VqJg0UyTyGcpJRALmtPQCEtX6MRTl6+9nrVn5WDXu8Bn1LAQ2f3a5jOJeUuEhOe1fPzVeifN520GuloTTXY4AVFeL+ejCbBY7CAoPJ0NtIABZGPzfDJiFkhI/O2coGEqlht4VDcdcxtuuWvpBVCIGpFuJOqKFHzOfx4bY5VSZtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779129034; c=relaxed/simple;
	bh=X9g+N6We3A1qZKgHPBZ14Y9hFsBq5/ulUG3BclV5NDA=;
	h=To:Subject:From:Message-Id:Date; b=AffoTwrLJepoWyJvTT/9Z+QcSEv0bxLRX5TM2nAC0jSUkt+agzL7q+LLtqijUl2BwPJLqy7jnLHleXcFUy2iP+K7lU74QxrX3E1JClE6OcCZaXECauBCTFGaH9OM4Ft/szsfA46G3bwXSsWGTMUKBPppyVGMeEJRy1tHjnUvEB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckqYUVsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckqYUVsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25D5C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779129033;
	bh=X9g+N6We3A1qZKgHPBZ14Y9hFsBq5/ulUG3BclV5NDA=;
	h=To:Subject:From:Date:From;
	b=ckqYUVsmhHV47fm/GDQlNUKaR9wQUnK92DJjrWKY/FvywF0JWz316cgg/zzEpRkts
	 ja+2IFbXjwy8j2GmSIajwVxD6PV0B/DITEyob8OgKhffteGh3T4hQnfvvCbZsM0q8e
	 O+vhXQJNYASTjP+/XOldUz2sOKfWMuOF5zgYYhih0uB5rDnNQ4xRZKiqZZ4sT4ZQRY
	 D4CA4/eUwMH3TtoZEK/Qkw2z62br3L7KZ2OVfESD0tSZKjUlevd8Nay0O3V8VUQsiN
	 3mkjlRZC2FRscuSKHuDf4nWf3m392qeXBMYrP33d0zJePo813tEU2toDWU7ZR/e3TQ
	 nmJ2V4ouvlzCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8ADCD4F50
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912903370.2303.1880182933951729003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1351ecb1b2baddd4066626e92b802e1d49ea5709a63c3c73c535598c41e8fd5
Date: Mon, 18 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779129033
