Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1FA23741
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705516097; cv=none; b=tp8CVQM5EbfA/1uVVoNp56cirDUCXj2jMJA86APvwxUCtc0CvpHxPDqLkghsXzJ8GB0l6guU1UWzXaLOQm2aAlljrIouMIOadaCyHIJc1qbUiwIHiHvsV7zeh9CYyrgev3PLcyfKuBSk4kuEWU1nRQajZJ7d1Bu55HNwx4Zheqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705516097; c=relaxed/simple;
	bh=qhyq/O0hO5tAh4CzE6C4zARWs6/Wd64S9zsdKdrvX1s=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=gyaRGbOATfG3wfJPWh0xMdaOtCC/t/DCQ+bvxvwgjpPvWBh1JRFPYkWg78i3HCso6i62o50b9g2GagAfLgYgzt2ARHiuIt17ofSWKsmWutJ7xFcAajhw835dQ4iRGe6pVavU84l+lDKXU5bVt/8uTGOFws0rXZW3PhOXQXSFfm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDTucw8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDTucw8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1CBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705516096;
	bh=qhyq/O0hO5tAh4CzE6C4zARWs6/Wd64S9zsdKdrvX1s=;
	h=To:Subject:From:Date:From;
	b=qDTucw8ayN7kx4VEMVFhsEBvAdte3BxvtlsFEjU38TmJK+Om+EebVfbeIf78/9oaf
	 0/5QOGNH1tVelpfT/AXW2yuKBd+/HbqFyT9p6CnX9qN5KSVYpmZ1wBQTqR7hCTjXUX
	 HnQpNMTV7d/3L0LZVog9M4nRwU8BPIDk5+ORVczDTyLnTaCkIOA4V35BIsszLQPTCu
	 xx24iMiEzVdIN/e+VlrF4hPjojyKXLaUelUbIEDVENDJ4pGMx2JIWK9aV+FlCJ50lK
	 XOd7nFLPkfYlH3rc4N+JhQTmkJ0+qKfQ5cRLgwIlGAq59oaC6+wH0VGRF81N46RqoC
	 cYSRae9nql2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63155C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551609639.25648.3743588262233246361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e969050f907ed47b1348bee1fed6cc9aa7d65d1bda7afe043b8d2231b3ac11
Date: Wed, 17 Jan 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705516096
