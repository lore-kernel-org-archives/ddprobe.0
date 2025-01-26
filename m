Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519CA16F288
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737927355; cv=none; b=s0903zSaOS6mC/rXSHAHgDjRSmCCpl5QHgiX1r58FB0Zl5dSWRSHDb2n1A6wJyYLwCB/VtTXE7scb6l0pb74ryzUdZ4he0iNdNBb4QTTBweadHZkcgAumOIrGeyOfxnILzD/W1a63Qb8ime9jEK5PkADMw8fxnS7WBu7CjQIUsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737927355; c=relaxed/simple;
	bh=Px1XgRqx7NPoCJhVS2G8wyXghgMY5416AG1jiouwvA4=;
	h=To:Subject:From:Message-Id:Date; b=Fv9TOQ/4M+nWDpimYThs3XtDRXlTgKRtPlnBv05VtxLSNghmePVVMZOI0JqxaA97lgFtGOgI36bq7/Xmdp8homMyWg5lZ5Kif9wHBERzd/9qyTCAfPqihSh8pn4TVVFQf/14bmBqgtthFX4NFCyBtu2KjanvAwuoHokihKUFk18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr/qA4g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr/qA4g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F2C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737927353;
	bh=Px1XgRqx7NPoCJhVS2G8wyXghgMY5416AG1jiouwvA4=;
	h=To:Subject:From:Date:From;
	b=nr/qA4g3IvT39yAy66L34EXq8tzr7BcKChDzoXbv88xyQSH32FQV/pKY+9ELiE9aX
	 gzCJwb+mXX5OGqSYyx0DbrBx/LlxB+Syb9cfNYUEkNVIaZMQG+znvZbOj2Z30F1Vmz
	 NbdiARUz+UAyjCpYZOZKTt3hrKCwT+lYt92qiTzS3fgcbXBnb7ww/ESMeIuRGXWoYm
	 YHbUznT7zDUPOdLSupnq7YSj5bYEcHR5zdsNT9UKrCywVS/+jRz9vPBKkwIIKTCHG/
	 JHTL9e5P171LSVevcYxYRF1K+s0H5/h1mjoy2+aRAwUv1IN4MUaArUwyWwvdtwKFtS
	 uiJqJNwJVl46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E880C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792735357.10126.15575225495875147780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4226de9ca8b36eab2525e5440e4ec5b835a9223656e4ac2c799f162b336ea1c8
Date: Sun, 26 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737927353
