Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501A0A5F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717526183; cv=none; b=QtONnMhbqEfG992fbHjJ5ARTgFX0FeTFjF2GYwDnv0KsmcPme8Vr/Oel4UtFdmJHWVTN2aNDNKr3sHdyIV4yUjEbTNEMv4mVNUhESjfiZfD73eY8K+R8CLFr9cnTmBjZluKz7mwuPcv0T6Ly5fmqp6sJtRMFOjeg0XUau7RM1SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717526183; c=relaxed/simple;
	bh=w8EihaltaQtWuT70xRc+erGQlbyDfVZvTVOn5xwiJ2o=;
	h=To:Subject:From:Message-Id:Date; b=e3WIiHGxRe4aXR1BybhFftT4jnyqg3+3H+IfrSWOhaytfs6UDghQTqelwJGWmV+kQy65dcXZgi1GoALRPwLI6+XpMpwImyRULLyNtseKe2rG3cHBcPxfaZiifJYuIJ8ouEMMPc1VQIISXTj0p6dMtFaK6YybExiPKnwFtPA6H5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGwVjecC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGwVjecC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE473C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717526182;
	bh=w8EihaltaQtWuT70xRc+erGQlbyDfVZvTVOn5xwiJ2o=;
	h=To:Subject:From:Date:From;
	b=tGwVjecCHmj2FHTCP5ixwqLROKym6Xn/CV5K8UAUJ2WIN38gH8+qPzvNkm7dnUIqo
	 AeEsZCo+2fiZE1OqyLMCie2FwszljpzqU9ao2GmEok4q4OKxus438F7eOdE6/viNNF
	 NNlzUaGK64F9hI+lXeLWRwRIJ1a09nM4YukVBCwJqfKJnNqXWdOAHg/+jK84tsLG+9
	 CJwVvkF0w8mOwKXcdHJvy5zuLXxrpOgNKHtW5xKhkmuCmft5FLNNOWISx/Q/IdLTUJ
	 hOzahI2ZItQONNuJxgdmzqh3oe5Hd1G+99XToHakVQOOS1inp5BVrnASW/j2UT8H+6
	 WeE6UBTZBf0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C243DC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752618278.16229.10959844870517666385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce2c33edc5f5e74805e54ac5ccf11887665a9fdc58dbaab591fe1a871ce3652
Date: Tue, 04 Jun 2024 18:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717526182
