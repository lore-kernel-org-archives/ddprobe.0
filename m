Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4536A13B5B3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787427034; cv=none; b=sjq6fnh876ys5uZ/fUW1LazoLjwCR/eELS+tmGaDVEJkl68ozfBFXbsB/5dcSg3g4JTdUPTdDu7thYDmAIXdFuzszmLBhjdJ26ZyZCwDV5PhznX4XScsgPDx7r3n5iw7IDHboF3d+1oqx16PJIVZG0QF7+T4nm8+cB1a2ndptGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787427034; c=relaxed/simple;
	bh=5hpobOST2iiLsXuhT6puB/uxrEQ22F/2So1XaHNhn5Y=;
	h=To:Subject:From:Message-Id:Date; b=kOx66kP/1CRLF+badY/0Z54zJ6B4Xcbm4TCCo8c5J+TFIFtWa4KMXgrkTmtlOkpU2EUJPxkq+QCeylA0UCo3F4DpCWa2l3sb9m7REA+ND6K5HXogLejMd81AK6aTZRHj02HrdPYR75rKbgOkWUFGFQZiUTFf/6jc4xL2x0oam5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuqEZRAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuqEZRAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6756C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787427033;
	bh=5hpobOST2iiLsXuhT6puB/uxrEQ22F/2So1XaHNhn5Y=;
	h=To:Subject:From:Date:From;
	b=DuqEZRAb5B3GHQV4agzEiaFVDSQ/XpsgwQrfsLES++GJf/o4LTChUcqmo1PHPNbWZ
	 +gC0bSUh6oaZV+22VrWogtdOv5JQYsEbdXTI3pUO9a9ApePv+rhW1GtQQwx9Z+DUJ5
	 h0Ow7nTtRsEe/qoJFjBYTKsjkvRgE+5293d7bfM4Zb2oXHh0fWMOKKumRIQgVsJqnJ
	 wDe2tKyogmzmk9fbTjvPeUxl0DPIylqTMyuvA4dW6dvZ1DHLq7pMagu/CUx3erWzBL
	 8d4TaxMO/QSQjzLPEoBgGEUDAC0viCiVedE0zFwTK43+duLCsHt65Wo+CN2aF2qFYp
	 HMtjeN1VcxvlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC0CC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742703369.25628.15467186395258949482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9aabcefa996a0ef6b264408296a0adc26f369b79976cb908a6c306539824ab
Date: Sat, 22 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787427033
