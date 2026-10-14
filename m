Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363093F6C42
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792002034; cv=none; b=D/QMVvqUEDWejNK3xH4osNv74Z+PmCnQWCuGmufIOPTDRX9GO0BsZJ+OMUIjHeGg8/X+jZ0NdwsIAMTINnfE1AaNBzIfERwqBf4Fd5Or9Fn8f+/0O/LqHpHyc9+gav4VyZ9G67iCgSebuFE53RpKCFRAMZWHq0Dt1cpHx+G4s4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792002034; c=relaxed/simple;
	bh=9/SgcpRrwU9K6zsvMI7hwulGUiAnzYZeKAL4UcpnGYU=;
	h=To:Subject:From:Message-Id:Date; b=LhjuFJbgHhzjsZDze6cDkF3ICa5obki2i6SCto2rsD7nu2j5CKHob8Ri0Lsl4pw8LnSuZxugHwyRHvyba/g7YlJIisSQPKnorm7wC2M5TTsjYifAeOPS9xMHbh8TlAdGjRxr+x8dpKiRTcIv6rAZMzf32oDTVLTj00oiHXJMVec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DECpScEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DECpScEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C70C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792002033;
	bh=9/SgcpRrwU9K6zsvMI7hwulGUiAnzYZeKAL4UcpnGYU=;
	h=To:Subject:From:Date:From;
	b=DECpScEkDY1mNU3eYvlOVx7pe2zYjYIRcpL0BcyGSUbRtUTx++XoVmDrhxSzYOmJI
	 UuO0ZiIDNcn51/4CU++X6Ab7soJ1AiKywUdvktWczzGje+EgG6bnzBRZJY/9Ejm0LX
	 NqybeTunxqgJFnCwTzJF04TkkuQwHWzuvBguQ1moNXBZfjfiddLeX8Qq9e7zo7mJ9q
	 +OpSAx6kQa4MOv1WZE8MtRtOC2ExMnPJLFneyp8CN01iGFYLN3kjs9lasZRDQrjD9q
	 qu/3OTlfUyQLpzydS6A/NxHcLfIJoKVoBZSxuuPsRvt7Bf1wWcJ5wJkFNTwHTTMClj
	 ah1aRqtYYuVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE2CC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200203370.31508.16011607567524523747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019d02939d34dbdfca554db90ec9d7c92c0dc415d7c10f4dc1494d0abbde3d9f
Date: Wed, 14 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792002033
