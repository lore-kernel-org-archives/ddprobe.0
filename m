Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353073D7D6A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782390454; cv=none; b=qTaERf1xHjcGcXFZSNsn1JpsKLqqM07NfrA0vyOSO4/UByDyACW1xzskOwU6mfoZht6WObaW0OoGWvorqx/XSgo/p0QPsfLl0LGCl7mxfPy7A1kO7J16CTTD3cXR+QrFZbDiLYoPlq6WAn14LYD5eIZHl4EnBnz1y3wj+BIR2qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782390454; c=relaxed/simple;
	bh=+kOphawIbFlFdyZgShAoB81eSVsqzAHHLSOrHLxU2OA=;
	h=To:Subject:From:Message-Id:Date; b=Rhwxsy0rwP4Kd6JMoJBy6huz4DG2qnXoJDqH/fNtwBdSvzOohzmrAg3nJlcHZhQrF41PamkLDOtTQWpfokJvsiycb3k1aTHvZhxjNj2htR5X1uU0IEIOxTHCRrCKzQfThaJC2lIbdJyPfpcrBz370U/iecLXC02s3OHzH/AcuAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg83AmdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg83AmdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1092DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782390454;
	bh=+kOphawIbFlFdyZgShAoB81eSVsqzAHHLSOrHLxU2OA=;
	h=To:Subject:From:Date:From;
	b=gg83AmdYOTQIqYiSz/Fz9yx2GVQFQaSgAmVVG8Wv0ot+tkIDDShld8Om1k4yMoxxq
	 dJ07Bxz6x1PYKgoQme58MYIH7xOIlqDpOeDL9hxbL+nHYIceJqCxmP+2kFL3+JTMfh
	 w6Gj8L8/IgbUkusZ3UBI8gFNZ+g3b03B5KegUVL11u6TglOnpiTlodSOHER4+SFFMG
	 Rl4UxG+sASs+pZKHXvwhK+zkkDMLK73Ot05C3dKr/v1KGLtdpqLOU81C8FTjhFdYAo
	 4wJb8jOhcbSM5X4ri3AKsS26LDG/p3AlnFp758VwIGqklAxU21j1JmwD99eWvj8Nmd
	 TjtaWN/udI0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6271CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239045390.7027.18420609813482048015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da5010e2d446974c6f0bcc49895138a362f72f70d0987b54f2d9a975cb624f2
Date: Thu, 25 Jun 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782390453
