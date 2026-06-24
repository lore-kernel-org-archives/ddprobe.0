Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9627E105
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782274594; cv=none; b=Tkpzu7rN/MGdD1U9On0ePkWLJ78tz1+UiJ4Uw9UKKe1um/dOMMFHNo9e4ep2+MWSXbyBH5fQ9GT7IPL4pm0cJZf3QuApDsSwpljA5jkflmPNahK/SG4iV8RaylSPs/EDNhoeZQT7rWfE/3Q/8RoXYtQL4PiksSkrCYjTmyxT5Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782274594; c=relaxed/simple;
	bh=vefalXgXBi9phJEK2M18BRU8nU+w+Xsb2xjVSBXPW0M=;
	h=To:Subject:From:Message-Id:Date; b=dtxKv8HqeIeLhMmMuwmAFuL1HXLd2HB/qsH60e/EsXyS124Pl5yW9joNvt/XOtEb+P7+weWsFL64lItwZEPMfN7sZxZiujjoWQhPcXq7xEjforP0znebQ257+aRMOOfUZHH77WDvjqPhXKtTXO8yo299klErqVwU2EARW0boWiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnDtJLep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnDtJLep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF227C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782274594;
	bh=vefalXgXBi9phJEK2M18BRU8nU+w+Xsb2xjVSBXPW0M=;
	h=To:Subject:From:Date:From;
	b=qnDtJLep588CKgU7UsfBEu+HPl6WFpLiKsAGUFwwGqZhsSX8goWs0G2hrHOxoebJ7
	 6JSRlUTy8WoY8ukfvTt+SS4y2K1XWDr6IT4XIlec697TDn7kZnbyq9F6WtirlN2L9E
	 ndfDBM7OsqpiLINbfdvz/UbzRTQDIk+eg7JRrH4HW8Tj54yuUsjtKsqT4zJn2F5syj
	 INnDFBYaUbQmZs86G1T6ceb8pm9byjuklmRs/NZowrPD5NXbCupD11WkPis51WwLTV
	 hYXhhPLpsybt0pS4xTB4lxN3aSg2HhpJ33CS2vLUhII5DeInqrI0INECI3XwAuNEfx
	 SCSlTq8q+i/YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23FCCDB475
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227459383.24251.10505491799834363871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020d2f6592280ba458af068d528ecbee47a1ee168a60286992a1f590e1e9bf21
Date: Wed, 24 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782274593
