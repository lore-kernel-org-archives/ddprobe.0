Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665E21D7995
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781622394; cv=none; b=kEFCgesXQhNit/vJbzM9LuVZ+JPi2zIEVVIk0bQvIMPiGDvXgm4l3dGdx57yGnOc5gfHtgzKrHScH6+5TiTUtPQzIgNSpZQ0kxaztXmL38/cu5HVEuy2GmkiZyqCX9V0FUTeUVFvFVJ99hw8TiJJyhQ3zsB03YRu+ykPD2T9sS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781622394; c=relaxed/simple;
	bh=f46pHMybTCNLdx6KIilzjvULkSUx21FKfJWPGtFRNm8=;
	h=To:Subject:From:Message-Id:Date; b=WCuqTEVxsKvAY+hFb29Km99A7h7Ketk3Vn7kS6tP09omUjDoLAS4aWEl/i2s6TBuk1t1vSQCKTyXDlJyVdDt1weXN3gNUQLcN6l1b8crdkddW5cKyGfB4RuRpHMnWilXvZArbcr1SqMV/ICZtd0Iflo2nxGccSQKlVP5KUtvTxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/TCEzZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/TCEzZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DDAFC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781622394;
	bh=f46pHMybTCNLdx6KIilzjvULkSUx21FKfJWPGtFRNm8=;
	h=To:Subject:From:Date:From;
	b=W/TCEzZOb+DmhSExLpVq3nyihiCqSuP+n43BksWyvKnZHRMBWRmMiZgZDRjbTv2PI
	 vo9jWtTTxIGqVjw/zSMefHpnihZn4j2Fnq5NwOQxplYGbK4e/bC0HUaOgsS4+1AhPG
	 4bwzau5/dU/AT847RusCA8ROn/GyU98XipL0E4YaFCOyN5WnissuQ54JpzJOa9ea61
	 s6VecEaZ6ODjAGHB1tASRYQXpbRxnkQiKehBMoEbwTaTGEjmrjCh8ACSoJd1IM12tX
	 hjr3/Xd/V09AOybP/xwyfdp72kQeubKYOnEaikFcXXb6Hra7KpJsbUcnjZls4MGwHv
	 vIx63wA415YZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C289CCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162239376.5454.11281106646552629302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255109b85d1f823adbc6f8981074da5ff06cb92b6a7bd29b95d0c9c694fc5c9a
Date: Tue, 16 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781622393
