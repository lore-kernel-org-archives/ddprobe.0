Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9199B37E5D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791387034; cv=none; b=c9QVYtmQu9dodhInadro73HA0FWpEy3MuEht/1V1SOfqADwWH11v5aTwsmvaPfnDnMfaKez2/CoZL41S7U8P9ytxLnaUor+oK+oKmBH0sLdj08yQLmeBCYo1CLfTYALMJ8ulyB+SDDU/wHJodpchvQfeI3RWuoY8OfuD0Qxcar4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791387034; c=relaxed/simple;
	bh=3+j6P5wPqHWo8dTTBqIb/oAnjgphzMLF2kYvct3xgh8=;
	h=To:Subject:From:Message-Id:Date; b=i76Hj79PHMjVBd71Eu08FBZjpBL+csJ99axT5/qL0OqRqyJCedeD1mZK7xoNyJwB0EafVoXGU3mFr+vOLsmXfxmFJorgSids4nQ5AEeu95vJcskdQSIlVSuqPwmiSHxUXEl7++kgbamxhs0zQ0wLDOWcceBMNj236f1xym1LcNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnquB/Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnquB/Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1ADC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791387033;
	bh=3+j6P5wPqHWo8dTTBqIb/oAnjgphzMLF2kYvct3xgh8=;
	h=To:Subject:From:Date:From;
	b=bnquB/LjSiq80cuWsQ5kunVsDgeC9mHXuGDHogPCtTWtCfy155jRvUoMY04WdCC0y
	 /gRJ9PGqIxLUGHwupqg0A46nWaRbxa9UgJ3EhjP94yuEJrejxgVMFPbq7NlGF1p9Cu
	 Ajrop1UWiwUWNLXy2CzRljPFF8Td+QwsDBMgTnCj50yYpUIzK3Bzdbv9nwgG4Ndjgo
	 yTCvp022OhPRCqzhaySQ11KYYbm8VorqrCCl5qhtdMwRe4LU9tyFMf+dyBL8f+4dWD
	 s0cipOD68i2vSTPqthX/ISYeoDjuHSGKb6/u4iC5nSCsMVBBgef8xZl0GfxMnlsHaG
	 V0gHCRKfPGtnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A1CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138703369.965.12618957017454495531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93848fc06ee7a58efee08cef4f8c19bb20e9f52f498380676e24d0c9017d2ca4
Date: Wed, 07 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791387033
