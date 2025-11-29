Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA473451
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764375774; cv=none; b=U3s3DJZKofF4L8lftkHLjgYfchdX5LrGewa+t8Fz9TzA0BjhbRLGrjQC+Srpqa1HArLWE0MibyFwJ9ZBPW7iJIWCit+B/VbzS3Uk+ongldgCv+hEEqjhd8BLpoHRN6lCqi9JX20tf97K0lV0R/BIJ0z+yw4UeKSAcGZVFNbYwZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764375774; c=relaxed/simple;
	bh=Gk1Jkb+0PuUrhcUQ25PE8Hkg+6wfC0wdD5CVZ4GovTc=;
	h=To:Subject:From:Message-Id:Date; b=Z44yaL9qFMYT5o8ND21pJbTTX5MYlYBcbzkQWf8QTfQHLfSCw13Zs87BfKI2SQNwB0zQBQwa8n95a0WwY+d7yohRitepiZZbcbhukz9+8w5KfI/br8yNQO6pcFi6bPCIbFiVpL7MO+fk5VUc0qCBhbeparcLx9/feMb0vigUhuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbsEcW4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbsEcW4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96AEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764375773;
	bh=Gk1Jkb+0PuUrhcUQ25PE8Hkg+6wfC0wdD5CVZ4GovTc=;
	h=To:Subject:From:Date:From;
	b=LbsEcW4Z9OVALwGmILJuTRREmLWukf0FL8TDMEo454cujNktULbKWQVVZ9lIlaGiW
	 3aKLX8Q92RowDi1IT05mXOn9S/I/sNFFf3MbUBtONtpDWe0oqXNSoDXBWUO84pDpU/
	 5ZpjH1qLrsV9enh9HYxhf4Ogh2CYf7ohUVZDnqTl/MdmeD9jpMjDe3pDHt+yWjghhl
	 EBq4sxABU1tQPe2pMmJimI/Io8i+9lT655s1jt9HC//JPciIye39b/iTUppd4vHqQ9
	 MpfX4sU1zVihP+7SEWClfjhEA+OrnUtgCjVj7bSj30jblsYbqbSaSxCAakcff1k96h
	 dXGzZ2ddhlLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D9D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437577358.24000.9187497155440318092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02885704d73bba2f46a197e34f0f9b9b16905c31839f120a59049a4652f2d89c
Date: Sat, 29 Nov 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764375773
