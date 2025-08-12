Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B352EA756
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754992794; cv=none; b=Nx11VqI+pFhnyvtuqeLPGwc8Ax1K7Dwm+PQcTBgARGzkqvAyK0AS1XZ7vhyZyoD9OlAHjk27FMdsnPj8xzKgptkKlunEyWmRsNXhxqHw8eqbR4x/vN6VD0Q4hNPXB6kll2hAIeHLH98bas0udc3WsCNYYVa0en18mQMShYXcoG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754992794; c=relaxed/simple;
	bh=x4oV2OPtCkaRRILjJE+LavCuY6tHL9lOutMlTl5gonE=;
	h=To:Subject:From:Message-Id:Date; b=qaFMY3kV7QKhpFCTlf64K/m2K509cyqpho/eCxF9zy+IE3Tq6v823mD1QtzmqtGR5SMK2MKrImlpK+J+MlRMA0Jx24rL7OFxz+H9PPLpr5OPoWggzSu86p8HOE5xbBcOihrFBvzq2W0Gh1GWgynzv1YBN3/su2ZgCGKwFZgNEBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rra2GHdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rra2GHdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1800C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754992793;
	bh=x4oV2OPtCkaRRILjJE+LavCuY6tHL9lOutMlTl5gonE=;
	h=To:Subject:From:Date:From;
	b=rra2GHdygJbd7+D2f4IyJASiYVfpKUauuBZXxnLzyi3Is8+TvLfL+sU7Lv88LqlKt
	 iP/jlwYTx1/zpISCDMyL3T3uMxKtSJzeHiOeSXf2wwKho/nTFD3grupLl8dtQyXEP+
	 8uKYtJW9+V6gUfSfaNaXVvFdwEhECuTIZbAKHFeG6lo6vgsFXqkdd3eLPRAg2d28lM
	 9r+4bTF6novZLsAZ8Czb85As7LeaDKbw2Q2ioecf9R5E2MEYpUNSGujZgO4kDbSSlf
	 DXJu8A1B0NFWmVB9b/1YA21Q/eFjifvSy2UdC2nIML01k0B9+e2CgBvOuaZJqxwEor
	 pGaZF5ahYn0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F599CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499279358.15368.7878506904832046172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b57487ed31f8b839c38d4bc2d41eccf74e0a0bb259f36325800f6987c10cc64
Date: Tue, 12 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754992793
