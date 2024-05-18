Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D39D1094E
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716034343; cv=none; b=NFeYqA5boQZPxTaKekN1Ez9bN4HxruiyTIhekMSybVIS24p+jOn7hJBHPJDonNYkCNaXfV5uEN63xc8WucZaMyozyom6nH6bYz+nQ2CcVt5uA+Qp1fnx/fpO3+0Na7uscirRdSLbEvPWxPa/M+8r2tHu5ZNGXvFvgrCZAehwTSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716034343; c=relaxed/simple;
	bh=DNoOPmqmRFQej3ue57iAuS3W2c8MHLAEZZNJmLEjzmI=;
	h=To:Subject:From:Message-Id:Date; b=o5BquMBiu9qqnyvyZ6GKa/HvBqMGcTNwlhSWlyvald+K4A7nguDG8ElDYDbi7nIPgqXWMlL08reS1Dt97gCeaA4p41XtAlPMxQFG2b67x70LWffz0Zz+3yUL/ePI/6lu6fEMpTRX5feFyVydNZ/QS49BEiOOtq17/lOP+WfK9kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKvUvSrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKvUvSrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3412C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716034342;
	bh=DNoOPmqmRFQej3ue57iAuS3W2c8MHLAEZZNJmLEjzmI=;
	h=To:Subject:From:Date:From;
	b=qKvUvSrSMzTMehH1QKReGXADuoZNbRmrf3WX8ZivvQoqMh1grlQKkLf+KdOn3FIUV
	 vNs8obTsuaxkHqGIPoQtw3sko+nHtSrW88idYNRRSiQpxAkRA4JIylEPIlZ9nBFEHQ
	 446v8SuDF1VAo0Gl1byNvs5UHhUHd0NbKw6zxwKn+8SeqixjJLqVasEt1PVj9XjF1Q
	 lJlRwc88FcGyp+gcvdziOMgNgqhB/WhOqG7Bzt+0kFglME/KK3KuQ/Tm84WBKh8VmH
	 jpK9rFueyY3FvJznN275X9hyTPhfRbvvq0f4+t+ORfS8Ti2pUOaSXTV+hq0R14+pdN
	 +aW3I76RsAO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA464C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603434279.30426.14268670668694365756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e765297f5a52569b89542e3be8c53adc6f39673504c9ddb3eb607c9161135e70
Date: Sat, 18 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716034342
