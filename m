Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256DE290F
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753816794; cv=none; b=Y9N6ubv+DnJwQTAOW4V60A2EAAvxgSZtL5GxBAVTI+CbNKHGOs/em79ZSQ912d9otcTx1yA+t3GVFXrg7k+d6LaUIUmWyrh8Dr7M6wgqnvp0gXqUdnev5FhGrgXMaIw3SJFk4PEPRSXvzrNTDvioTRKPorwzn9kZ+Ud+NrqMYxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753816794; c=relaxed/simple;
	bh=hdUlcbAWGCnA9DO/9uV5cnlx47x9GgSZFdvuHyHacVM=;
	h=To:Subject:From:Message-Id:Date; b=mgEUxYrCfxyR1mSwllo4L9gAIrrfKLev4Iq0Ldkc6iKC6G2DsUKYAAQn259JtEdHebxKxJOA+zFlUu5k0/WGyPgPXxkDGj5cyU0X9ChPFQ5ApYS7TLQOAyWIixlBrs5WRJhfcf3SmPN+TiueQ5IsRXHV+3hrCqwYPDbV86C8sbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiqtksvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiqtksvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A958CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753816793;
	bh=hdUlcbAWGCnA9DO/9uV5cnlx47x9GgSZFdvuHyHacVM=;
	h=To:Subject:From:Date:From;
	b=JiqtksvBst4+jqlMPfRRUF2t9F7MWwmcgST2zAPJmPZOldasVQx+3yk3SXSOkYSAw
	 znNJXVwJdhsm9VN2BvMf5LOy+dmSRW+69U1v5qo0RxzsjIOVLkR1p8prNkD0iJgAQE
	 V6Zt8UJpSvWa2q3QEbQJ4RPZKw79XUq/B5dR+zvVfWtSlrWeqGECoQZ44ktGQ0yKmb
	 nkb3LRmw5XJTRMW5y9aCvf1+ntQYEpRK17Ue4l0RFFjTND/VQxHnaYxSe/Kx+h2Pak
	 nsyRCs2ell+zSxhyhxD12KO5jOx6jVB5mxzyKrIqi5IovziVkIp6Ode6kte0b+4h2y
	 969I4RpkYYU2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E69C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381679358.2316.17160784992694238015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843acae78b3b7a4e44c5dffb72d402d5e70cc4812348e5cca1d429f7a3c56722
Date: Tue, 29 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753816793
