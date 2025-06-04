Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EFB46447
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749019195; cv=none; b=REARNgOkmnNYM5puZrr9V2DbP89AaYgBw7/q6/KLsXfaGgBZgIOPcrbfTSuf7MnmHtihE30j2eAr/fROo7KLQrtAEKREZOZXksaGmAnVg4kU0Q0g/uW7XRSp2T5gL9qYFnNNkXyBAeLB025v1xa/5B7Vnan03KYY1w3ZgogUsgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749019195; c=relaxed/simple;
	bh=cHB+mv2qLqW8cK+4iaHJPW1t8u2h1RLChlU6+4RO3bo=;
	h=To:Subject:From:Message-Id:Date; b=ZtkRAi4/ZgMq02jqN2XIFxBIqRu4owqLxH1xKVlDHKV3gmvKUrKH9Ia8/8gHnlAkpZtns9vJ64Ty4yalacCz9Q4GdQ2onear3wm1H/0IiSoOF/DChw/iVRAsnb+0BPoIFqUyT809KH9IUgr6dTMJGrouI/AzIl+dNvMqpp0+sTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBhgsKOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBhgsKOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749019193;
	bh=cHB+mv2qLqW8cK+4iaHJPW1t8u2h1RLChlU6+4RO3bo=;
	h=To:Subject:From:Date:From;
	b=bBhgsKOc9cQFCFXvjPl+e+AJCCtg56Jg6r2zZCnr6omSCr//0tp63Fd/qTS3617Yp
	 2Z/YzPU87nGuTjsopSBwWkD0LkBf9W/ir3EqBIeEqrJutixSQcBEIcDVb7mRPybD74
	 sNISPS7R1kcwovZ37yh3PK7269b0LAGcujwrxilS+lY6Kc4Lg/zy7jUHf05qR81IXS
	 8guIOm0qBNodjw3CZrYhjMzt6y695Txypi2EGKhfwUMogsCnGgUKNN488QXHDkdbIe
	 RTmJtKC2InDKJVB1/yFRLzjWCDiOzegXZAJXykD94ca5bNvXxml0ifH+qXOMqLpc94
	 n9DOGBFb/N/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90131C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901919358.5353.3834384955632162616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4857478b4f4abb5f453e871faa00edd04524d6f3632fce0484e76b3d20af5bc7
Date: Wed, 04 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749019193
