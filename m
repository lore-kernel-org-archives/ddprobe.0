Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D707149DF1
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786331434; cv=none; b=tFiKo23hCgzrxVj3juMa5sZ0OG1sISexU6DkBCJRqsWKtbo1TRW0Hp3vmKefD7Av+wtTmYSCfJZTkvJvOYX4ZEUH3gSgYBq0mOO0rwKhPyEjmqXs5KiyrkHCGiJnKEFReih6YXqYOTutlrF5p5ryzYofL6R0Pc1KXmUNaBjSasc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786331434; c=relaxed/simple;
	bh=jwxLMNonGbpAsdKKp4VODWthRlXnRvtVZWwwEq7dia8=;
	h=To:Subject:From:Message-Id:Date; b=DD9OqQmz2HpPbVFCJaTwEAjH+OUdWHQxQh9zK34o9wtrd20BeaPlEikBpCb0KzcGgbEOaXNggqxTQUlV24692qqlWQAcniap2AIVlZQtsXoGqy7kLFbyq7icrpuliGAzWLKMfI+Y5ioX34EEviMKMK283yEsAIzOLGSLZTvg2yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3ASNA5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3ASNA5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2AFC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786331433;
	bh=jwxLMNonGbpAsdKKp4VODWthRlXnRvtVZWwwEq7dia8=;
	h=To:Subject:From:Date:From;
	b=X3ASNA5hpGew4SNLBb6KwFpkCydUxAaHMX1Zk7Z7X7pmuP6SVenTBROn5yy3JyU4T
	 ZW/d0fw61wpy472m5eGwWKR6G/61s6sGQ7jUoMmzmcg9Nu1j+ePNIgOwMIzxN3JchM
	 CppYm/B0l2UQTSJFj5af1gTCyp2nhouG5nqAnoEKOILy/AiywPwBASO4gBOAJdGLcv
	 rOG8X0AiD3xfEdLAmCK2TFAFKn+UgTO/fCNikoPUsIBTg1EMlTB67N3bq9bSLl4rR9
	 eyqIJv5PExamkQDP7qqniZOpBiYIkVgSwugmVWNvUf2NP61RUgC+VKaQUJwD1T+ZEp
	 X3aNY3eFuf/mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE038C5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633143370.30787.3527926982535897040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80e4c308fafc47a449a68d275786cc8488cfcb8e8e82980ba42aa96e82409cf
Date: Mon, 10 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786331433
