Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DCB23B0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750671594; cv=none; b=NBMmosO/j9JhyBElL7+zJdRQyHQP6u14qh7GpRhUMsgNHA9F7lfvjsCGF+albKo4ZdsgwW+/MaG7RxXaDDz+JdDpqmzsuYUYWx5RugckqUrYeC+nZ6NFiY1kKpiNALyu1vGmHzEvv/weftkGhN6ji5NHbsihToiq2TKRLvIRk6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750671594; c=relaxed/simple;
	bh=7B8A3sNHaMPdFAkTINPpfXVwznidlLeb2QAj5FzI0rE=;
	h=To:Subject:From:Message-Id:Date; b=ZJjx5xoCYXV9ux1hCYjKjIAEywEoDNMK5CTeo87zer2pfyfg87V7EP5FYjVV1bW9tivhbyHeTOhIfqq5293xH5G4sCk8w7QddaLkuK9axWUW4YVBGX5TMYtclIFdJdf07AxfZnGCi1A03EjXYIUSl7OK8BYE8DatqwdwqDKGvG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnef1Ois; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnef1Ois"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2836C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750671593;
	bh=7B8A3sNHaMPdFAkTINPpfXVwznidlLeb2QAj5FzI0rE=;
	h=To:Subject:From:Date:From;
	b=Hnef1Ois6Oj9n/IDy1xXh3cVVFu9kgADjRnwI/fADVLHcrjeFMryRzFqDgtwaGslR
	 O1q4JE91fubfMixSdQKV4osajiXhMt5Hp1cLED1pHIn020/rg1RS6pqQNfjTq0ABvU
	 9n/GRJGJkND0e3oqd8kgNjO4YAv3/bSRjfGuF5SPAYXoxgJ4vzVPGul5dBIoGnCR1Y
	 bJjCbEvtbZIK7T0CefPrHiGXFEOlNNhN4tFXxGhmwtmlrGV/JuVgk6kkmRTLVotavS
	 JGSCh+sCD/ciNfEVw6KCaxTkcHJQ89IGwsycKB0NVvowvHWKUmmL3xYF83c0b/siMQ
	 PeIToqURUJ1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC4C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067159357.10068.5732270428714913094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f50213ccf57f4305d092a885ac4c5689c418189c3a5640e20fbc940837804a
Date: Mon, 23 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750671593
