Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A90199237
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759755594; cv=none; b=B0ZvQc3fYKTUm/Cz7QnoEhxCMTAeDY+VzjqKwxdj8/2obUpwcXwqNv/yHKLbKdtben2qEDC3S5UWhzgopYgmKMDtit4k1DcV4jd0Vvi0Z6dwynd9z4S3SrxsjFql7srKqJQfAVkl2sMoRPeoD3r6jYJvDHNB3Jy2y10nWUx/m04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759755594; c=relaxed/simple;
	bh=n+O2edVVV+tlGqxPjnbKoXSFUHSoWbgQXvIUAc6QLoY=;
	h=To:Subject:From:Message-Id:Date; b=ig4YufooNaCxIUs+jYIRDpLD/axnh5Js7mRT7PP5kFQndTAU838HIAJxSIQ9LL++7tNwZQbFCDmeFgt6wQGR9gIONkL3ljxapY6zy1LeDlqtpe3xbuh9l8QwYLPG1Ew3Jvsl5HpeLkBiTjh2ELAxqeTFvSdDDEVDqRshRnfbPEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvQfj1UI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvQfj1UI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759755593;
	bh=n+O2edVVV+tlGqxPjnbKoXSFUHSoWbgQXvIUAc6QLoY=;
	h=To:Subject:From:Date:From;
	b=HvQfj1UIbIb5zuhOq4JoMEeZCUhhcQyO99RWrGjMIpJYRlTU0qm86ecoPfE4PRmk9
	 VeNaPtPsBJ0CM1fDnE+LrZWUR4chw1Gep/ctk0ZLjTMcgF+aUoGwp0Dmy37i8wkiAF
	 pxyDPkdoKGESXF9E6EJh6V8xJ40GeRVoyfkmIPQ4KUJFAjagHFuUZ6m21iSao/Afak
	 SMtYVP3xwqa6790aX1/qC75jErOXQcUFfZM1hnbTP/5NUjMxXnULsvRFdblLKg5sJl
	 zVoj34u06pwTjuqMEqYb3nhke1NV8hCimPsYIn2UEedivXWnt7C2mJf8t6IPFa87JR
	 dKbrWMG0GLlwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CDCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975559357.306.10404843020185963877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163ef8d69c09e33c89a7ac99ad43c3c6a6a7fe912941ed5fe44e886e32d4deee
Date: Mon, 06 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759755593
