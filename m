Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC111184
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778345254; cv=none; b=E+6L3ep6FpXeLCuNc2oibM6yNwVpX2uPmY7a6DZOPDapO1QA+4S3Oy3SjMrRg/nQmk/fiFwUM3kfVcdiIf5pl8pp6OJ36f4+dDU5YrzRgoPJSsvF5cZZUqlDv0IqLWs2wo5yYDHB628jQPWYy3S1bcH9vEkf5XcLlr3F/neOd+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778345254; c=relaxed/simple;
	bh=R0iBMWXYculdjCLGW5OZfOot6kgiozw46tcdZa8AQ20=;
	h=To:Subject:From:Message-Id:Date; b=FsihsmOS7tnxtYlucDLSTg7P8sRHSafJeGPOLPRtEINJ7PmSBMFmuDBSe1Ykb4FeZwHAu5/QKpebYWkCNAvtbIeUgzMYR5oOkxpkdWdGoh/xkH7eUi847u8RqtjJ42uUYaNhNT+mez3XNLCojTDQqNaxdJxw4pvokZD32A8biuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKaQiJ6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKaQiJ6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 379A8C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778345254;
	bh=R0iBMWXYculdjCLGW5OZfOot6kgiozw46tcdZa8AQ20=;
	h=To:Subject:From:Date:From;
	b=FKaQiJ6nqzLmeeDRLKdO9DfgRoq+OdtETYwIt61G+NmGmitHKKx7UUJF+ARs1Meap
	 6jbjBnEsPGp6ievd8dWijV0yxO0UYyxu5C8i38W5Lwolb2v6bxc009q4AHHtDbFebM
	 PCf236UVTCa2eDxO41haOtybe3B1eloSHpmOBhQ6gS/vv2P7PZ3fjaB/3icDHNho0i
	 yCWFkjrWd6vS4yJ2DjGdLoVTluAay1/p23j8oMwHhG6PgmdYKtLjHI9DsjIP3ouy3Z
	 aa8NQO5GA8/rKgPWeL7ofm0zpoT8UvQb+8xylU4mnrtGHXQX8D1Akj2M45r2YTlW7Z
	 JuEX01cQ5Czzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E99B9CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834525390.9208.1006571371588418000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e84489b6f7e50f68982de1e866589de10aee99852e418f04d80e74722a41753
Date: Sat, 09 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778345253
