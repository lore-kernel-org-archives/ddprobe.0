Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6198334399
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760620193; cv=none; b=E/oZWzqEgT3CEwIbSjJoWJrRHqfjUuA4N1RcMfnJ3hIx2CfpRyp146LZ9ubW6UMFVEZowuDUPLfQjTaos0/BCK65sDrOJeexuZRxeWVILE13o0l7/hkI4VrduclUMFGsfG+o4TB3QvOI3+CjmgwQq1XBdCQrEfvhgQKE+LSFkZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760620193; c=relaxed/simple;
	bh=WNU5b3nNfGQX/sw99SKF3ROfVurPYt3epFmiLvp+ROY=;
	h=To:Subject:From:Message-Id:Date; b=qyT33czOO6mnrrzH1ucoS5hQy0+WUwgt3xQrkEE2dCtf+fLK1L51gbiyDCFFeBrsHWx1sBMU+LoIpbIkaZrkrBK11NmCXAJXxkZdtgZEWBxX9RKtDOt/0q5EFALRVgHp6Q/YNcfg8IladappRbSP/AhtTGK2AWzadBPs6iKrXKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3JaqiF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3JaqiF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760620193;
	bh=WNU5b3nNfGQX/sw99SKF3ROfVurPYt3epFmiLvp+ROY=;
	h=To:Subject:From:Date:From;
	b=h3JaqiF/Y4HURCTqhRNbo4bguYw2uECgk0duQ26wfZfukQSEuhyiOaisHgKgoDU1P
	 NS4JflUx4CQiKlCpgc3+6sR9IrJ4OzNtLOnKciax6xASpDQPYBp/kF9p+5Gg+TKFpO
	 ML0lL4gVEtXxhRTO4A9Q/TbzT3fEb5ocRA+xjP2DHu6dUjfQZumYwQuSS0R11deMtK
	 +6X8YxN1GttZX63fmqitFxU4S8vO1tyJnZa3Sz90uiAaQ6xm4zViQ67jnJSnKMlATv
	 ZfNst4QZ9KUy+MyM/nyETY2CIC0JWvLVv8UJLbgyjVf15aP3FJ9lJcHL2/X+tuSj93
	 KyBSlk7McIKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EDCCD19A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062019358.14594.334644256858655527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dd7e82949aeed72e3b8bce6c088f1d21dac6ba214a4fb62ea590e763fb8982
Date: Thu, 16 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760620193
