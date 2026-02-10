Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7C2148850
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770748434; cv=none; b=cghVvfnuCjuVjV1pBlNjaqRGn8ukwATbeU1+pMcA1ePg+iJI7NhzGCy6u6Huz/WrnouOXG5tHpYapgsf2cltbfsb8ccEmni4UFYJA5GObWXBwJgELAUJ71QVyxeeAoEnbDxniTc198T32M1rnFsIAIl4GwMnTEugAmtcW+76r1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770748434; c=relaxed/simple;
	bh=xi0plW4p3Q0E2PIQ+3OqGglzezb/BvkiQJbs0XFASXw=;
	h=To:Subject:From:Message-Id:Date; b=XTE8wI1I7v+3lbYQCK73qzWc5OX/EbyfgGt5wdGM9gJCbQzUyBLIqRteUMVqTtQsFhsurJVU+66SJu3U4fAw5d15rAMX6+HHDXLl46N3wK4vw6AFPiJA583Lgwww7FNvBIq3aSp136zqnUGZ3QjCeRoYUZR6x3nrlAR+529JPbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIQipnED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIQipnED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2611C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770748433;
	bh=xi0plW4p3Q0E2PIQ+3OqGglzezb/BvkiQJbs0XFASXw=;
	h=To:Subject:From:Date:From;
	b=MIQipnEDu6/vl+dzZM6Q4AsVbne3q/L+aLV2jgOm3hWG8oTYYCuDJWmnM88iDadup
	 FIw4KbJOPbvOVjZl7/BP0wfaCw0LFIUN4KwC6JD2KLx91qp7miFp6IqKnY7umvt1q3
	 zhZEDx122HWAgeyZo3KCxTQJksTO4R9PoEYjHjEWyVWJVjjRA5ha0j2KPHKOOHF5/N
	 K8oxsRq4wUpkvUmXCxfltK5jf62osUFwpzijCMTSopRKqTx+s3QRTVJ+BTGpbRn5OY
	 MwVohYGOH2pbAlFJIarqNYVoAzcoihFVl/HMPo8IqbJhfdrp2twT6y//DZrp57Q7P6
	 pQPbSf+hNI4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B7EEB26F7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074843361.24087.10500069566787081749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdcee2c7e62a389dd7f3811fefc1e766ca66a4155086004945bcc2b629d21bc
Date: Tue, 10 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770748433
