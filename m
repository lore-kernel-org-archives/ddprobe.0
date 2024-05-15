Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E76376E4
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715742743; cv=none; b=g1SYLlKySJ1MueYSUUZJouOdvI2CmTH6y8GpU4uuqTxXg37qTlv8mUDrRvdz/N8Fha0zfwSY9EvjZmSFdZ7Rml+3DLIdBkdaZHbs74EWUX4YhuTCZ6CPZ8NQPdxbZA7kzwig1zbaToqr5CjM/wofucpeOcDQSuPHUwrVzKJeHKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715742743; c=relaxed/simple;
	bh=aUuckx9JrhZf5AFzWsn2fLfxL5nzFZFRD6ihkqnA6o0=;
	h=To:Subject:From:Message-Id:Date; b=SYIACSCk8x4sq6VsKzGYb1NSKM5hOZUgcrh0Ponr/HRNCVwPnmbvGbH9kUinSyNbRQcED8P1rlW5SvIqcx/cK7Q/xrJaxrrz5t5rFAuoVfVffOXLeG/cGyGl83k8ohW5TkaUzyYHNyH/jvwAIG6/snHajRAKegnU8OBcYGvsiew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUHgjRl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUHgjRl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD4C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715742742;
	bh=aUuckx9JrhZf5AFzWsn2fLfxL5nzFZFRD6ihkqnA6o0=;
	h=To:Subject:From:Date:From;
	b=bUHgjRl6bRULWnT6y7SHccgEpfLSX1PGtxKqOkoEjvtrUQa/5m37fhcx/iW3Oazdw
	 Slm5+oVFDQMspO2BpQEcjUu18iB6ndBo1gu/zBa5Q7sAF/vwwYlhK6Q0SjgAjQyBmG
	 Qk1Iad1H+SHjCpXiP3uMFy8ByyS6k7Sg/Ng8eeQG7CnPdsLulCBk9fq5pdk2CMIkr2
	 2UbTUZuLu0KZ0KfuiX+lidJEKCOaeTBpK/IuibZTiNM3UxHFXV+ViSYc9K6873gPwK
	 6rPSabSC8hik3JClWEyqVK6t7J1nHVEKlG7HMU8X2F9xhDod/mmp+1Q2z9CAnJ4E5P
	 hzq5GMl8D1lXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF16CC41513
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574274276.29971.6563355333477946515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c998481ec64e259468c62664cfc21c459ab7e0a64c36179a1df961c55c8f73
Date: Wed, 15 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715742742
