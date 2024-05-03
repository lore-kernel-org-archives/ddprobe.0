Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB21474BF
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714743743; cv=none; b=MkLRjqvtkt1Nu7EOZTq++3Y1VCfZT32Oc6b7uFjKW5JlZ7CMW1tLMKauvI4uv2U2r+vNpz3tr7f5sGWsMsKjIgp6h24Ba5ktVHZBOJQOl9PpcTso2+DGYT1c5hC1HhHKpENLoXezpHjSEHPm+s2kbPQbid2frfnQWWsiQOCj2kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714743743; c=relaxed/simple;
	bh=sr4cmgSeUzVdjgJjOJvAA1EI2m3vOGDOyIVozSVL1UQ=;
	h=To:Subject:From:Message-Id:Date; b=jq88bufOGSMUtwHyoyMCR2NQWaSZIz/3XZ9HJJrpV5mIbtkLvgz94hMXCkYiDQ7rNEVvSGi3fLW75kgmC8fl+7NjvYlkFlWnhERB8prkJykjacT3QA3W0X5rKMpnlZFzY6SkemRXcJs62uUC72m37POs/TaCD4Rwx8cGJU9IuEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhrKse5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhrKse5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC897C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714743742;
	bh=sr4cmgSeUzVdjgJjOJvAA1EI2m3vOGDOyIVozSVL1UQ=;
	h=To:Subject:From:Date:From;
	b=LhrKse5I4TL3iGeIFmHiLXFygKdnx/uKrqr/c09QUHksFKImRi7A0++9dOl/RSpW1
	 jPTaGvmwO0/Vv0veC7UYocpZZzYAVfyzsG8yyhLE/fVH+olJOqqKeaTmyt8wU7vWQt
	 uAzDFuBDgwtA4SjVWy7oa+gH00M2E5FicoeiCAZXJauvxDsAv9eNSmgmAziC+UBPNV
	 AHUOplYW3dGnXufwaKYZkOHKmNrWaIti7OxHAe5qbpEee66MTwvSjJ1Hql5g6rlgTQ
	 hOLGGF0b5XmfSriGGH8ezpRlu0l/iJbNTT+YHKqbjNeYAyRsZPKXFRnaCbHOyEezbI
	 Hd0Gz4C6MidSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB716C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474374276.17242.3958779945115021638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b84c302cf143aebea13156959c3c7dbf1d86c6464fa28f8fa833eebade6ab0
Date: Fri, 03 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714743742
