Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47633346E47
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790308234; cv=none; b=aOYh7SpJFjnz+3EVVvGtSfexS9XjnSSimSKBdyNOxP8ZRPwDRYokAjJvLxfumRjU8pXzYXn20dlhxSvJ28qoiMIiMHlZy5ahndlmoTvNncb6FzcyqbvSNQt4ofrMaGHAOY0NoctnWmBGvJzT3zTtia2kno9vQdbPFpAfhrD+x0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790308234; c=relaxed/simple;
	bh=j41U9Rl5tHRjx3poqn3c1Qym1CWWc9lIOMrsAr/2BVo=;
	h=To:Subject:From:Message-Id:Date; b=sA1aNrWAuDc5+WxjYyt1KBKzGhjokSis2aIFFPrlbgmQiColWMIeNzbl8tvB+MPuPbsaupgJdvF8SfAm2igqcWmHRGqhjJ6Jr3H0v9/COBdKu48wqIzxPcKA7zztyBnZ9uguFxu2zx2WSGyVQD5BMsPy6mbFCG83OFwmFoCPJcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0wvxRPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0wvxRPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEF4C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790308233;
	bh=j41U9Rl5tHRjx3poqn3c1Qym1CWWc9lIOMrsAr/2BVo=;
	h=To:Subject:From:Date:From;
	b=e0wvxRPKN2r0ajKNwrSIe7IFjJ1bcrkZUPDrYhL4tiPy1wp+yZORtFCJkkvFWql/i
	 lNvY0CdfUJAefRyzTK12F3nGHdvE1nrDX9d9eR4uSS08R1zgwF9IytJV05xV25WZEE
	 M4xVYdM0A+uQnz2GSPbPErCDI8dVqChkqioej8fXgZmCBNeMHFykBG0/CRiWWE5RlD
	 6eQAJGQ/i3YXh+rn/9lxah+08levFhIrECZHgTiXvoVRpe7TMwD27Vp2NuCQKdk/Jw
	 HzOiTOKZZBoB5U7xcu5hsr6QPKzmdPXVm1kx5nnSh/WM0xKtHSEB/h+WUfaeDWJvl1
	 FyZOfuAypUUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5AC98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030823369.13528.8704992928727003434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd6552a7c37863f0c73624a264fbbe5b0da3f877301db8ad3e5de4912ed945d
Date: Fri, 25 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790308233
