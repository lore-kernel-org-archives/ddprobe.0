Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487B01F09A5
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785010834; cv=none; b=fB1aOAe84MNPZ+HDgsqwN13ZvdhBqE/rFoXmkvMpe9tYkopKdv8ujCbHKK9tE4OLCdgYeOjonm74fB2TAzxs1lty3Xy90TTX9BHUsGjdO0b5AttWzy1udQWPfCwZvl7GMr6T8+1U86yC5wO7KKnMJT3XVDs687RWI7Yyy7+8uM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785010834; c=relaxed/simple;
	bh=OUOh6QEutlolP02sX7vjnSjPZWvFqMDNApclscC8t80=;
	h=To:Subject:From:Message-Id:Date; b=lojh2iZrP73Hj+0E3IcfTTbm4APFEW4BoaiO0hy9mnslNbJfWli/HpV3ATTUE9ZxyX+IrQDHyHcMz/LmNqdpxjf9y6FoL5GBMUPQkBeirRWkHiznlooVMfJuFALCIVHn6t1YKJlDnQqqELnX1b20t9N5uBhBz9AtIBvCca6t1wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcNtaswr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcNtaswr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04D2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785010833;
	bh=OUOh6QEutlolP02sX7vjnSjPZWvFqMDNApclscC8t80=;
	h=To:Subject:From:Date:From;
	b=GcNtaswrztX5BAIQKCm+qMnLGvFzu+dVq+dRtrn+vFpLwikmIxX6DBfE0SqXhxyki
	 wLSF0tgkInIzTUFFs1gIGiSAyFSM1vb/f8HZz8ajeR9MjAINbr8nUhb0hWuSW4ZjMA
	 M/oCueXM2lO4eQp9LM+NlKvIFZnlRC0jz0aUUniSPhpiSeCYE5Kul0Z1rQecBAu5yd
	 dQt/gNOKPOGy1dfHCiN6w0Wx7ObTTcgRWPrcaKwSbSU23oTlea9AJZpQotaPUhA95R
	 69hjGp+eslGopsMGpclchDmhqTmOssYE1tesI3bKFWO0Ht7QiAwEvp4HvEr7yEvAUj
	 RO28e/h8051WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB197C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501083368.16379.16021381420791340827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e6a8e0d9658f7968ee88b25e0ad02fd01098901c01c450b3ef87def419ce13
Date: Sat, 25 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785010833
